<template>
  <button type="button" @click="onClickIdade">Update idade</button>
  <p> O usuário tem {{ idade }} anos</p>
</template>

<script>
export default  {
  name: "User",
  props: ["idade"],
  emits: ["idade-change"],
  methods: {
    onClickIdade() {
      this.$emit("idade-change")
    }
  }
}
</script>

<style scoped>

</style>