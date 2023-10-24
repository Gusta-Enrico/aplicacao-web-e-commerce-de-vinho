package br.com.winewave.model;

public class Vinho {

    private String Nome;
    private int id_vinho;
    private double preco;
    private String descricao;

    public String getNome() {
        return Nome;
    }

    public void setNome(String nome) {
        Nome = nome;
    }

    public int getId_vinho() {
        return id_vinho;
    }

    public void setId_vinho(int id_vinho) {
        this.id_vinho = id_vinho;
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

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }
}
