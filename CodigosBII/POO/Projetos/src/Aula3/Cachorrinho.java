// package Aula03_T2;

// import java.util.Locale;
// import java.util.Scanner;

// public class Cachorrinho {

//     public static int quantPacotes(float quantidade){
//         float kilo = 0.0f;
//         int cont = 0;
//         Scanner entrada2 = new Scanner(System.in);
//         entrada2.useLocale(Locale.US);

//         while(kilo < quantidade){
//             System.out.println("Digite o peso do pacote: ");
//             float pacote = entrada2.nextFloat();
//             kilo = kilo + pacote;
//             cont++;

//         }
//         return cont;
//     }



//     public static void main(String[] args) {

//         Scanner entrada = new Scanner(System.in);
//         System.out.println("Digite o nome do cachorrinho: ");
//         String nome = entrada.nextLine();

//         System.out.println("Digite a quantidade de ração: ");

//         // opçao 1
//         //String quantAux = entrada.nextLine();
//         //float quantidade = Float.parseFloat(quantAux);

//         //opção 2
//         entrada.useLocale(Locale.US);
//         float quantidade = entrada.nextFloat();

//         System.out.println("Você vai precisar de " +  quantPacotes(quantidade) + " pacotes");

//     }
// }