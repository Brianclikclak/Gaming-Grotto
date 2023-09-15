<script setup>
import { onMounted, reactive } from "vue";
import BtnShowAll from "./BtnShowAll.vue";




</script>
<template>
  <div class="container">
    <div class="title-container">
      <h3>Categorías</h3>
      <BtnShowAll />
    </div>
    <div class="genres-container">
      <div class="genres-container__action">
        <p>Acción</p>
      </div>
      <div class="genres-container__action">
        <p>Aventura</p>
      </div>
      <div class="genres-container__action">
        <p>Disparos</p>
      </div>
      <div class="genres-container__action">
        <p>RPG</p>
      </div>
      <div class="genres-container__action">
        <p>RPG</p>
      </div>
      <div class="genres-container__action">
        <p>RPG</p>
      </div>
      <div class="genres-container__action">
        <p>RPG</p>
      </div>
      <div class="genres-container__action">
        <p>RPG</p>
      </div>
      <div class="genres-container__action">
        <p>RPG</p>
      </div>
    </div>
  </div>
</template>

<style scoped lang="scss">
@use '../scss/colors' as c;
.container {
  display: flex;
  flex-direction: column;
  align-items: center;
  padding: 2em;
  gap: 2em;
  background-color: map-get(c.$colors, "dark-gray");
}

.title-container {
  display: flex;
  justify-content: space-between;
  align-items: center;
  width: 100%;
  font-size: 25px;
  color: map-get(c.$colors, "white");
}

.genres-container {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  gap: 1em;
}

.genres-container__action {
  width: 25em;
  height: 15em;
  display: flex;
  justify-content: center;
  align-items: center;
  background-color: blue;
  border: solid 1px black;
  margin-bottom: 2em;
  border-radius: 10px;
}

.genres-container__action p {
  margin: 0;
  font-size: 1.5em;
  color: white;
}
</style>
