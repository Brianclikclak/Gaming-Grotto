<script>
</script>

<template>
    
    <div class="game-container">
        <h2 class="game-container__title">
            Juego destacado
        </h2>
    </div>
    
</template>

<style scope lang="scss">
    @use "../scss/colors" as c;

    .game-container{
        width: 100%;
        height: 20em;
        background-color: map-get(c.$colors, "dark-black" );
    }

    .game-container__title{
        text-align: center;
        line-height: 15em;
        color: map-get(c.$colors, "white" );
    }

</style>