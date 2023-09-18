<script setup>
import BtnShowAll from "./BtnShowAll.vue";
import { ref, onMounted, defineEmits } from "vue";
import GameDataService from "../services/GameDataService";
import { useRouter } from "vue-router";

const games = ref([]);
const gamesFirstSix = ref("");

const router = useRouter();

const  emit  = defineEmits();
const showGameDetails = (game) => {
  emit("show-details", game);

  router.push({ name: "GameDetails", params: { id: game.id } });
};

onMounted(async () => {
  try {
    const response = await GameDataService.get("api/games");
    games.value = response.data;
    gamesFirstSix.value = games.value.slice(0, 6);
    console.log(games.value);
  } catch (error) {
    console.error("Error al cargar los juegos:", error);
  }
});
</script>

<template>
  <div class="main-container">
    <div class="container-header">
      <h3 class="container-header__title">Tendencias</h3>
      <BtnShowAll />
    </div>
    <div class="genres-container">
      <div
        v-for="game in gamesFirstSix"
        :key="game.id"
        class="genres-container__action"
        @click="showGameDetails(game)"
      >
        <img class="image-game" :src="game.image" alt="" />
        <p class="game-title">{{ game.title }}</p>
      </div>
    </div>
    <img src="../assets/images/games-images/starfield-stretch.jpg" alt="">
  </div>
</template>

<style scoped lang="scss">
@use "../scss/colors" as c;

.main-container {
  background-color: map-get(c.$colors, "dark-gray");
  display: flex;
  flex-direction: column;
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
}

@media screen and (max-width: 768px) {
  .genres-container__action {
    flex: 0 calc(100% - 2em);
    margin: auto;
    flex-wrap: nowrap;
  }
}
</style>
