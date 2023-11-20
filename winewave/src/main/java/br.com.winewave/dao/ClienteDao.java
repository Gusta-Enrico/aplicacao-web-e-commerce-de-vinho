package br.com.winewave.dao;

import br.com.winewave.config.ConnectionPoolConfig;
import br.com.winewave.model.Cliente;
import br.com.winewave.model.Usuario;

import java.sql.*;

public class ClienteDao {

    public boolean cadastrarCliente(Cliente cliente) {

        String sql = "INSERT INTO CLIENTE (NOME_CLI, EMAIL, SENHA) VALUES (?, ?, ?)";

        try {
            Connection connection = ConnectionPoolConfig.getConnection();


            PreparedStatement preparedStatement = connection.prepareStatement(sql);

            preparedStatement.setString(1, cliente.getNome());
            preparedStatement.setString(2, cliente.getEmail());
            preparedStatement.setString(3, cliente.getSenha());
            preparedStatement.execute();

            System.out.println("success in insert vinho");

            connection.close();


        } catch (SQLException e) {

            System.out.println("fail in database connection");
            System.out.println("Error: " + e.getMessage());
        }

        return false;
    }

    public Cliente buscarClientePorEmail(String email) {
        String sql = "SELECT * FROM CLIENTE WHERE EMAIL = ?";

        try {
            Connection connection = ConnectionPoolConfig.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);

            preparedStatement.setString(1, email);

           try (ResultSet resultSet = preparedStatement.executeQuery()) {
                if (resultSet.next()) {

                    String idcliente = resultSet.getString("ID_CLIENTE");
                    String nome = resultSet.getString("NOME_CLI");
                    String email_cli = resultSet.getString("EMAIL");
                    String senha = resultSet.getString("SENHA");

                    Cliente cliente = new Cliente(idcliente, nome, email_cli, senha);
                    return cliente;
                }
            }

        } catch (SQLException e) {
            System.out.println("Fail in database connection");
            System.out.println("Error: " + e.getMessage());
        }

        return null;
    }

    public boolean verificarCredenciais(Cliente cliente) {

        String SQL = "SELECT * FROM CLIENTE WHERE EMAIL = ?";

        try{
            Connection connection = ConnectionPoolConfig.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1,cliente.getEmail());
            ResultSet resultSet = preparedStatement.executeQuery();

            System.out.println("Sucess in select username");

            while (resultSet.next()){
                String senha = resultSet.getString("senha");

                if (senha.equals(cliente.getSenha())){
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
