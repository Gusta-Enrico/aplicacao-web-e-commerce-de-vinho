<!DOCTYPE html>
<html>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta http-equiv="Conten-Type" content="text/html" charset=UTF-8>
    <link href="/webjars/bootstrap/5.3.1/css/bootstrap.min.css" rel="stylesheet">
    <title>Dashboard</title>
</head>
<body>
  <div>
      <div class="container">
    <c:if test="${sessionScope.usuarioLogado != null}">
            <span>${sessionScope.loggedUser}</span>
            <a href="/logout">Logout</a>
    </c:if>

    <h1>vinhos</h1>
    <table class="table">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Preço</th>
            <th>Descrição</th>

            <c:if test="${sessionScope.usuarioLogado != null}">
            <th>Actions</th>
            </c:if>

        </tr>
        <c:forEach var="vinho" items="${vinhos}">
            <tr>
                <td>${vinho.idVinho}</td>
                <td>${vinho.nome}</td>
                <td>${vinho.preco}</td>
                <td>${vinho.descricao}</td>

                <c:if test="${sessionScope.usuarioLogado != null}">

                    <td>
                    <form action="/delete-vinho" method="post">
                        <input type="hidden" id="idVinho" name="idVinho" value="${vinho.idVinho}">
                        <button type="submit">Delete</button>
                        <span> | </span>
                        <button><a href="index.jsp?id=${vinho.idVinho}&nome=${vinho.nome}preco=${vinho.preco}descricao={vinho.descricao}">Update</a></button>
                    </form>
                    </td>

                  </c:if>

            </tr>
         </c:forEach>
    </table>
  </div>
</body>
</html>