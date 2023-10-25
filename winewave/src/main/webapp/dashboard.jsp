<!DOCTYPE html>
<html>
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
            <th>Actions</th>
        </tr>
        <c:forEach var="vinho" items="${vinhos}">
            <tr>
                <td></td>
                <td>${vinho.id}</td>
                <td>${vinho.name}</td>
                <td>${vinho.preco}</td>
                <td>${vinho.descricao}</td>

                <form action="/delete-vinho" method="post">
                    <input type="hidden" id="id" name="id" value="${vinho.id}">
                    <button type="submit">Delete</button>
                </form>
            </tr>
         </c:forEach>
    </table>
  </div>
</body>
</html>