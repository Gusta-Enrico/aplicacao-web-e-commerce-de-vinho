<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="/webjars/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
    <title>Criar Vinho</title>
    <style>
        body {
            background: linear-gradient(to right, #d10656, #380117);
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
            font-family: 'Inter', sans-serif;
            color: #000000;
        }

        header {
            background-color: #343a40;
            box-shadow: 0 4px 2px -2px rgba(0, 0, 0, 0.1);
            padding: 10px;
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
        }

        .container-fluid {
            margin-top: 60px;
        }

        .container {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 100%;
        }

        .container h2 {
            color: #380117;
        }

        .mb-3 {
            margin-bottom: 15px;
        }

        .form-label {
            font-weight: bold;
        }

        input[type="text"],
        input[type="file"] {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            margin-top: 5px;
        }

        button[type="submit"] {
            background-color: #da5b74;
            border: none;
            padding: 10px;
            border-radius: 5px;
            color: #000000;
            cursor: pointer;
        }

        button[type="submit"]:hover {
            background-color: #c14f6c;
        }
        .center-card {
            display: flex;
            justify-content: center;
        }
    </style>
</head>




    <div class="row">
        <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
            <div class="position-sticky pt-3 sidebar-sticky">
            </div>
        </nav>

        <div class="center-card">
            <div class="container">
                <form action="/create-wine" method="post" enctype="multipart/form-data">
                    <h2>CRIAR VINHO</h2>

                    <div class="mb-3">
                        <label class="form-label">Vinho Nome</label>
                        <input class="form-control" type="text" name="wine-name" id="wine-name" value="${param.id}">
                        <input type="hidden" name="wine-id" id="wine-id" value="${vinho.id}">
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Preco</label>
                        <input class="form-control" type="text" name="wine-preco" id="wine-preco"
                               value="${vinho.preco}">
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Descricao</label>
                        <input class="form-control" type="text" name="wine-desc" id="wine-desc"
                               value="${vinho.descricao}">
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Imagem</label>
                        <input class="form-control" type="file" name="wine-image" id="wine-image"
                               value="${vinho.image}">
                    </div>

                    <button type="submit">ENVIAR</button>
                </form>
            </div>
        </div>
    </div>
</html>

