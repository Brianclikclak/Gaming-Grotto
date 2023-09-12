<template>
  <header class="header-container">
    <img
      alt="Vue logo"
      class="logo"
      src="../assets/images/Grotto-gaming-logo.svg"
    />
    <div class="menu">
      <a href="">Explorar</a>
      <a href="">Generos</a>
      <a href="">Plataformas</a>
      <a href="">Favoritos</a>
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
@use "@/scss/mixins" as m;
* {
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}

.header-container {
  width: 100%;
  padding: 0 10px;
  display: flex;
  align-items: center;
  justify-content: space-between;
  background: map-get(c.$colors, "dark-black");
  position: fixed;
  margin-bottom: -73px;
  margin-left: -10px;
  margin-top: -10px;

  .menu {
    display: flex;
    align-items: center;
    position: absolute;
    left: 35%;
    justify-content: space-around;
    gap: 4em;

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
