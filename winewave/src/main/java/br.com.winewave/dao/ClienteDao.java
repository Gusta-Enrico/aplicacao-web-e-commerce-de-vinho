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

        try (Connection connection = ConnectionPoolConfig.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {

            preparedStatement.setString(1, email);

            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                if (resultSet.next()) {
                    Cliente cliente = new Cliente();
                    cliente.setIdCliente(String.valueOf(resultSet.getInt("ID_CLIENTE")));
                    cliente.setNome(resultSet.getString("NOME_CLI"));
                    cliente.setEmail(resultSet.getString("EMAIL"));
                    cliente.setSenha(resultSet.getString("SENHA"));

                    return cliente;
                }
            }

        } catch (SQLException e) {
            System.out.println("Fail in database connection");
            System.out.println("Error: " + e.getMessage());
        }

        return null;
    }
}
