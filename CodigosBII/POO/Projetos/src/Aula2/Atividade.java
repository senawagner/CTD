package Aula2;

import java.util.Scanner;

public class Atividade {

    public static void main(String[] arg) {

     Scanner entrada = new Scanner(System.in);
     String nome = entrada.nextLine();
     String sobrenome = entrada.nextLine();

     String dia = entrada.nextLine();
     String mes = entrada.nextLine();
     String ano = entrada.nextLine();


     char inicialN = nome.charAt(0);
     char inicialS = sobrenome.charAt(0);

     System.out.printf("%s %s (%c.%c.) nasceu em %s/%s/%s", nome, sobrenome, inicialN, inicialS, dia, mes, ano);


    }

}
