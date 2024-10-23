<script setup>
import HelloWorld from "./components/HelloWorld.vue";
import Mensagem from "./components/Mensagem.vue";
</script>

<template>
  <HelloWorld></HelloWorld>
  <HelloWorld></HelloWorld>
  <HelloWorld></HelloWorld>
  <HelloWorld></HelloWorld>
  <HelloWorld></HelloWorld>
  <HelloWorld></HelloWorld>
  <p class="verde">TESTE CSS</p>
  <Mensagem msg="Nossa primeira PROPS"/>
  <Mensagem msg="Olha a nova loira do Tchan"/>
</template>

<style scoped>
.verde {
  color: greenyellow;
}
</style>
