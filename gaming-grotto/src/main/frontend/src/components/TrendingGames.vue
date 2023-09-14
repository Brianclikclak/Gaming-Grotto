<script>
import BtnShowAll from './BtnShowAll.vue';
</script>

<template>
    <div class="container-header">
        <h3 class="container-header__title">Tendecias</h3>
        <BtnShowAll/>Ver todo
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
    </div>
</template>

<style scoped lang="scss">
@use '../scss/colors' as c;

    .container-header{
        display: flex;
        justify-content: space-around;
        padding: 2em;
        gap: 45em;
        background-color: map-get(c.$colors, "dark-gray");

        .container-header__title{
            font-size: 30px;
        }
    }

    .genres-container{
        background-color: map-get(c.$colors, "dark-gray");
        margin: -15px;
        display: flex;
        position: relative;
        justify-content: center;
        flex-wrap: wrap;
        gap: 1em;
        
    }

    .genres-container__action{
        width: 25em;
        height: 15em;
        text-align: center;
        background-color: blue;
        line-height: 15em;
        border: solid 1px black;
        margin-bottom: 4em;
        background-color: map-get(c.$colors, "gray-text" );
    }

    
</style>