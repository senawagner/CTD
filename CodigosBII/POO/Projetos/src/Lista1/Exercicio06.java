package Lista1;
/*Faça um programa que peça para n pessoas a sua idade, ao final o
programa deverá verificar se a média de idade da turma varia entre 0 e
25, 26 e 60 e maior que 60; e então, dizer se a turma é jovem, adulta ou
idosa, conforme a média calculada.*/

import java.util.Scanner;

    public class Exercicio06<idade> {
        public static void main(String[] args) {
            Scanner leitor = new Scanner(System.in);

            int contador = 0;
            int somaIdade = 0;
            double mediaIdade =0;
            int idade =0;
            System.out.println("*********************************************************************");
            System.out.println("Para sair do programa, digite '0'.");
            System.out.println("*********************************************************************");
            do {
                do{
                    System.out.println("Digite a idade de cada componente da turma:");
                    idade = leitor.nextInt();
                    if(idade<0){
                        System.out.println("Digite uma idade válida!");
                    }
                }while (idade<0);

                if (idade == 0){
                    break;
                }
                contador = contador + 1; //contador++
                somaIdade = somaIdade + idade; //somaIdade += idade
                mediaIdade = somaIdade / contador;
                      }while (idade > 0);

            System.out.println("A média das idades é: " + mediaIdade);


        }

}
