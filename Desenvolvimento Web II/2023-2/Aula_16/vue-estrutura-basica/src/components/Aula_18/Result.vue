<script >
export default {
  props: ["totalCorrect", "results"],
  computed: {
    resultIndex() {
      let index = 0;

      this.results.forEach((item, indexV) => {
        if(item.min <= this.totalCorrect && item.max >= this.totalCorrect) {
          index = indexV;
        }
      })

      return index;
    }
  }
}
</script>

<template>
  <div class="result">
    <div class="title">{{results[resultIndex].title}}</div>
    <div class="desc">
      {{results[resultIndex].desc}}
    </div>
  </div>
</template>

<style scoped lang="scss">
.title {
  width: 100%;
  padding: 20px;
  font-size: 32px;
  font-weight: bold;
  text-align: center;
  background-color: #12cbc4;
  color: #fff;
  box-sizing: border-box;
}
.desc {
  border: 1px solid #8e959f;
  padding: 20px;
  font-size: 18px;
  width: 100%;
  background-color: #fff;
  transition: 0.4s linear all;
  text-align: center;
  box-sizing: border-box;
}
.fade-enter-from {
  opacity: 0;
}
.fade-enter-active {
  transition: all 0.3s linear;
}
.fade-leave-active {
  transition: all 0.3s linear;
  opacity: 0;
  position: absolute;
}
.fade-leave-to {
  opacity: 0;
}

.result{
  width: 100%;
}
</style>