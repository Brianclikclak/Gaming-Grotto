<script setup>
import NavBar from '../components/NavBar.vue';
import GenresGames from '../components/GenresGames.vue'
import { RouterView } from 'vue-router';
</script>

<template>
  <div>
  <header>
    <NavBar/>
  </header>
  <main>
    <GenresGames/>
</main>
<RouterView/>
</div>
</template>

<style>

</style>
