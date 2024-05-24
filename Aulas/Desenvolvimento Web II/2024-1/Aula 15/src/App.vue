<script >
import Mensagem from "@/components/mensagem.vue";
import Usuario from "@/components/usuario.vue";
export default {
  name: 'App',
  components: {
    Mensagem,
    Usuario
  },
  data() {
    return {
      idade: 10,
    }
  }
}
</script>

<template>
  <h1>Valores entre componentes</h1>
  <Mensagem :idade="idade"></Mensagem>
  <Usuario :idade="idade" @trocar-idade="idade++"></Usuario>
</template>

<style scoped>

</style>
