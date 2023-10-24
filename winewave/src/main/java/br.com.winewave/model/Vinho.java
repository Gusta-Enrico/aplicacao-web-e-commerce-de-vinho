package br.com.winewave.model;

public class Vinho {

    private String Nome;
    private int id_vinho;
    private double preco;
    private String descricao;

    public Vinho(String Nome, double preco, String descricao) {
        this.Nome = Nome;
        this.preco = preco;
        this.descricao = descricao;
    }



    public String getNome() {
        return Nome;
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

    public String getDescricao() {
        return descricao;
    }

}
