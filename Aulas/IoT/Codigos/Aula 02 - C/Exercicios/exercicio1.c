#include <stdio.h>

int main() {
    //Escreva um programa que solicita um número inteiro e informe se ele é par ou ímpar.
    int numero;

    printf("Digite um número inteiro: ");
    scanf("%d", &numero);

    if (numero % 2 == 0) {
        printf("O número %d é par.\n", numero);
    } else {
        printf("O número %d é ímpar.\n", numero);
    }

    return 0;
}