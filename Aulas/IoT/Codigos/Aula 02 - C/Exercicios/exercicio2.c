#include <stdio.h>

int main() {
    //Escreva um programa que solicita o nome e a idade de uma pessoa e informe se ela é maior de idade (18 anos ou mais) ou não.
    char nome[100];
    int idade;

    printf("Digite seu nome: ");
    scanf("%s", nome);

    printf("Digite sua idade: ");
    scanf("%d", &idade);

    if (idade >= 18) {
        printf("%s, você é maior de idade.\n", nome);
    } else {
        printf("%s, você não é maior de idade.\n", nome);
    }

    return 0;
}
