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

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa","sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, vinho.getNome());
            preparedStatement.execute();

            System.out.println("success in insert vinho");

            connection.close();

        } catch (Exception e){

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

                String wineName = resultSet.getString("Vinho: ");
                double winePreco = Double.parseDouble(resultSet.getString(String.valueOf(100.00)));
                String wineDesc = resultSet.getString("Descrição: ");

                Vinho vinho = new Vinho(wineName, winePreco, wineDesc);

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

}
