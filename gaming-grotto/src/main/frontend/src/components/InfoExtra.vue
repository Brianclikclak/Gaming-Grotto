<template>
  <div class="container-info">
    <div class="container-info__img">
      <img src="../assets/images/gamecontroller.svg" alt="Grotto-Gaming" />
    </div>
    <span>
      <p class="container-info__text">
        Grotto Gaming es una excelente forma de descrubir y encontrar juegos que
        no conocias. Cuentas con la información de todos ellos para darles una
        oportunidad mas adelante.
      </p>
    </span>
  </div>
</template>

<style scoped lang="scss">
@use "../scss/colors" as c;
.container-info{
  display: flex;
  justify-content: center;
  background-color: map-get(c.$colors, "dark-gray");
  gap: 1em;
}
.container-info__img{
  width: 18em;
}

.container-info__text{
  text-align: center;
  font-size: 30px;
  color: map-get(c.$colors, "gray-text" );
  margin-top: 3.5em;
}
</style>