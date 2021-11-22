package Aula11;

public abstract class App {
    private String nome;
    private int idade;

    public App(String nome, int idade){
        this.nome = nome;
        this.idade = idade;
    }

    public abstract void emitirSom();


}
