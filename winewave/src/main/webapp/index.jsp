    <html>
<body>
<h2>CRIAR VINHO</h2>

<form action="/create-wine" method="post">


    <input type="hidden" name="wine-id" id="wine-id" value="${vinho.id}">
    <br><br>

    <label>Vinho:</label>
    <input type="text" name="wine-name" id="wine-name" value="${vinho.nome}">
    <br><br>

    <label>Preco</label>
    <input type="text" name="wine-preco" id="wine-preco" value="${vinho.preco}">
    <br><br>

    <label>Descricao</label>
    <input type="text" name="wine-desc" id="wine-desc" value"${vinho.descricao}">
    <br><br>

    <button type="submit">ENVIAR</button>

</form>
</body>
</html>