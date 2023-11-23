<!DOCTYPE html>
<html lang="pt-br">
<head>
    <title>Carrinho de Compras</title>
    <link href="/webjars/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
    <style>

        .item-details .col-md-2 {
            max-width: 100px;
        }

        body {
            background-color: #eee;
        }

        .container {
            height: 100%;
            padding: 5%;
        }

        .card {
            background-color: #fff;
            border-radius: 15px;
            margin-bottom: 20px;
        }

        .card-body {
            padding: 20px;
        }

        .card img {
            max-width: 100%;
            border-radius: 15px;
        }

        .custom-text-color {


            color: #000; /* ou qualquer outra cor desejada */
        }

        .item-details {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .item-quantity {
            display: flex;
            align-items: center;
        }

        .item-quantity button,
        .item-quantity input {
            margin: 0 5px;
        }

        .item-actions button {
            margin-top: 10px;
        }

        .total {
            font-size: 24px;
            font-weight: bold;
            color: #da5b74;
            text-align: right;
        }

        .btn-continue-shopping,
        .btn-checkout {
            width: 100%;
            margin-top: 10px;
        }
    </style>
</head>
<body>
<section class="h-100">
    <div class="container h-100 py-5">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-10">
                <h3 class="fw-normal mb-4 text-black">Detalhes da Compra</h3>

                <div class="card rounded-3 mb-4">
                    <div class="card-body p-4">
                        <div class="item-details">
                            <div class="col-md-2">
                                <a href="a">
                                    <img src="https://vinomundi.com.br/wp-content/uploads/2021/10/Alion-Vega-Sicilia.jpg"
                                         class="img-fluid rounded-3" alt="Vinho Alion">
                                </a>
                            </div>
                            <div class="col-md-10 text-left">
                                <h4 class="item-name"><a href="m" class="text-decoration-nome text-danger">Vinho Alion</a></h4>
                                <p class="item-description mb-3">
                                    Este é o vinho espanhol Alion, extremamente saboroso, rico e exuberante. Uma experiência sensorial única que combina tradição e qualidade.
                                </p>
                                <div class="def-number-input number-input safari_only">
                                    <button onclick="this.parentNode.querySelector('input[type=number]').stepDown()"
                                            class="minus">-</button>
                                    <input class="quantity fw-bold text-black" min="0" name="quantity" value="1"
                                           type="number">
                                    <button onclick="this.parentNode.querySelector('input[type=number]').stepUp()"
                                            class="plus">+</button>
                                </div>

                                    <div class="text-right mt-2">
                                        <small class="text-dark">Valor Item R$ 1.434,35</small>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="card">
                    <div class="card-body">
                        <form action="/home.jsp" method="post">
                        <button class="btn btn-dark">Continuar Comprando</button>
                        <button class="btn btn-outline-dark">Finalizar Compra</button>
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>
</body>
</html>
