<!DOCTYPE html>
<html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<meta http-equiv="Content-Type" content="text/html" charset=UTF-8>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
</head>
<body>
  <div>
    <h1>vinhos</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Preço</th>
            <th>Descrição</th>
            <th>Actions</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="vinho" items="${vinhos}">
            <tr>
                <td>${vinho.idVinho}</td>
                <td>${vinho.nome}</td>
                <td>${vinho.preco}</td>
                <td>${vinho.descricao}</td>
                <td>
                    <form action="/delete-vinho" method="post">
                        <input type="hidden" id="idVinho" name="idVinho" value="${vinho.idVinho}">
                        <button type="submit">Delete</button>
                    </form>
                </td>
                <td>
                    <form action="/update-vinho" method="post">
                    <input type="hidden" id="idVinho" name="idVinho" value="${vinho.idVinho}">
                    <button type="submit">Update</button>
                    </form>
                </td>
            </tr>
         </c:forEach>
    </table>
  </div>
</body>
</html>