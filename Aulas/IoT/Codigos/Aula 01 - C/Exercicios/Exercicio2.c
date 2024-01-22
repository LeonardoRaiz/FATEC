//Faça um programa que receba três notas, calcule e mostre a média aritmética entre elas.

#include <stdio.h>

int main() {
    float nota1, nota2, nota3, media;

    printf("Digite as três notas: ");
    scanf("%f%f%f", &nota1, &nota2, &nota3);

    media = (nota1 + nota2 + nota3) / 3;

    printf("A média aritmética é: %.2f\n", media);

    return 0;
}