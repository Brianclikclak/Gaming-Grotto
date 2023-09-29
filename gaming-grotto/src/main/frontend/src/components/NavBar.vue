<script setup>
import { RouterLink } from 'vue-router';




</script>
<template>
   <header class="header-container" >
    <RouterLink to="/"><img
      alt="Vue logo"
      class="logo"
      src="../assets/images/image 3.svg"
    /></RouterLink>
    <div class="menu">
      <RouterLink to="/explore">Games</RouterLink>
      <RouterLink to="/category">Genres</RouterLink>
      <RouterLink to="/platform">Platforms</RouterLink>
      <a href="">Favorites</a>

      <img
        src="../assets/images/Search.svg"
        alt="Search icon"
        class="search-icon"
      />
    </div>
    <div class="login">
      <img src="../assets/images/User.svg" alt="User icon" class="user-icon" />
    </div>
  </header>

</template>

<style scoped lang="scss">
@use "@/scss/colors" as c;




.header-container {
  width: 100%;
  padding: 0 10px;
  position: fixed;
  display: flex;
  align-items: center;
  justify-content: space-between;
  background: map-get(c.$colors, "dark-black");
  margin-top: -10px;
  top: 0;
  z-index: 3;
  transition: .2s; 
  opacity: 0.9;
  
  .menu {
    display: flex;
    align-items: center;
    position: absolute;
    left: 35%;
    justify-content: space-around;
    gap: 4em;
    font-size: 1.2em;

    a {
      text-decoration: none;
      color: map-get(c.$colors, "white");

      &:hover {
        color: map-get(c.$colors, "main-orange");
      }
    }
  }
}

.login {
  position: relative;
}

.user-icon {
  width: 3em;
}

.search-icon {
  width: 3em;
}

.logo {
  background-size: 100%;
  background-repeat: no-repeat;
  width: 15em;
  height: 5em;
}
</style>
