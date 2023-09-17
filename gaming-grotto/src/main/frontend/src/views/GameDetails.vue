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
    <NavBar/>
    <div class="details-container" v-if="gameDetails && Object.keys(gameDetails).length > 0">
      
        <img :src="gameDetails.image" alt="Game Image" />
        <div class="game-info">
          <h2 class="game-title">{{ gameDetails.title }}</h2>
          <p class="game-year">
            Año de lanzamiento: <span>{{ gameDetails.releaseYear }}</span>
          </p>
          <p class="game-genre">Genero: <span>{{ gameDetails.genre.name }}</span></p>
          <p class="game-developer">
            Desarrolladora: <span class="">{{ gameDetails.developer.name }}</span>
          </p>
          <div class="platforms">
            Plataformas:
           <p v-for="platform in gameDetails.platforms" :key="platform.id">
                {{ platform.name  }}</p>
          </div>
        </div>
      
    </div>
    <div class="game-description">
      <h2 class="about-game">Acerca del juego</h2>
      <p>{{ gameDetails.description }}</p>
    </div>
  </template>
  

<style scoped lang="scss">
    @use '../scss/colors' as c;
.details-container {
  display: flex;
  justify-content: space-evenly;
  flex-wrap: wrap;
  background: blue;
  margin-top: 4.5em;
  height: 20em;
}

.game-info{
    display: flex;
    flex-direction: column;
    justify-content: space-evenly;

    .game-title{
        color: map-get(c.$colors, "white");
        font-size: 4em;
    }
    .game-year{

    }
}

.game-description {
}

.platforms{
    display: flex;
    gap: 0.3em;
    
}
</style>
