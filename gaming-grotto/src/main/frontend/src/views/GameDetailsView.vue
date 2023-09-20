<script setup>
import NavBar from '../components/NavBar.vue';
import GameDataService from "../services/GameDataService";
import { ref, onMounted } from 'vue';
import { useRoute } from 'vue-router';

const route = useRoute();
const gameId = route.params.id;

const games = ref([]);
const gameDetails = ref({});
  


const apiUrl = `https://api.rawg.io/api/games/${gameId}?key=376e19295edf49948e86dad1da853b22`;

onMounted(async () => {
  try {
    const response = await GameDataService.get(apiUrl);
    gameDetails.value = response.data;
    console.log(gameDetails.value);
    console.log(gameDetails.parent_platforms)
  } catch (error) {
    console.error("Error al mostrar detalles del juego:", error);
  }
});


</script>
<template>
  <div class="main">
    <NavBar />
    <div
      class="details-container"
      v-if="gameDetails && Object.keys(gameDetails).length > 0"
    >
      <img class="back-image" :src="gameDetails.background_image_additional" alt="" />
      <img class="game-img" :src="gameDetails.background_image" alt="Game Image" />
      <div class="game-info">
        <h2 class="game-title">{{ gameDetails.name }}</h2>

        <p class="game-year">
          Release date: <span>{{ gameDetails.released }}</span>
        </p>
        <div class="game-platforms">
          <p>Genre:</p>
          <span
            class="game-platform__names"
            v-for="genres in gameDetails.genres"
            :key="genres.id"
          >
            {{ genres.name }}</span

          >
          
        </div>
        <p class="game-developer">
          Developer: <span class="">{{ gameDetails.developers[0].name }}</span>
        </p>
        <div class="game-platforms">
          <p>Platforms:</p>
          <span
            class="game-platform__names"
            v-for="platform in gameDetails.parent_platforms"
            :key="platform.id"
          >
            {{ platform.platform.name }}</span
          >
          
        </div>
      </div>
    </div>
    <div class="about-container">
      <h2 class="about-container__title">About the game</h2>
      <p class="about-container__description" v-html="gameDetails.description"></p>
    </div>
  </div>
</template>



<style scoped lang="scss">
@use "../scss/colors" as c;

.main {
  background-color: map-get(c.$colors, "dark-black");
}
.back-image {
  width: 100%;
  position: absolute;
  opacity: 0.7;
  top: 4.5em;
  height: 63vh;
}
.details-container {
  display: flex;
  justify-content: center;
  flex-wrap: wrap;
  background-size: cover;
  margin-top: 4.6em;
  gap: 5em;
  padding-top: 20em;
  padding-bottom: 5em;
}
.game-img {
  width: 36em;
  border: 4px solid map-get(c.$colors, "main-orange");
  border-radius: 20px;
  z-index: 2;
}

.game-info {
  display: flex;
  flex-direction: column;
  justify-content: space-evenly;
  backdrop-filter: blur(80px) saturate(30%);
  border-radius: 20px;
  padding: 0 1em;
  z-index: 2;

  .game-title {
    color: map-get(c.$colors, "white");
    font-size: 4em;
  }
  .game-year,
  .game-genres,
  .game-developer,
  .game-platforms {
    display: flex;
    flex-wrap: wrap;
    gap: 0.3em;
    font-size: 2em;
    color: map-get(c.$colors, "main-orange");
    .game-platform__names,
    span {
      color: map-get(c.$colors, "white");
      font-size: 1em;
    }
  }
}

.about-container {
  display: flex;
  flex-direction: column;
  padding-top: 4em;
  padding-bottom: 4em;

  .about-container__title {
    font-size: 4em;
    width: 71%;
    color: map-get(c.$colors, "white");
    margin: auto;
  }

  .about-container__description {
    font-size: 1.5em;
    padding-top: 2em;
    color: map-get(c.$colors, "gray-text");
    width: 70%;
    margin: auto;
  }
}

@media screen and (max-width: 768px) {
  .details-container {
    padding-top: 3em;
  }
  .back-image {
    display: none;
  }
  .game-info {
    width: 100%;
    .game-year,
    .game-genre,
    .game-developer,
    .game-platforms {
      display: flex;
      flex-direction: column;
      font-size: 2.5em;
    }
  }
  .game-img {
    width: 100%;
  }
}
</style>
