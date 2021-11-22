package Aula11;

public class Cavalo extends App {
    public Cavalo(String nome, int idade){
        super(nome,idade);
    }

    @Override
    public void emitirSom() {
        System.out.println("Hiin in in");
    }

    public void correr() {
        System.out.println("correndo");
    }



}
