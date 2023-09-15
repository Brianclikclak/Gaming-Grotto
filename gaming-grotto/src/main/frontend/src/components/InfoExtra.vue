<template>
  <div class="container-info">
    <div class="container-info__img">
      <img class="controller-img" src="../assets/images/gamecontroller.svg" alt="Grotto-Gaming" />
    </div>
      <p class="container-info__text">
        Grotto Gaming es una excelente forma de descrubir y encontrar juegos que
        no conocias. Cuentas con la información de todos ellos para darles una
        oportunidad mas adelante.
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