<script>
import Mensagem from "./components/mensagem.vue";
import Usuario from "./components/usuario.vue";
export default {
  name: "App",
  components: {
    Mensagem,
    Usuario
  },
  data() {
    return {
      idadeUser: 10
    }
  }
}
</script>

<template>
  <h1>Valores entre componentes!</h1>
  <Mensagem :idade="idadeUser"></Mensagem>
  <Usuario :idade="idadeUser" @trocar-idade="idadeUser++"></Usuario>
</template>

<style scoped>

</style>
