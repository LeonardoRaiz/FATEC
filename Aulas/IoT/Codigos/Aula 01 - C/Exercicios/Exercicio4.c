
//Faça um programa que receba o salário de um funcionário, calcule e mostre o novo salário, sabendo-se que este sofreu um aumento de 25%.

#include <stdio.h>

int main() {
    float salario, novo_salario;

    printf("Digite o salário atual: ");
    scanf("%f", &salario);

    novo_salario = salario * 1.25;

    printf("O novo salário é: R$ %.2f\n", novo_salario);

    return 0;
}