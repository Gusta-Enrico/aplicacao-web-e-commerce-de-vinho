package br.com.winewave.model;

public class Vinho {

    private String nome;
    private String idVinho;
    private double preco;
    private String descricao;
    private String image;

    public Vinho(String nome, String idVinho, double preco, String descricao) {
        this.nome = nome;
        this.idVinho = idVinho;
        this.preco = preco;
        this.descricao = descricao;
    }

    public Vinho(String nome, String idVinho, double preco, String descricao, String image) {
        this.nome = nome;
        this.idVinho = idVinho;
        this.preco = preco;
        this.descricao = descricao;
        this.image = image;
    }

    public String getNome() {
        return nome;
    }

    public String getIdVinho() {
        return idVinho;
    }

    public double getPreco() {
        return preco;
    }

    public String getDescricao() {
        return descricao;
    }

    public String getImage() {
        return image;
    }
}
