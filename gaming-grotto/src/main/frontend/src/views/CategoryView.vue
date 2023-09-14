<script setup>
import NavBar from '../components/NavBar.vue';
import GenresGames from '../components/GenresGames.vue'
import { RouterView } from 'vue-router';
</script>

<template>
  <header>
    <NavBar/>
  </header>
  <main>
    <GenresGames/>

</main>
<RouterView/>
</template>

<style>
*{
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}
</style>
