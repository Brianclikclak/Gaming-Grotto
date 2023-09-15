<script setup>
import BtnShowAll from "./BtnShowAll.vue";
</script>

<template>
    <div class="main-container">
      <div class="container-header">
        <h3 class="container-header__title">Tendencias</h3>
        <BtnShowAll />
      </div>
      <div class="genres-container">
        <div class="genres-container__action">
          <p>Accion</p>
        </div>
        <div class="genres-container__action">
          <p>Aventura</p>
        </div>
        <div class="genres-container__action">
          <p>Disparos</p>
        </div>
        <div class="genres-container__action">
          <p>RPG</p>
        </div>
        <div class="genres-container__action">
          <p>RPG</p>
        </div>
        <div class="genres-container__action">
          <p>RPG</p>
        </div>
        <div class="genres-container__action">
        <p>RPG</p>
      </div>
      <div class="genres-container__action">
        <p>RPG</p>
      </div>
      <div class="genres-container__action">
        <p>RPG</p>
      </div>
      </div>
    </div>
  </template>
  

<style scoped lang="scss">
@use '../scss/colors' as c;

.main-container{
  background-color: map-get(c.$colors, "dark-gray");
}
    .container-header{
        display: flex;
        justify-content: space-around;
        padding: 2em;
        background-color: map-get(c.$colors, "dark-gray");
        color: map-get(c.$colors, "white" );

        .container-header__title{
            font-size: 30px;
            margin-right: auto;
        }
    }

    .genres-container{
        background-color: map-get(c.$colors, "dark-gray");
        display: flex;
        /* position: relative; */
        justify-content: center;
        flex-wrap: wrap; 
        gap: 1em;
        width: 70%;
        margin: auto;
        justify-content: space-between;
        
        
        
    }

    .genres-container__action{
        
        
        text-align: center;
        line-height: 15em;
        border: solid 1px black;
        margin-bottom: 3em;
        background-color: map-get(c.$colors, "gray-text" );
        border-radius: 10px;
        flex: 0 calc(33.33% - 1em); /* 3 contenedores por fila */
        
        
        
    }

      @media screen and (max-width: 768px) {
      .genres-container__action {
      flex: 0 calc(100% - 2em); 
      margin: auto;
      flex-wrap: nowrap;
    }
    

      
    
    }

    


    
</style>