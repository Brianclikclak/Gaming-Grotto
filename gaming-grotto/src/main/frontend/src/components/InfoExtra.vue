<template>
  <div class="container-info">
    <div class="container-info__img">
      <img class="controller-img" src="../assets/images/gamecontroller.svg" alt="Grotto-Gaming" />
    </div>
      <p class="container-info__text">
        Grotto Gaming is an excellent way to discover and find games you didn't know about. You have the information on all of them to give them a chance later.
      </p>
  </div>
</template>

<style scoped lang="scss">
@use "../scss/colors" as c;
.container-info{
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  background-color: map-get(c.$colors, "light-black");
  margin: auto;
  align-items: center;
}
.container-info__img{
  width: 15em;
}
.controller-img{
  width: 13em;
  height: 17em;
}

.container-info__text{
  text-align: center;
  font-size: 20px;
  color: map-get(c.$colors, "gray-text" );
  width: 40%;
}
</style>