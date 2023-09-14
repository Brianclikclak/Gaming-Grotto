<template>
    <button class="btn-show-all">Ver todo</button>
</template>
<style lang="scss">
@use '../scss/colors' as c;

.btn-show-all{
    width: 20em;
    color: map-get(c.$colors, "white");
    height: 3em;
}
</style>