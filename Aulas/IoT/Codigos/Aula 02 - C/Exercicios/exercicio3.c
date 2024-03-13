#include <stdio.h>

int main() {
    //Escreva um programa que solicita a altura e o peso de uma pessoa e informe se ela está abaixo do peso, no peso normal ou acima do peso, utilizando o Índice de Massa Corporal (IMC).
    float altura, peso, imc;

    printf("Digite sua altura em metros: ");
    scanf("%f", &altura);

    printf("Digite seu peso em quilos: ");
    scanf("%f", &peso);

    imc = peso / (altura * altura);

    if (imc < 18.5) {
        printf("Você está abaixo do peso.\n");
    } else if (imc >= 18.5 && imc <= 24.9) {
        printf("Você está no peso normal.\n");
    } else {
        printf("Você está acima do peso.\n");
    }

    return 0;
}
