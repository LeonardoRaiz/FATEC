#include <stdio.h>
#include <stdlib.h>
#include <time.h>


int main(void) {
  srand(time(NULL));
  int chance = rand() % 2;
  int lifeHero = 100;
  int atkBoss = 10;
  int atkHero = 1000;
  int lifeBoss = 1000;

  do {
    printf("O heroi atacou o boss!\n*******\n");
    printf("Boss life: %d\n", lifeBoss);
    lifeBoss -= atkHero;
  } while (lifeBoss > 0);

  for (int i = 0; i < 5; i++) {
    chance = rand() % 2;
    if (chance == 1) {
      lifeBoss += 500;
    } else {
      lifeBoss -= 500;
    }
  }

  char *status = lifeBoss <= 0 ? "Boss morreu!" : "Boss entrou no modo rage!";
  printf("%s e está com a vida em: %d", status, lifeBoss);

  int op = 1;
  while (op != 0)
  {
    printf("****** RPG do IoT *******\n");
    printf("1 - Falar com a IA!\n");
    printf("2 - Criar uma poção!\n");
    printf("3 - Comprar um escudo\n");
    printf("0 - Sair do jogo.\n");
    scanf("%d", &op);
    system("clear");
    switch(op)
    {
      case 1:
        printf("Desculpe estou sem Mana para te resposnder...\n");
        break;
      case 2:
        printf("Merlin está criando uma poção, você ganhou 50 de vida!!!\n");
        lifeHero += 50;
        break;
      case 3:
        printf("Vendedor: Welcome!!!\n");
        printf("Forjando o escudo...!\n");
        printf("Você recebeu um escudo! Boa jornada meu jovem!\n");
    }
  }
}