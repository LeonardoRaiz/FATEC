<script>
export default {
  props: ["questions", "questionsAnswered"],
  emits: ["question-answered"],
  methods: {
    selectAnswer(is_correct) {
      this.$emit('question-answered', is_correct);
    }
  }
}
</script>

<template>
  <div class="questions-ctr">
    <div class="progress">
      <div class="bar" :style="{ width: `${ questionsAnswered / questions.length * 100 }%` }"></div>
      <div class="status">{{questionsAnswered}} respondidas de {{questions.length}} </div>
    </div>
    <div class="single-question" v-for="(question, qi) in questions" :key="question.q" v-show="questionsAnswered === qi">
      <div class="question">{{question.q}}</div>
      <div class="answers">
        <div class="answer" v-for="answer in question.answers" :key="answer.text" @click="selectAnswer(answer.is_correct)">{{answer.text}}</div>
      </div>
    </div>
  </div>
</template>

<style scoped lang="scss">
.questions-ctr {
  position: relative;
  width: 100%;
}
.question {
  width: 100%;
  padding: 20px;
  font-size: 32px;
  font-weight: bold;
  text-align: center;
  background-color: #1d509f;
  color: #fff;
  box-sizing: border-box;
  border-radius: 10px;
  margin-top: 10px;
}
.single-question {
  position: relative;
  width: 100%;
}

.answer {
  border: 1px solid #8e959f;
  padding: 20px;
  font-size: 18px;
  width: 100%;
  background-color: #fff;
  transition: 0.2s linear all;
  box-sizing: border-box;
  border-radius: 10px;
  margin-top: 10px;
}
.answer span {
  display: inline-block;
  margin-left: 5px;
  font-size: 0.75em;
  font-style: italic;
}
.progress {
  height: 50px;
  margin-top: 10px;
  background-color: #ddd;
  position: relative;
  border-radius: 10px
}
.bar {
  height: 50px;
  background-color: #50c715;
  transition: all 0.3s linear;
  border-radius: 10px
}
.status {
  position: absolute;
  top: 15px;
  left: 0;
  text-align: center;
  color: #fff;
  width: 100%;
  border-radius: 10px
}
.answer:not(.is-answered) {
  cursor: pointer;
}
.answer:not(.is-answered):hover {
  background-color: #6f0b73;
  border-color: #6f0b73;
  color: #fff;
}
</style>