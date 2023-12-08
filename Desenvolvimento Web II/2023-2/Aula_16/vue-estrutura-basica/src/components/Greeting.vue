<script>
export default {
  name: 'Greeting',
  data() {
    return {
      msg: 'Hello World'
    }
  }
}
</script>

<template>
  <p> {{ msg }}</p>
</template>

<style scoped lang="scss">

p {
  color: #ba9bec;

  &:hover {
    color: darken( #ba9bec, 15% );
  }
}
</style>