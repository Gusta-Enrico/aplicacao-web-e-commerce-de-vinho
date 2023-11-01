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

    /**
     *Método responsavel por cadastrar os vinhos.
     * * @param vinho
     */
    public void createVinho(Vinho vinho) {
        String SQL = "INSERT INTO VINHO  (PRECO_VINHO, NOME_VINHO, DESCRICAO) VALUES (?,?,?)";

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

    /**
     * Método que lista os vinhos cadastrados.
     * @return
     */
    public List<Vinho> findAllVinhos() {

        String SQL = "SELECT * FROM VINHO";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Vinho> vinhos = new ArrayList<>();

            while (resultSet.next()) {

                String idVinho = resultSet.getString("ID_VINHO");
                double preco = Double.parseDouble(resultSet.getString(String.valueOf("PRECO_VINHO")));
                String nome = resultSet.getString("NOME_VINHO");
                String descricao = resultSet.getString("DESCRICAO");

                Vinho vinho = new Vinho(nome, idVinho,preco, descricao);

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


    /**
     * Método para excluir os vinhos.
     * @param idVinho
     */
    public void deleteVinhoById(String idVinho) {

        String SQL = "DELETE VINHO WHERE ID_VINHO = ?";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setString(1, idVinho);
            preparedStatement.execute();

            System.out.println("success on delete wine with id: " + idVinho);

            connection.close();

        } catch (Exception e) {
            System.out.println("fail in database connection");
        }

    }
    /**
     * Método edição de vinhos cadastrados.
     * @param vinho
     */
    public void updateVinho(Vinho vinho) {
        String SQL = "UPDATE VINHO SET PRECO_VINHO = ?, NOME_VINHO = ?,DESCRICAO = ? WHERE ID_VINHO = ?";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, vinho.getNome());
            preparedStatement.setString(2, String.valueOf(vinho.getPreco()));
            preparedStatement.setString(3, vinho.getIdVinho());
            preparedStatement.setString(4, vinho.getDescricao());
            preparedStatement.execute();

            System.out.println("success in update wine");

            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");
            System.out.println("Error: " + e.getMessage());
        }

    }
}


