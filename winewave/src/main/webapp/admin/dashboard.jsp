<!DOCTYPE html>
<html>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
    /* Add your custom styles here */
    .custom-header {
        background: linear-gradient(to right, #380117, #380117);
        padding: 0px;
        color: white;
    }

    .navbar {
        background: linear-gradient(to right, #380117, #5e0126, #380117);
        padding: 10px;
        color: white;
    }

    .sidebar .nav-link {
        font-weight: 500;
        color: #380117;
    }

    .sidebar .nav-link.active {
        color: #380117;
    }
</style>
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta http-equiv="Content-Type" content="text/html" charset=UTF-8>
    <link href="/webjars/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/dashboard.css" rel="stylesheet">
    <link href="/css/style.css" rel="stylesheet">
    <title>Wine wave | Dashboard</title>
</head>
<body>
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
        <c:if test="${sessionScope.loggedUser != null}">
            <span>${sessionScope.loggedUser}</span>
            <a href="/logout">Logout</a>
        </c:if>
        <div class="row">
            <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
                <div class="position-sticky pt-3 sidebar-sticky">

                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link" aria-current="page" href="#"><span data-feather="user" class="align-text-bottom"></span>
                                <c:if test="${sessionScope.loggedUser != null}">
                                    <th>Actions</th>
                                </c:if>
                            </a>
                        </li>
                    </ul>

                    <hr>
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link" aria-current="page" href="/admin/find-all-vinhos""><span data-feather="home" class="align-text-bottom"></span> Home </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/admin/index.jsp"><span data-feather="file-text" class="align-text-bottom"></span> Novo vinho</a>
                        </li>
                    </ul>

                </div>
            </nav>
            <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
                <h2>vinhos</h2>
                <div class="table-responsive">
                    <table class="table table-striped table-sm">
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Preço</th>
                            <th>Descrição</th>



                        </tr>
                        <c:forEach var="vinho" items="${vinhos}">
                            <tr>
                                <td>${vinho.idVinho}</td>
                                <td>${vinho.nome}</td>
                                <td>${vinho.preco}</td>
                                <td>${vinho.descricao}</td>

                                <c:if test="${sessionScope.loggedUser != null}">

                                    <td>
                                        <form action="/delete-vinho" method="post">
                                            <input type="hidden" id="idVinho" name="idVinho" value="${vinho.idVinho}">
                                            <button type="submit" class="btn btn-primary">Delete</button>
                                            <span> | </span>
                                            <button><a href="index.jsp?id=${vinho.idVinho}&nome=${vinho.nome}preco=${vinho.preco}descricao={vinho.descricao}">Update</a></button>
                                        </form>
                                    </td>

                                </c:if>

                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </main>
        </div>

    </div>
    <script src="http://localhost:8080/webjars/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
    <script src="/js/feather.min.js"></script>
    <script src="/js/dashboard.js"></script>

</body>
</html>