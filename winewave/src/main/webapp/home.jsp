<!doctype html>
<html lang="en">
<head>
	
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="generator" content="">
	<meta name="theme-color" content="850437">
	<title>Winewave</title>
	
	<link href="/webjars/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
	<link href="/css/style-album.css" rel="stylesheet">
	
	<!-- link to default album template -->
	<link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/album/">

</head>
<body>

	<header>
		<div class="collapse bg-dark" id="navbarHeader">
			<div class="container">
				<div class="row">
					<div class="col-sm-8 col-md-7 py-4">
						<h4 class="text-white">About</h4>
						<p class="text-muted">Add some information about the album
							below, the author, or any other background context. Make it a few
							sentences long so folks can pick up some informative tidbits.
							Then, link them off to some social networking sites or contact
							information.</p>
					</div>

					<div class="col-sm-4 offset-md-1 py-4">
						<h4 class="text-red">Contact</h4>
						<ul class="list-unstyled">
							<li><a href="#" class="text-white">Siga-nos no Instagram</a></li>
							<li><a href="#" class="text-white">Siga-nos no Facebook</a></li>
							<li><a href="#" class="text-white">Fale conosco por E-mail</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="navbar navbar-dark bg-dark shadow-sm">
			<div class="container">
				<a href="#" class="navbar-brand d-flex align-items-center"> <svg
						xmlns="http://www.w3.org/2000/svg" width="20" height="20"
						fill="none" stroke="currentColor" stroke-linecap="round"
						stroke-linejoin="round" stroke-width="2" aria-hidden="true"
						class="me-2" viewBox="0 0 24 24">
						<path d="M23 19a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h4l2-3h6l2 3h4a2 2 0 0 1 2 2z" />
						<circle cx="12" cy="13" r="4" /></svg> <strong>Winewave</strong>
				</a>

				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarHeader"
					aria-controls="navbarHeader" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
			</div>
		</div>
	</header>

	<main>
	
		<div class="album py-5 bg-light">
			
			<div class="container">
	
				<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">

					<!-- init card-->
                   <c:forEach var="vinho" items="${vinhos}">
					<div class="col">
						<div class="card shadow-sm">
							
							<img src="https://d2r9epyceweg5n.cloudfront.net/stores/002/933/692/products/design-sem-nome-91-03f41c7468f96afd8216923129147368-1024-1024.webp" alt="image de um vinho">
	
							<div class="card-body">
								<p class="card-text">Com uma cor rubi intensa e brilhante, Matias Morcos Bonarda seduz com seu aroma complexo e sedutor.</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<button type="button" class="btn btn-sm btn-outline-secondary">View</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					   <c:forEach
					<!-- end card-->

				</div>
			</div>
	
	</main>

	<footer class="text-muted py-5">
		<div class="container">
			<p class="float-end mb-1">
				<a href="#">Back to top</a>
			</p>
			<p class="mb-1">Create by &copy; Winewave 2023!</p>
		</div>
	</footer>

	<script src="/webjars/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>

</body>
</html>
