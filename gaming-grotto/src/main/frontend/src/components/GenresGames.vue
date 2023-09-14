<script>
import BtnShowAll from './BtnShowAll.vue';

</script>

<template>
    <div class="title-container">
        <h3>Categorias</h3>
        <BtnShowAll/>
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

    .title-container{
        display: flex;
        justify-content: space-around;
        padding: 2em;
        gap: 40em;
    }

    .genres-container{
        
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
    }

    
</style>