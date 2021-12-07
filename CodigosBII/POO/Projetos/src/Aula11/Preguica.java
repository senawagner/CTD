package Aula11;

public class Preguica extends App {
    public Preguica(String nome, int idade){
        super(nome,idade);
    }

    @Override
    public void emitirSom() {
        System.out.println("yawn");
    }

    public void subirArvore() {
        System.out.println("subindo");
    }



}
