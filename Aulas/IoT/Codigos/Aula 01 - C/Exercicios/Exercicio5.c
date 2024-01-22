// Faça um programa que receba o salário de um funcionário e o percentual de aumento, calcule e mostre o valor do aumento e o novo salário

#include <stdio.h>

int main() {
    float salario, percentual, aumento, novo_salario;

    printf("Digite o salário atual: ");
    scanf("%f", &salario);

    printf("Digite o percentual de aumento: ");
    scanf("%f", &percentual);

    aumento = salario * percentual / 100;
    novo_salario = salario + aumento;

    printf("O valor do aumento é: R$ %.2f\n", aumento);
    printf("O novo salário é: R$ %.2f\n", novo_salario);

    return 0;
}
