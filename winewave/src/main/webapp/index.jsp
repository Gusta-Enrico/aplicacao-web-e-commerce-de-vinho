    <html>

    <head>
        <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
        <meta http-equiv="Content-Type" content="text/html" charset=UTF-8>
        <link href="/webjars/bootstrap/5.3.0/css/botstrap.min.css" rel="stylesheet">
    </head>
<body>

<form action="/create-wine" method="post" class="container">
    <h2>CRIAR VINHO</h2>


    <input type="hidden" name="wine-id" id="wine-id" value="${vinho.id}">
    <br><br>

    <label>Vinho:</label>
    <input type="text" name="wine-name" id="wine-name" value="${vinho.nome}">
    <br><br>

    <label>Preco</label>
    <input type="text" name="wine-preco" id="wine-preco" value="${vinho.preco}">
    <br><br>

    <label>Descricao</label>
    <input type="text" name="wine-desc" id="wine-desc" value="${vinho.descricao}">
    <br><br>

    <button type="submit">ENVIAR</button>

</form>
</body>
</html>