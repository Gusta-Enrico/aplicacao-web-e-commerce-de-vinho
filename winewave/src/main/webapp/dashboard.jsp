<!DOCTYPE html>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
</head>
<body>
  <div>
    <h1>Cars</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
        </tr>
        <c:forEach var="vinho" items="${vinhos}">
            <tr>
                <td></td>
                <td>${vinho.name}</td>
                <td>${vinho.preco}</td>
                <td>${vinho.descricao}</td>
            </tr>
         </c:forEach>
    </table>
  </div>
</body>
</html>