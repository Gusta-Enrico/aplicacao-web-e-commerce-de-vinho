    <html>

    <head>
        <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
        <meta http-equiv="Content-Type" content="text/html" charset=UTF-8>
        <link href="/webjars/bootstrap/5.3.0/css/botstrap.min.css" rel="stylesheet">
    </head>
    <header class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
        <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3 fs-6" href="#">Winewave</a>
        <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <input class="form-control form-control-dark w-100 rounded-0 border-0" type="text" placeholder="Search" aria-label="Search">
        <div class="navbar-nav">
            <div class="nav-item text-nowrap">
                <a class="nav-link px-3" href="logout">Sign out</a>
            </div>
        </div>
    </header>
    <div>
        <div class="container-fluid">
            <c:if test="${sessionScope.usuarioLogado != null}">
            <span>${sessionScope.loggedUser}</span>
            <a href="/logout">Logout</a>
            </c:if>
            <div class="row">
                <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
                    <div class="position-sticky pt-3 sidebar-sticky">

                        <ul class="nav flex-column">
                            <li class="nav-item">
                                <a class="nav-link" aria-current="page" href="#"><span data-feather="user" class="align-text-bottom"></span>
                                    <c:if test="${sessionScope.usuarioLogado != null}">
                                        <th>Actions</th>
                                    </c:if>
                                </a>
                            </li>
                        </ul>

                        <hr>
                        <ul class="nav flex-column">
                            <li class="nav-item">
                                <a class="nav-link" aria-current="page" href="/admin/find-all-vinhos"><span data-feather="home" class="align-text-bottom"></span> Home </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="admin"><span data-feather="file-text" class="align-text-bottom"></span> Novo vinho</a>
                            </li>
                        </ul>

                    </div>
                </nav>
<body>

<form action="/create-wine" method="post" enctype="multipart/form-data" class="container">
    <h2>CRIAR VINHO</h2>

    <div class="mb=3">
        <label class="form-label"> Vinho nome </label>
        <input  class="form-control" type="text" name="wine-name" id="wine-name" value="${param.id}">
        <input type="hidden" name="wine-id" id="wine-id" value="${vinho.id}">
    </div>
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

    <label>Image</label>
    <input type="file" name = "wine-image" id="wine-image" value="${vinho.image}">
    <br><br>

    <button type="submit">ENVIAR</button>

</form>
</body>
</html>