<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Gallery Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        .Home1 {
            margin-left: 60px;
        }
        .picset, .picset2, .picset3, .picset4, .picset5,
        .picset6, .picset7, .picset8, .picset9, .picset10,
        .picset11, .picset13, .picset14, .picset15, .picset16 {
            margin: 75px;
            display: inline-block;
        }
       
        /* === Sub-dropdown support === */
        .dropdown-submenu {
            position: relative;
        }

        .dropdown-submenu .dropdown-menu {
            top: 0;
            left: 100%;
            margin-top: -1px;
            display: none;
            position: absolute;
        }

        .dropdown-submenu:hover > .dropdown-menu {
            display: block;
        }

        /* Navbar customization */
        .navbar {
            background: #1e1e2f !important;
            box-shadow: 0 4px 12px rgba(0,0,0,0.3);
        }

        .navbar-brand img {
            border-radius: 8px;
        }

        .nav-link {
            color: #fff !important;
            font-weight: 500;
            transition: color 0.3s;
        }

        .nav-link:hover {
            color: #ffc107 !important;
        }

        /* Show submenu on hover ONLY on wider screens (desktop) */
        @media (min-width: 992px) {
            .dropdown-submenu:hover > .dropdown-menu {
                display: block;
            }
        }

        /* On mobile, submenu hidden by default and shown on click */
        @media (max-width: 991px) {
            .dropdown-submenu .dropdown-menu {
                position: static !important;
                margin-left: 1rem;
                margin-top: 0;
                box-shadow: none;
                display: none;
            }
        }

        /* ===== CSS from Gallery.css ===== */
        body {
            background-image: url(images/dark.png);
        }

        h1 {
            font-size: 60px;
            font-weight: bold;
            color: white;
            margin-bottom: 10px;
        }

        h3 {
            margin: 20px;
            color: white;
            text-align: center;
        }

        .card {
            border-radius: 15px;
            overflow: hidden;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card img {
            height: 250px;
            object-fit: cover;
            width: 100%;
        }

        .card:hover {
            transform: scale(1.05);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
        }
    </style>
</head>
<body>
    <!-- NAVBAR -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark" id="mainNavbar">
	  <div class="container-fluid">
	    
	    <!-- Logo -->
	    <a class="navbar-brand d-flex align-items-center" href="#">
			<img src="/images/Logo.jpg" alt="Logo" width="120" height="100">
	    </a>

	    <!-- 🔥 Attractive Quote -->
	    <div class="d-none d-lg-block ms-3 flex-grow-1">
	      <span style="font-family: 'Georgia', serif; font-size: 1.1rem; color: #ffdd57; font-weight: 500;">
	        <i class="bi bi-quote-left"></i> Discipline is the bridge between 
	        <span style="color: #00d4ff;">goals</span> and 
	        <span style="color: #28df99;">achievement</span>
	        <i class="bi bi-quote-right"></i>
	      </span>
	    </div>

	    <!-- Toggle for mobile -->
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
	      <span class="navbar-toggler-icon"></span>
	    </button>

	    <!-- Navigation Links -->
	    <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
	      <ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/home">Home</a></li>

	        <li class="nav-item dropdown">
	          <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">About Us</a>
	          <ul class="dropdown-menu">
				<li><a class="dropdown-item" href="${pageContext.request.contextPath}/about">About Founder</a></li>
				<li><a class="dropdown-item" href="${pageContext.request.contextPath}/about-institute">About Institute</a></li>


	          </ul>
	        </li>

	        <li class="nav-item dropdown">
	          <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">Admission</a>
	          <ul class="dropdown-menu">
				<li><a class="dropdown-item" href="${pageContext.request.contextPath}/admission/agree">Register</a></li>

	            <!-- Sub-dropdown Start -->
	            <li class="dropdown-submenu">
	              <a class="dropdown-item dropdown-toggle" href="#">Login</a>
	              <ul class="dropdown-menu">
					<li><a class="dropdown-item" href="${pageContext.request.contextPath}/studentmain">Student Login</a></li>
					<li><a class="dropdown-item" href="${pageContext.request.contextPath}/admin/login">Admin Login</a></li>

	              </ul>
	            </li>
	            <!-- Sub-dropdown End -->

	            <li><hr class="dropdown-divider"></li>
				<li><a class="dropdown-item" href="${pageContext.request.contextPath}/contact">Contact</a></li>
	          </ul>
	        </li>

			<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/activity">Activities</a></li>
			<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/gallery">Gallery</a></li>

	      </ul>

	      <div id="clock" class="text-warning ms-3 fw-bold"></div>

	    </div>
	  </div>
	</nav>
    
    <!-- Page Title -->
    <div class="container text-center my-5">
        <h1 class="display-4 text-white">Gallery</h1>
        <p class="lead fw-semibold" style="font-family: 'Georgia', serif; font-size: 1.5rem; color: #f8e9a1; background-color: rgba(0, 0, 0, 0.6); padding: 10px 20px; border-left: 5px solid #ffd700; border-radius: 8px; display: inline-block; animation: fadeIn 2s ease-in-out;">
            “<span style="color:#00d4ff;">Memories</span> are <span style="color:#28df99;">timeless treasures</span> of the heart.”
        </p>
    </div>

    <!-- Gallery Grid -->
    <div class="container mb-5">
        <div class="row g-4">
            <!-- Repeat this col block for each image -->
            <div class="col-sm-6 col-md-4 col-lg-3"><div class="card border-0 shadow"><img src="images/gallery/Gallery1.JPG" class="card-img-top" alt="Gallery Image"></div></div>
            <div class="col-sm-6 col-md-4 col-lg-3"><div class="card border-0 shadow"><img src="images/gallery/Gallery2.jpg" class="card-img-top" alt="Gallery Image"></div></div>
            <div class="col-sm-6 col-md-4 col-lg-3"><div class="card border-0 shadow"><img src="images/gallery/Gallery3.jpg" class="card-img-top" alt="Gallery Image"></div></div>
            <div class="col-sm-6 col-md-4 col-lg-3"><div class="card border-0 shadow"><img src="images/gallery/Gallery4.jpg" class="card-img-top" alt="Gallery Image"></div></div>
            <div class="col-sm-6 col-md-4 col-lg-3"><div class="card border-0 shadow"><img src="images/gallery/Gallery5.jpg" class="card-img-top" alt="Gallery Image"></div></div>
            <div class="col-sm-6 col-md-4 col-lg-3"><div class="card border-0 shadow"><img src="images/gallery/Gallery6.jpg" class="card-img-top" alt="Gallery Image"></div></div>
            <div class="col-sm-6 col-md-4 col-lg-3"><div class="card border-0 shadow"><img src="images/gallery/Gallery7.JPG" class="card-img-top" alt="Gallery Image"></div></div>
            <div class="col-sm-6 col-md-4 col-lg-3"><div class="card border-0 shadow"><img src="images/gallery/Gallery8.JPG" class="card-img-top" alt="Gallery Image"></div></div>
            <div class="col-sm-6 col-md-4 col-lg-3"><div class="card border-0 shadow"><img src="images/gallery/me1.JPG" class="card-img-top" alt="Gallery Image"></div></div>
            <div class="col-sm-6 col-md-4 col-lg-3"><div class="card border-0 shadow"><img src="images/gallery/me2.JPG" class="card-img-top" alt="Gallery Image"></div></div>
            <div class="col-sm-6 col-md-4 col-lg-3"><div class="card border-0 shadow"><img src="images/gallery/me3.JPG" class="card-img-top" alt="Gallery Image"></div></div>
            <div class="col-sm-6 col-md-4 col-lg-3"><div class="card border-0 shadow"><img src="images/gallery/me4.JPG" class="card-img-top" alt="Gallery Image"></div></div>
            <div class="col-sm-6 col-md-4 col-lg-3"><div class="card border-0 shadow"><img src="images/gallery/me5.JPG" class="card-img-top" alt="Gallery Image"></div></div>
            <div class="col-sm-6 col-md-4 col-lg-3"><div class="card border-0 shadow"><img src="images/gallery/me6.JPG" class="card-img-top" alt="Gallery Image"></div></div>
            <div class="col-sm-6 col-md-4 col-lg-3"><div class="card border-0 shadow"><img src="images/gallery/me7.JPG" class="card-img-top" alt="Gallery Image"></div></div>
            <div class="col-sm-6 col-md-4 col-lg-3"><div class="card border-0 shadow"><img src="images/gallery/me8.JPG" class="card-img-top" alt="Gallery Image"></div></div>
        </div>
    </div>

    <footer class="bg-dark text-white text-center p-3">
        <p class="mb-0">© 2025 Aadarsh Classes | All rights reserved</p>
    </footer>

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            const submenuToggles = document.querySelectorAll('.dropdown-submenu > a');

            submenuToggles.forEach(function (toggle) {
                toggle.addEventListener('click', function (e) {
                    e.preventDefault();
                    e.stopPropagation();

                    submenuToggles.forEach(function (el) {
                        if (el !== toggle) {
                            el.nextElementSibling.style.display = 'none';
                        }
                    });

                    const submenu = toggle.nextElementSibling;
                    if (submenu.style.display === 'block') {
                        submenu.style.display = 'none';
                    } else {
                        submenu.style.display = 'block';
                    }
                });
            });

            document.addEventListener('click', function (e) {
                if (!e.target.closest('.dropdown-submenu')) {
                    submenuToggles.forEach(function (toggle) {
                        const submenu = toggle.nextElementSibling;
                        if (submenu) submenu.style.display = 'none';
                    });
                }
            });
        });
    </script>
</body>
</html>
