<script setup>
import FeaturedGame from '../components/FeaturedGame.vue';
import NavBar from '../components/NavBar.vue';
import TrendGames from '../components/TrendGames.vue';


</script>

<template>
  <header>
    <NavBar/>
  </header>
  <div>
    <FeaturedGame/>
  </div>
  <div>
    <TrendGames/>
  </div>
</template>
