<template>
    <button class="btn-show-all">Show all</button>
</template>
<style lang="scss">
@use '../scss/colors' as c;

.btn-show-all{
    color: map-get(c.$colors, "white");
    background-color: map-get(c.$colors, "dark-gray");
    border-radius: 10px;
    border: 2px solid map-get(c.$colors, "gray-text" ); 
    font-size: 15px;
    height: 40px;
    padding: 0 15px;
    &:hover{
        background-color: map-get(c.$colors, "main-orange");
        cursor: pointer;
        border: 2px solid map-get(c.$colors, "white" ); 
    }
}
</style>