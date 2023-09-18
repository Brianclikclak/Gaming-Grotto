<script setup>
import { ref, onMounted } from "vue";
import GameDataService from "../services/GameDataService";
import { useRoute } from "vue-router";
import NavBar from "../components/NavBar.vue";

const route = useRoute();
const gameId = route.params.id;

const games = ref([]);
const gameDetails = ref({});

onMounted(async () => {
  try {
    const response = await GameDataService.get("api/games");
    games.value = response.data;
    gameDetails.value = games.value.find(
      (game) => game.id === parseInt(gameId)
    );
    console.log(gameDetails.value);
  } catch (error) {
    console.error("Error al cargar los juegos:", error);
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
        <img class="game-img" :src="gameDetails.image" alt="Game Image" />
        <div class="game-info">
          <h2 class="game-title">{{ gameDetails.title }}</h2>
          <p class="game-year">
            Año de lanzamiento: <span>{{ gameDetails.releaseYear }}</span>
          </p>
          <p class="game-genre">
            Genero: <span>{{ gameDetails.genre.name }}</span>
          </p>
          <p class="game-developer">
            Desarrolladora: <span class="">{{ gameDetails.developer.name }}</span>
          </p>
          <div class="game-platforms">
            <p>Plataformas:</p>
            <span
              class="game-platform__text"
              v-for="platform in gameDetails.platforms"
              :key="platform.id"
            >
              {{ platform.name }}</span
            >
          </div>
        </div>
      </div>
      <div class="about-container">
        <h2 class="about-container__title">Acerca del juego</h2>
        <p class="about-container__description">{{ gameDetails.description }}</p>
      </div>
    </div>
  </template>
  


<style scoped lang="scss">
@use "../scss/colors" as c;

.main{
    background-color: map-get(c.$colors, "dark-gray");
    height: 100vh;
}
.details-container {
  display: flex;
  justify-content: center;
  flex-wrap: wrap;
  background-color: map-get(c.$colors, "dark-gray");
  background-size: cover;

  margin-top: 4.6em;
  gap: 5em;
  width: 100%;
  padding: 5em 0em;
}
.game-img {
  width: 35em;
  border: 4px solid map-get(c.$colors, "main-orange");
  border-radius: 20px;
}

.game-info {
  display: flex;
  flex-direction: column;
  justify-content: space-evenly;

  .game-title {
    color: map-get(c.$colors, "white");
    font-size: 4em;
  }
  .game-year,
  .game-genre,
  .game-developer,
  .game-platforms {
    font-size: 2em;
    color: map-get(c.$colors, "gray-text");
    span {
      color: map-get(c.$colors, "white");
    }
  }
  .game-platforms {
    display: flex;
    gap: 0.3em;
  }
}

.about-container {
  display: flex;
  flex-direction: column;
  background-color: map-get(c.$colors, "dark-black");
  padding-top: 4em;
  height: 50vh;

  .about-container__title {
    font-size: 4em;
    width: 89%;
    color: map-get(c.$colors, "white");
    margin: auto;
  }

  .about-container__description {
    text-align: center;
    font-size: 1.5em;
    padding-top: 2em;
    color: map-get(c.$colors, "gray-text");
    width: 70%;
    margin: auto;
  }
}
</style>
