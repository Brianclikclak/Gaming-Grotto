<script setup>
import { ref, onMounted } from "vue";
import GameDataService from "../services/GameDataService";

const game = ref("");

onMounted(async () => {
  try {
    const response = await GameDataService.get("api/games/6"); // Reemplaza '6' con el ID del juego que deseas obtener
    game.value = response; // Almacenamos todos los datos del juego en gameData
    console.log(game.value.data);
  } catch (error) {
    console.error("Error al cargar el juego:", error);
  }
});
</script>

<template>
  <div class="game-container">
    <img
      class="game-image"
      src="../assets/images/games-images/Mortal-Kombat-1.jpg"
      alt="Nombre de la imagen"
    />
    <div class="game-info">
      <h2 class="game-container__title">{{ game.title }}</h2>
      <p>{{ game.description }}</p>
      <!-- Agrega aquí otros elementos para mostrar otros datos del juego según tus necesidades -->
    </div>
  </div>
</template>

<style scope lang="scss">
@use "../scss/colors" as c;

.game-container {
  width: 100%;
  margin-top: 4.5em;
}
.game-image {
    width: 100%;
    height: 100%;
    object-fit: cover;
}

.game-container__title {
  text-align: center;
  color: map-get(c.$colors, "white");
}
.game-container__description {
  color: map-get(c.$colors, "white");
}
</style>
