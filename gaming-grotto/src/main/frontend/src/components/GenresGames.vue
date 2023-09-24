<script setup>
import BtnShowAll from "./BtnShowAll.vue";
import { ref, onMounted } from "vue";
import GameDataService from "../services/GameDataService";

const genres = ref([]);

async function fetchGenres() {
  try {
    const response = await GameDataService.get('https://api.rawg.io/api/genres?key=376e19295edf49948e86dad1da853b22');
    genres.value = response.data.results;
    console.log(genres.value);
  } catch (error) {
    console.error('Error al cargar los géneros:', error);
  }
}

onMounted(fetchGenres);

</script>

<template>
    <div class="main-container">
      <div class="container-header">
        <h3 class="container-header__title">Categorias</h3>
      </div>
      <div class="genres-container">
        <div v-for="genre in genres" :key="genre.id" class="genres-container__action">
          <img class="image-game" :src="genre.image_background" alt="" />
          <div class="genre-name">{{ genre.name }}</div>
        </div>
      </div>
    </div>
  </template>
  
  <style scoped lang="scss">
  @use "../scss/colors" as c;
  
  .main-container {
    background-color: map-get(c.$colors, "dark-gray");
    margin-top: 4.5em;
  }
  .container-header {
    display: flex;
    justify-content: space-around;
    padding: 2em;
    background-color: map-get(c.$colors, "dark-gray");
    color: map-get(c.$colors, "white");
    width: 73%;
    margin: auto;
  
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
  }
  
  .genres-container__action {
    text-align: center;
    margin-bottom: 3em;
    flex: 0 calc(33.33% - 1em);
    position: relative; 
  
    .image-game {
      width: 23em;
      height: 14em;
      opacity: 0.6;
      border-radius: 20px;
    }
  
    .genre-name {
      font-size: 25px;
      color: map-get(c.$colors, "white");
      position: absolute; 
      top: 50%; 
      left: 50%; 
      transform: translate(-50%, -50%); 
      background-color: rgba(0, 0, 0, 0.6); 
      padding: 0.5em;
      border-radius: 10px;
    }
  }
  
  @media screen and (max-width: 768px) {
    .genres-container__action {
      flex: 0 calc(100% - 2em);
      margin: auto;
      flex-wrap: nowrap;
    }
    .image-game{
      width: 100%;
    }
    
  }

  @media screen and (max-width: 400px){
    .image-game{
      width: 10em;
    }
  }
  </style>
  

  
