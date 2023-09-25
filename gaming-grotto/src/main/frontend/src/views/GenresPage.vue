<script setup>
import { ref, onMounted, defineEmits } from 'vue';
import { useRoute, useRouter } from 'vue-router';
import GameDataService from '../services/GameDataService';
import NavBar from '../components/NavBar.vue';

const router = useRouter();
const route = useRoute();
const genreId = route.params.genreId;

const selectedGenre = ref({});
const games = ref([]);

const emit = defineEmits();
const showGameDetails = (game) => {
  emit("show-details", game);

  router.push({ name: "GameDetailsView", params: { id: game.id } });
};

onMounted(async () => {
  try {
    const genreResponse = await GameDataService.get(
      `https://api.rawg.io/api/genres/${genreId}?key=376e19295edf49948e86dad1da853b22`
    );
    selectedGenre.value = genreResponse.data;
    
    const gamesResponse = await GameDataService.get(
      `https://api.rawg.io/api/games?key=376e19295edf49948e86dad1da853b22&genres=${genreId}`
    );
    games.value = gamesResponse.data.results;
  } catch (error) {
    console.error('Error al cargar los juegos relacionados:', error);
  }
});
</script>

<template>
    <div>
        <NavBar/>

      <div class="main-container">
      <div class="container-header">
        <h3 class="container-header__title">{{ selectedGenre.name }} Games</h3>
      </div>
      <div class="genres-container">
        <div
          v-for="game in games"
          :key="game.id"
          class="genres-container__action"
          @click="showGameDetails(game)"
        >
          <img class="image-game" :src="game.background_image" alt="" />
          <div class="game-info">
            <p class="game-title">{{ game.name }}</p>
            <p class="game-rating">Rating: {{ game.rating }}</p>
          </div>
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
      font-size: 4em;
      margin-right: auto;
      padding-bottom: 2em;
      color: map-get(c.$colors, "main-orange");
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
  
    .game-info {
    display: flex;
    justify-content: space-between;

    .game-rating {
      font-size: 1em;
      color: map-get(c.$colors, "main-orange");
    }
    .game-title {
      color: map-get(c.$colors, "white");
      font-size: 1.3em;
      padding-top: 0.4em;
    }
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
  
  .game-trend-img{
    width: 100%;
  }
  
  @media screen and (max-width: 768px) {
    .genres-container__action {
      flex: 0 calc(100% - 2em);
      margin: auto;
      flex-wrap: nowrap;
    }
  }
  </style>

