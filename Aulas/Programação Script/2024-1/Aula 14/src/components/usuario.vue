<script>
export default {
  name: 'Usuario',
  props: ["idade"],
  emits: ["trocar-idade"],
  methods: {
    onClickIdade() {
      this.$emit("trocar-idade");
    }
  }
}
</script>

<template>
<button type="button" @click="onClickIdade">Update idade</button>
<p>O usuário tem {{ idade }} anos</p>
</template>

<style scoped>

</style>