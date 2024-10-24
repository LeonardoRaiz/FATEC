<script>
import Pessoa from "./Pessoa.vue";
export default {
  name: "Aula08",
  components: {
    Pessoa,
  },
  data() {
    return {
      idade: 10
    }
  }
}
</script>

<template>
  <Pessoa :idade="idade" @update:idade="idade++"></Pessoa>
</template>

<style scoped>

</style>