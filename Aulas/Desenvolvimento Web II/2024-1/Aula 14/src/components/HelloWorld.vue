<script setup>
defineProps({
  msg: {
    type: String,
    required: true
  }
})
</script>

<template>
  <p>Olá mundo</p>
  <h1 class="texto">{{ msg }}</h1>
</template>

<style scoped>
.texto {
  color: red;
  font-style: italic;
}
</style>
