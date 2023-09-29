<script setup>
import { ref, onMounted, defineEmits } from "vue";
import NavBar from "../components/NavBar.vue";
import { useRouter } from "vue-router";
import GameDataService from "../services/GameDataService";


const gamesFromRawg = ref({});

const router = useRouter();
const apiUrl =
  "https://api.rawg.io/api/games?key=376e19295edf49948e86dad1da853b22&page_size=39";
const emit = defineEmits();
const showGameDetails = (game) => {
  emit("show-details", game);

  router.push({ name: "GameDetailsView", params: { id: game.id } });
};

onMounted(async () => {
  try {
    const response = await GameDataService.get(apiUrl);
    gamesFromRawg.value = response.data;
    console.log(gamesFromRawg.value);
  } catch (error) {
    console.error("Error al cargar los juegos:", error);
  }
});


</script>

<template>
  <div>
    <NavBar />
    <div class="main-container">
      <div class="container-header">
        <h3 class="container-header__title">Juegos</h3>
      </div>
      <div class="genres-container">
        <div
          v-for="game in gamesFromRawg.results"
          :key="game.id"
          class="genres-container__action"
          @click="showGameDetails(game)"
        >
          <img class="image-game" :src="game.background_image" alt="" />
          <p class="game-title">{{ game.name }}</p>
          <p></p>
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped lang="scss">
@use "../scss/colors" as c;

.main-container {
  background-color: map-get(c.$colors, "dark-gray");
  display: flex;
  flex-direction: column;
  padding-top: 4.5em;
}
.container-header {
  display: flex;
  justify-content: space-around;
  padding: 2em;
  background-color: map-get(c.$colors, "dark-gray");
  color: map-get(c.$colors, "white");
  width: 74%;
  align-self: center;

  .container-header__title {
    font-size: 30px;
    margin-right: auto;
  }
}

.genres-container {
  background-color: map-get(c.$colors, "dark-gray");
  display: flex;
  justify-content: center;
  flex-wrap: wrap;
  gap: 1em;
  width: 70%;
  margin: auto;
  justify-content: space-between;

  .game-title {
    color: map-get(c.$colors, "white");
    font-size: 25px;
    padding-top: 0.5em;
  }
}

.genres-container__action {
  text-align: center;
  border-radius: 10px;
  flex: 0 calc(33.33% - 1em);
  padding-bottom: 2em;
  &:hover {
    cursor: pointer;
  }
}

.image-game {
  width: 100%;
  border-radius: 20px;
  height: 80%;
}

@media screen and (max-width: 768px) {
  .genres-container__action {
    flex: 0 calc(100% - 2em);
    margin: auto;
    flex-wrap: nowrap;
  }
}
</style>
