<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Contact Us - Aadarsh Classes</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <style>
        :root {
            --primary-color: #0d6efd;
            --secondary-color: #6f42c1;
            --accent-color: #ff6b35;
        }

        body {
            background: linear-gradient(to right, #f8f9fa, #e9ecef);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        .contact-header {
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
            padding: 80px 0 60px;
            color: white;
            text-align: center;
            position: relative;
            overflow: hidden;
        }

        .contact-header::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100" preserveAspectRatio="none"><path fill="rgba(255,255,255,0.05)" d="M0,0 L100,0 L100,100 L0,100 Z" /></svg>');
            background-size: cover;
        }

        .contact-header h1 {
            font-size: clamp(2.5rem, 5vw, 3.5rem);
            margin-bottom: 15px;
            font-weight: 700;
            position: relative;
            text-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }

        .contact-header p {
            font-size: clamp(1rem, 2vw, 1.2rem);
            opacity: 0.9;
            max-width: 700px;
            margin: 0 auto;
            position: relative;
        }

        .contact-card {
            transition: all 0.3s ease;
            border: none;
            border-radius: 12px;
            overflow: hidden;
            height: 100%;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.08);
        }

        .contact-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.15);
        }

        .card-icon {
            font-size: 2.5rem;
            color: var(--primary-color);
            margin-bottom: 1.5rem;
            transition: all 0.3s ease;
        }

        .contact-card:hover .card-icon {
            transform: scale(1.2);
            color: var(--secondary-color);
        }

        .contact-card .btn {
            border-radius: 50px;
            font-weight: 500;
            padding: 8px 20px;
            transition: all 0.3s ease;
        }

        .contact-card:hover .btn {
            background-color: var(--primary-color);
            border-color: var(--primary-color);
        }

        footer {
            margin-top: auto;
            background: linear-gradient(135deg, #343a40, #212529);
            color: white;
            padding: 25px 0;
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

        .dropdown-submenu:hover>.dropdown-menu {
            display: block;
        }

        /* Responsive adjustments */
        @media (max-width: 768px) {
            .contact-header {
                padding: 60px 0 40px;
            }
            
            .card-icon {
                font-size: 2rem;
            }
            
            .contact-card {
                margin-bottom: 20px;
            }
        }

        @media (max-width: 576px) {
            .contact-header {
                padding: 50px 0 30px;
            }
            
            .contact-card .btn {
                width: auto;
                display: inline-block;
            }
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

    </style>
</head>

<body>
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

    <!-- Header -->
    <div class="contact-header">
        <div class="container">
            <h1>Get In Touch With Us</h1>
            <p>We're here to help and answer any questions you might have. Reach out to us through any of the following methods and we'll respond as soon as possible.</p>
        </div>
    </div>

    <!-- Contact Cards -->
    <div class="container py-5">
        <div class="row g-4 justify-content-center">
            <div class="col-md-4">
                <div class="contact-card card h-100">
                    <div class="card-body text-center p-4">
                        <div class="card-icon">
                            <i class="bi bi-telephone-fill"></i>
                        </div>
                        <h4 class="card-title">Phone Support</h4>
                        <p class="card-text text-muted mb-4">Speak directly with our support team during business hours.</p>
                        <h5 class="text-primary mb-3">+91 9960937056</h5>
                        <a href="tel:+919960937056" class="btn btn-outline-primary">Call Now</a>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="contact-card card h-100">
                    <div class="card-body text-center p-4">
                        <div class="card-icon">
                            <i class="bi bi-envelope-fill"></i>
                        </div>
                        <h4 class="card-title">Email Us</h4>
                        <p class="card-text text-muted mb-4">Send us an email and we'll get back to you within 24 hours.</p>
                        <h5 class="text-primary mb-3">sigmalinecomp@gmail.com</h5>
                        <a href="mailto:sigmalinecomp@gmail.com" class="btn btn-outline-primary">Send Email</a>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="contact-card card h-100">
                    <div class="card-body text-center p-4">
                        <div class="card-icon">
                            <i class="bi bi-geo-alt-fill"></i>
                        </div>
                        <h4 class="card-title">Visit Us</h4>
                        <p class="card-text text-muted mb-4">Come visit our campus for a personal consultation.</p>
                        <h5 class="text-primary mb-3">At Post: Nampur<br>Tal: Baglan, Dist: Nashik</h5>
                        <a href="https://maps.app.goo.gl/CYv8GVVf25XiQaQy8" target="_blank" class="btn btn-outline-primary">View on Map</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    

    <footer class="bg-dark text-light py-4">
        <div class="container">
            <div class="row">
				
                <div class="col-md-6 text-center text-md-start">
                    &copy; 2025 Aadarsh Classes. All rights reserved.
                </div>
				
                <div class="col-md-6 text-center text-md-end">
                    <a href="#" class="text-white me-3"><i class="bi bi-facebook"></i></a>
                    <a href="#" class="text-white me-3"><i class="bi bi-twitter"></i></a>
                    <a href="#" class="text-white me-3"><i class="bi bi-instagram"></i></a>
                    <a href="#" class="text-white"><i class="bi bi-linkedin"></i></a>
                </div>
            </div>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        // Dark mode toggle function
        function toggleDarkMode() {
            document.body.classList.toggle('dark-mode');
        }
    </script>

<script>
  document.addEventListener('DOMContentLoaded', function () {
    const submenuToggles = document.querySelectorAll('.dropdown-submenu > a');

    submenuToggles.forEach(function (toggle) {
      toggle.addEventListener('click', function (e) {
        e.preventDefault(); // prevent link navigation
        e.stopPropagation(); // stop event bubbling

        // Close other open submenus
        submenuToggles.forEach(function (el) {
          if (el !== toggle) {
            el.nextElementSibling.style.display = 'none';
          }
        });

        // Toggle current submenu
        const submenu = toggle.nextElementSibling;
        if (submenu.style.display === 'block') {
          submenu.style.display = 'none';
        } else {
          submenu.style.display = 'block';
        }
      });
    });

    // Close submenu if clicking outside
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