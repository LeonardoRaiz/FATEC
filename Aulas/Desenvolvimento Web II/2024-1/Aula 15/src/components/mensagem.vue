<script>
export default {
  name: "Mensagem",
  props: ["idade"],
  data() {
    return {
      msg: "Você agora pode dirigir!",
      msg1: "Você tem que ter mais que 18 anos para acessar essa mensagem"
    }
  }
}
</script>

<template>
<p v-if="idade >= 18">{{msg}}</p>
<p v-else>{{msg1}}</p>
</template>

<style scoped>

</style>