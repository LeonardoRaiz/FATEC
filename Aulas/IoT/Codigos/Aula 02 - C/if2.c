#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main(void) {
  srand(time(NULL));
  int chance = rand() % 2;
  int life = 100;
  int atKBoss = 150;
  int atkHero = 10;
  int lifeBoss = 1000;
  int action;
  char* status;

  printf("Digite o valor do comando.\n");
  printf("1 - Heroi ataca o Boss.\n");
  printf("2 - Boss ataca o heroi.\n");
  printf("3 - Encerrar o jogo.\n");
  scanf("%d", &action);

  switch (action) {
  case 1:
    // lifeBoss = lifeBoss - atkHero;
    lifeBoss -= atkHero;
    printf("Boss ficou com %d de vida!", lifeBoss);
    break;
  case 2:
    life -= atKBoss;
    printf("O heroi ficou com %d de vida!", life);
    break;
  default:
    printf("Game Over!");
  }

  status = chance != 0 ? "Heroi ganhou uma vida extra\n" : "F!\n";
  if (life <= 0 && chance == 0) {
    printf("You Died!");
    printf("%s", status);
  } else {
    printf("You are alive!");
    printf("%s", status);
  }
  return 0;
}