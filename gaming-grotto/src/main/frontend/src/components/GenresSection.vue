<script setup>
import BtnShowAll from "./BtnShowAll.vue";
import { ref, onMounted } from "vue";
import GameDataService from "../services/GameDataService";

const genres = ref("");
const genresFirstSix = ref("");

onMounted(async () => {
  try {
    const response = await GameDataService.get("api/genres"); // Reemplaza '6' con el ID del juego que deseas obtener
    genres.value = response.data; // Almacenamos todos los datos del juego en gameData
    genresFirstSix.value = genres.value.slice(0, 6);
    console.log(genres.value);
    console.log(genresFirstSix.value);
  } catch (error) {
    console.error("Error al cargar los juegos:", error);
  }
});
</script>

<template>
    <div class="main-container">
      <div class="container-header">
        <h3 class="container-header__title">Categories</h3>
       <RouterLink to="/category"> <BtnShowAll /></RouterLink>
      </div>
      <div class="genres-container">
        <div v-for="genre in genresFirstSix" :key="genre.id" class="genres-container__action">
          <img class="image-game" :src="genre.icon_url" alt="" />
          <div class="genre-name">{{ genre.name }}</div>
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
  }
  .container-header {
    display: flex;
    justify-content: space-around;
    padding: 2em;
    width: 74%;
    align-self: center;
    background-color: map-get(c.$colors, "dark-gray");
    color: map-get(c.$colors, "white");
  
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
      width: 100%;
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
      background-color: rgba(0, 0, 0, 0.7); 
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
  }
  </style>
  

  
