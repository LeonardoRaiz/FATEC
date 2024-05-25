<script>
export default {
  name: 'Mensagem',
  props: ["idade"],
  data() {
    return {
      msg: "Você pode dirigir!",
      msg2: "Você só poderá ver esta mensagem quando tiver 18 anos!"
    }
  }
}
</script>

<template>
<p v-if="idade >= 18">{{ msg }}</p>
<p v-else>{{msg2}}</p>
</template>

<style scoped>

</style>