package Aula11;

public class Cachorro extends App {
    public Cachorro(String nome, int idade){
        super(nome,idade);
    }

    @Override
    public void emitirSom() {
        System.out.println("Au au");
    }

    public void correr() {
        System.out.println("correndo");
    }



}
