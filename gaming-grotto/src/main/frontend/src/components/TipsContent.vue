<script></script>
<template>
  <div class="main-container">
    <div class="main-container__search">
      <div class="container__icon">
        <img src="../assets/images/icons/search.svg" alt="" />
      </div>
      <div class="container__text">
        <h4>Discover new games</h4>
        <p>Discover new games</p>
      </div>
    </div>

    <div class="spacer"></div>

    <div class="main-container__favorite">
      <div class="container__icon">
        <img src="../assets/images/icons/favorite.svg" alt="" />
      </div>
      <div class="container__text">
        <h4>Discover new games</h4>
        <p>Discover new games</p>
      </div>
    </div>

    <div class="spacer"></div>

    <div class="main-container__checkbox">
      <div class="container__icon">
        <img src="../assets/images/icons/checked Box.svg" alt="" />
      </div>
      <div class="container__text">
        <h4>Stay up to date</h4>
        <p>Don't miss anything!</p>
      </div>
    </div>
  </div>
</template>

<style lang="scss" scoped>
@use "../scss/colors" as c;

.main-container {
  display: flex;
  justify-content: center;
  background-color: map-get(c.$colors, "dark-black");
  padding: 2em 0;
  gap: 3em;

  .spacer {
    background-color: gray;
    width: 1px;
    height: 4.7em;
  }

  .main-container__search,
  .main-container__favorite,
  .main-container__checkbox {
    display: flex;
  }

  .container__text {
    text-align: center;
    h4 {
      color: map-get(c.$colors, "white");
      font-size: 2em;
    }
    p {
      color: map-get(c.$colors, "gray-text");
      font-size: 1em;
    }
  }

  .container__icon {
    text-align: center;

    img {
      width: 2vw;
    }
  }
  
}

@media screen and (max-width: 768px) {
    .main-container {
      gap: 1em;
      padding: 0;
    }
    .container__text {
      h4 {
        font-size: 1.5em;
      }
      p {
        font-size: 0.2em;
      }
      img {
        width: 5vw;
      }
      .spacer {
        background-color: gray;
        width: 1px;
        height: 2.5em;
      }
    }
  }
@media screen and (max-width: 600px) {

    .main-container{
      gap: 0;
    }
.container__text {
  h4 {
    font-size: 0.5em;
  }
  p {
    font-size: 0.2em;
  }
}
}
</style>

