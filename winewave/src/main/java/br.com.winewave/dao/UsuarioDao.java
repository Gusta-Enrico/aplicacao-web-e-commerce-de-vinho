package br.com.winewave.dao;

import br.com.winewave.config.ConnectionPoolConfig;
import br.com.winewave.model.Usuario;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/*
* Script do BD
* CREATE TABLE USR (ID INT PRIMARY KEY AUTO_INCREMENT, USUARIO VARCHAR(255), SENHA VARCHAR(255));
* INSERT INTO USR (USUARIO, SENHA) VALUES ('your-user', 'your-password');    ** Para inserir um usuario no BD **
* */

public class UsuarioDao {

    public boolean verificarCredenciais(Usuario usuario) {

        String SQL = "SELECT * FROM USR WHERE USUARIO = ?";

        try{
            Connection connection = ConnectionPoolConfig.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1,usuario.getNomedeusuario());
            ResultSet resultSet = preparedStatement.executeQuery();

            System.out.println("Sucess in select username");

            while (resultSet.next()){
                String senha = resultSet.getString("senha");

                if (senha.equals(usuario.getSenha())){
                    return true;
                }
            }

            connection.close();
            return false;

        }catch (Exception e){

            System.out.println("Error: " + e.getMessage());
            return false;
        }


    }
}
