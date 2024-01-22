//Faça um programa que receba quatro números inteiros, calcule e mostre a soma desses números.


#include <stdio.h>

int main() {
    int num1, num2, num3, num4, soma;

    printf("Digite quatro números inteiros: ");
    scanf("%d%d%d%d", &num1, &num2, &num3, &num4);

    soma = num1 + num2 + num3 + num4;

    printf("A soma dos quatro números é: %d\n", soma);

    return 0;
}