<script setup>
import NavBar from "../components/NavBar.vue";
import TrendGame from "../components/TrendGame.vue";
import InfoExtra from "../components/InfoExtra.vue";
import TrendingGames from "../components/TrendingGames.vue"
</script>

<template>
  <header>
    <NavBar />
  </header>
  <main>
    <div>
      <TrendGame />
    </div>
    <TrendingGames/>
    <div>
      <InfoExtra/>
    </div>
  </main>
</template>

<style>
* {
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}
</style>
