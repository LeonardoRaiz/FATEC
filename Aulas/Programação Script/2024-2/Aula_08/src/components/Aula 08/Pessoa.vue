<script>
export default {
  name: "Pessoa",
  props: {
    idade: {
      type: Number,
      required: true
    }
  },
  emits: ['update:idade'],
  methods: {
    onClickIdade() {
      this.$emit('update:idade');
    }
  }
}
</script>

<template>
  <button type="button" @click="onClickIdade">Update Idade</button>
  <p> A pessoa tem {{ idade }} anos</p>
</template>

<style scoped>

</style>