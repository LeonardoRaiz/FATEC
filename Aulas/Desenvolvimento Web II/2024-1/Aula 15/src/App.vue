<script >
import Mensagem from "@/components/mensagem.vue";
import Usuario from "@/components/usuario.vue";
import Animal from "@/components/animal.vue";
export default {
  name: 'App',
  components: {
    Mensagem,
    Usuario,
    Animal,
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
  <Animal></Animal>
</template>

<style scoped>

</style>
