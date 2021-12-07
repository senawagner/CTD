package Aula3.Mesa_de_trabalho;

       //MESA1 - Mario Braga, Vinícius Alexandre, Thiago Maurat, Pedro Henrique Cardoso,
       //João Rocha, Alfredo Gutemberg, Wagner Sena.

        /* DESAFIO 1 - Implemente um programa que nos permita exibir os primeiros &quot;n&quot; números primos
        pelo console, onde &quot;n&quot; é um valor numérico inserido pelo usuário. Por exemplo:
        Com n = 7, o que o programa deve retornar é &quot;Os primeiros 7 números primos são:
        2, 3, 5, 7, 11, 13, 17&quot;.*/


import java.util.Scanner;

public class Desafio1 {
    public static boolean isPrime(int n) {
        // Variável de controle
        int qtdDivisores = 0;

        // Lógica para analisar quantos divisores tem o número
        for (int i = 1; i <= n; i++) {
            if (n % i == 0) {
                qtdDivisores++;
            }
        }

        // Impressão do resultado
        if (qtdDivisores > 2 || qtdDivisores == 1 ) {
            return false;
        } else {
            return true;
        }

    }

    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        System.out.println("Digite o número:");
        int n = entrada.nextInt();
        int cont = 0;
        int aux = 1;
        while (cont < n) {
            if (isPrime(aux)) {
                System.out.println(aux);
                cont++;
            }
            aux++;
        }


    }
}

