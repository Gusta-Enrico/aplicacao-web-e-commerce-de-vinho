package br.com.winewave.model;

public class Vinho {

    private String Nome;
    private String id_vinho;
    private double preco;
    private String descricao;

    public Vinho(String Nome, double preco, String descricao) {
        this.Nome = Nome;
        this.preco = preco;
        this.descricao = descricao;
    }


    public Vinho(String nome, String id_vinho) {
        Nome = nome;
        this.id_vinho = id_vinho;
    }

    public String getNome() {
        return Nome;
    }

    public String getId_vinho() {

        return id_vinho;
    }


    public double getPreco() {
        return preco;
    }
    public void setPreco(double preco) {
        this.preco = preco;
    }

    public String getDescricao() {
        return descricao;
    }

}
