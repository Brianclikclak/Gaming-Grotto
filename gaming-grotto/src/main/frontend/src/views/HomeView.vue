<script setup>
import NavBar from "../components/NavBar.vue";
import InfoExtra from "../components/InfoExtra.vue";
import TrendingGames from "../components/TrendingGames.vue";
import FeaturedGame from "../components/FeaturedGame.vue";
import GenresSection from "../components/GenresSection.vue";
import TipsContent from "../components/TipsContent.vue";
</script>

<template>
  <div>
    <header>
      <NavBar />
    </header>
    <main>
      <div>
        <FeaturedGame />
      </div>
      <TrendingGames />
      <div>
        <TipsContent/>
      </div>
      <div>
        <GenresSection/>
      </div>
      <div>
        <InfoExtra />
      </div>
    </main>
  </div>
</template>

<style>
* {
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}

</style>
