<script >
export default {
  name: "Usuario",
  props: ["idade"],
  emits: ["trocar-idade"],
  methods: {
    onClickIdade() {
      this.$emit("trocar-idade");
      //console.log(this.$emit("trocar-idade"));
    }
  }
}
</script>

<template>
  <p>O usuário tem {{idade}}</p>
  <button @click="onClickIdade">Atualizar idade</button>
</template>

<style scoped>

</style>