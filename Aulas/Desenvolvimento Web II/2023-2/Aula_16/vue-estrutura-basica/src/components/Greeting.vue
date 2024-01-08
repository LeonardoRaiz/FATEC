<script>
export default {
  name: 'Greeting',
  props: ["idade"],
  data() {
    return {
      msg: 'Hello World'
    }
  }
}
</script>

<template>
  <p v-if="idade > 30"> {{ msg }}</p>
  <p v-else>Você só pode ver esta mensagem se sua idade for maior que 30 anos</p>
</template>

<style scoped lang="scss">

p {
  color: #ba9bec;

  &:hover {
    color: darken( #ba9bec, 15% );
  }
}
</style>