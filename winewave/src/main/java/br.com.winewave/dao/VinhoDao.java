package br.com.winewave.dao;

import br.com.winewave.config.ConnectionPoolConfig;
import br.com.winewave.model.Vinho;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class VinhoDao {

    /**
     *Método responsavel por cadastrar os vinhos.
     * * @param vinho
     */
    public void createVinho(Vinho vinho) {
        String SQL = "INSERT INTO VINHO  (PRECO_VINHO, NOME_VINHO, DESCRICAO, IMAGE) VALUES (?,?,?,?)";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, String.valueOf(vinho.getPreco()));
            preparedStatement.setString(2, vinho.getNome());
            preparedStatement.setString(3, vinho.getDescricao());
            preparedStatement.setString(4, vinho.getImage());
            preparedStatement.execute();

            System.out.println("success in insert vinho");

            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");
            System.out.println("Error: "+ e.getMessage());

        }
    }

    /**
     * Método que lista os vinhos cadastrados.
     * @return
     */
    public List<Vinho> findAllVinhos() {

        String SQL = "SELECT * FROM VINHO";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Vinho> vinhos = new ArrayList<>();

            while (resultSet.next()) {

                String idVinho = resultSet.getString("ID_VINHO");
                double preco = Double.parseDouble(resultSet.getString(String.valueOf("PRECO_VINHO")));
                String nome = resultSet.getString("NOME_VINHO");
                String descricao = resultSet.getString("DESCRICAO");
                String image = resultSet.getString("IMAGE");

                Vinho vinho = new Vinho(nome, idVinho,preco, descricao, image);

                vinhos.add(vinho);

            }

            System.out.println("success in select * vinho");

            connection.close();

            return vinhos;

        } catch (Exception e) {

            System.out.println("fail in database connection");
            System.out.println("Error: "+ e.getMessage());

            return Collections.emptyList();

        }
    }


    /**
     * Método para excluir os vinhos.
     * @param idVinho
     */
    public void deleteVinhoById(String idVinho) {

        String SQL = "DELETE VINHO WHERE ID_VINHO = ?";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setString(1, idVinho);
            preparedStatement.execute();

            System.out.println("success on delete wine with id: " + idVinho);

            connection.close();

        } catch (Exception e) {
            System.out.println("fail in database connection");
            System.out.println("Error: "+ e.getMessage());
        }

    }
    /**
     * Método edição de vinhos cadastrados.
     * @param vinho
     */
    public void updateVinho(Vinho vinho) {
        String SQL = "UPDATE VINHO SET PRECO_VINHO = ?, NOME_VINHO = ?,DESCRICAO = ?, IMAGE = ? WHERE ID_VINHO = ?";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);


            preparedStatement.setString(1, String.valueOf(vinho.getPreco()));
            preparedStatement.setString(2, vinho.getNome());
            preparedStatement.setString(3, vinho.getDescricao());
            preparedStatement.setString(4, vinho.getImage());
            preparedStatement.setString(5, vinho.getIdVinho());
            preparedStatement.execute();

            System.out.println("success in update wine");

            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");
            System.out.println("Error: " + e.getMessage());
        }

    }
}


