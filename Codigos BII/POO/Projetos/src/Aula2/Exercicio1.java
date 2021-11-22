package Aula2;

import javax.sound.midi.Soundbank;
import java.sql.SQLOutput;
import java.util.Scanner;

public class Exercicio1 {
    public static void main(String[] args) {
        // Inicialização do Scanner
        Scanner scanner = new Scanner(System.in);

        // Input do número pelo usuário
        System.out.println("Digite o número a ser analisado:");
        int n = scanner.nextInt();

        // Chamada da função
        isPrime(n);
    }

    public static void isPrime(int n) {
        // Variável de controle
        int qtdDivisores = 0;

        // Lógica para analisar quantos divisores tem o número
        for (int i = 1; i <= n; i++) {
            if (n % i == 0) {
                qtdDivisores++;
            }
        }

        // Impressão do resultado
        if (qtdDivisores > 2) {
            System.out.println("O número informado não é primo");
        } else {
            System.out.println("O número informado é primo");
        }

    }

}