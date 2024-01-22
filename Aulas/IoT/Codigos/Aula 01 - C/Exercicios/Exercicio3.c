// Faça um programa que receba três notas, calcule e mostre a média ponderada entre ela

#include <stdio.h>

int main() {
    float nota1, nota2, nota3, media;

    printf("Digite as três notas: ");
    scanf("%f%f%f", &nota1, &nota2, &nota3);

    media = (nota1 * 5 + nota2 * 3 + nota3 * 2) / 10;

    printf("A média ponderada é: %.2f\n", media);

    return 0;
}