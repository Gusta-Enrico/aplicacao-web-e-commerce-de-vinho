package br.com.winewave.dao;

import br.com.winewave.model.Vinho;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class VinhoDao {

    public void createVinho(Vinho vinho) {
        String SQL = "INSERT INTO VINHO  (PRECO_VINHO, NOME_VINHO, DESCRICAO_VINHO) VALUES (?,?,?)";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, String.valueOf(vinho.getPreco()));
            preparedStatement.setString(2, vinho.getNome());
            preparedStatement.setString(3, vinho.getDescricao());
            preparedStatement.execute();

            System.out.println("success in insert vinho");

            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");

        }
    }

    public List<Vinho> findAllVinhos() {

        String SQL = "SELECT * FROM VINHO";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Vinho> vinhos = new ArrayList<>();

            while (resultSet.next()) {

                String wineId = resultSet.getString("id");
                String wineName = resultSet.getString("Vinho: ");
                double winePreco = Double.parseDouble(resultSet.getString(String.valueOf("Preço: ")));
                String wineDesc = resultSet.getString("Descrição: ");

                Vinho vinho = new Vinho(wineId, wineName);

                vinhos.add(vinho);

            }

            System.out.println("success in select * vinho");

            connection.close();

            return vinhos;

        } catch (Exception e) {

            System.out.println("fail in database connection");

            return Collections.emptyList();

        }
    }

    public void deleteVinhoById(String vinhoId) {

        String SQL = "DELETE VINHO WHERE ID = ?";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setString(1, vinhoId);
            preparedStatement.execute();

            System.out.println("success on delete car with id: " + vinhoId);

            connection.close();

        } catch (Exception e) {
            System.out.println("Falha na conexão do banco de dados!");
        }

    }

    public void updateVinho(Vinho vinho) {
        String SQL = "UPDATE VINHO SET NOME_VINHO = ?,PRECO_VINHO = ? ,DESCRICAO = ? WHERE ID = ?";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, vinho.getNome());
            preparedStatement.setString(2, vinho.getId_vinho());
            preparedStatement.setString(3, vinho.getDescricao());
            preparedStatement.execute();

            System.out.println("success in update wine");

            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");
            System.out.println("Error: " + e.getMessage());
        }

    }
}


