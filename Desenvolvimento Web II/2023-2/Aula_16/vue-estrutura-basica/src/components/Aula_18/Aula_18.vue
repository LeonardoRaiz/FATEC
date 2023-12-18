<template>
  <div class="ctr">
    <Questions v-if="questionsAnswered < questions.length" :questions="questions" :questionsAnswered="questionsAnswered" @question-answered="questionAnswered"></Questions>
    <Result v-else :results="results" :totalCorrect="totalCorrect" ></Result>
    <button type="button" class="reset-btn" @click.prevent="reset" v-if="questionsAnswered === questions.length">Reset</button>
  </div>
</template>

<script>
  import Questions from "@/components/Aula_18/Questions.vue";
  import Result from "@/components/Aula_18/Result.vue";
  export default {
    components: {
      Result,
      Questions
    },
    data() {
      return {
        questionsAnswered: 0,
        totalCorrect: 0,
        "questions": [
          {
            "q": "Qual é a soma de 2 + 2?",
            "answers": [
              {
                "text": "4",
                "is_correct": true
              },
              {
                "text": "3",
                "is_correct": false
              },
              {
                "text": "Peixe",
                "is_correct": false
              },
              {
                "text": "5",
                "is_correct": false
              }
            ]
          },
          {
            "q": "Quantas letras há na palavra 'Banana'?",
            "answers": [
              {
                "text": "5",
                "is_correct": false
              },
              {
                "text": "7",
                "is_correct": false
              },
              {
                "text": "6",
                "is_correct": true
              },
              {
                "text": "12",
                "is_correct": false
              }
            ]
          },
          {
            "q": "Encontre a letra que falta: B_lo",
            "answers": [
              {
                "text": "e",
                "is_correct": false
              },
              {
                "text": "o",
                "is_correct": true
              },
              {
                "text": "i",
                "is_correct": false
              }
            ]
          }
        ],
        "results": [
          {
            "min": 0,
            "max": 2,
            "title": "Tente novamente!",
            "desc": "Estude um pouco mais e você pode ter sucesso!"
          },
          {
            "min": 3,
            "max": 3,
            "title": "Uau, você é um gênio!",
            "desc": "Estudar definitivamente deu resultado para você!"
          }
        ]
      }
    },
    methods: {
      questionAnswered(is_correct) {
        if (is_correct) {
          this.totalCorrect++;
        }
        this.questionsAnswered++;
      },
      reset() {
        this.questionsAnswered = 0;
        this.totalCorrect = 0;
      },
    }
  }
</script>

<style scoped lang="scss">
* {
  box-sizing: border-box;
}
body {
  font-size: 20px;
  font-family: sans-serif;
  padding-top: 20px;
  background: #e6ecf1;

}

.ctr {
  margin: 0 auto;
  max-width: 600px;
  width: 100%;
  box-sizing: border-box;
  position: relative;

}

.reset-btn {
  background-color: #ff6372;
  border: 0;
  font-size: 22px;
  color: #fff;
  padding: 10px 25px;
  margin: 10px auto;
  display: block;
  border-radius: 10px
}

.reset-btn:active, .reset-btn:focus, .reset-btn:hover{
  border: 0;
  outline: 0;
}
</style>