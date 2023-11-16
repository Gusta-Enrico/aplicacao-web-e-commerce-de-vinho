<!-- loginCliente.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" data-bs-theme="dark">
<head>
</head>
<body>
    <div class="card">
        <div class="card-content">
            <h1 class="h3 mb-3 fw fw-inter custom-text-color">Please sign in</h1>
            <form action="/loginCliente" method="post">
                <div class="form-floating">
                    <input type="email" id="email" name="email" placeholder="Email" required>
                    <label for="email">Email</label>
                </div>
                <div class="form-floating">
                    <input type="password" id="senha" name="senha" placeholder="Senha" required>
                    <label for="senha">Senha</label>
                </div>
                <button class="btn btn-primary w-100 py-2" type="submit">Login</button>
            </form>

            <form action="/cadastroCliente" method="get">
                <button class="btn btn-primary w-100 py-2" type="submit">Cadastro</button>
            </form>
        </div>
    </div>
</body>
</html>
