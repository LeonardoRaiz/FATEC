<!-- JavaScript -->
<script setup>
defineProps({
  msg: {
    type: String,
    required: true
  }
})
</script>

<!-- HTML -->
<template>
  <p class="texto">{{msg}}</p>
</template>

<!-- CSS -->
<style scoped>
.texto {
  color: #FF4500;
  font-style: italic;
}
</style>
