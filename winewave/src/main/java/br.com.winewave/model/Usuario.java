package br.com.winewave.model;

public class Usuario {

    private String nomedeusuario;
    private String senha;

    public Usuario(String nomedeusuario, String senha) {
        this.nomedeusuario = nomedeusuario;
        this.senha = senha;
    }
    public String getNomedeusuario() {
        return nomedeusuario;
    }

    public String getSenha() {
        return senha;
    }
}
