<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
</head>
<body>

<form action="/login" method="post">

    <span>${requestScope.message}</span>

    <br>

    <label for="nomedeUsuario">Nome de Usuario</label>
    <input type="text" id="username" name="username">

    <br>

    <label for="senha">Senha</label>
    <input type="password" id="password" name="password">

    <button type="submit">Login</button>

</form>

</body>
</html>