<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>About Institute</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  
  <!-- Bootstrap JS Bundle -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
  
  <!-- Icons -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
  
  <style>
    body {
      font-family: Arial, sans-serif;
      line-height: 1.6;
      background-color: #f9f9f9;
    }

    .quote {
      font-family: 'Georgia', serif;
      font-size: 1.05rem;
      color: #ffeb3b;
      font-weight: 500;
    }

    .profile-image {
      border-radius: 20px;
      box-shadow: 0 10px 25px rgba(0, 0, 0, 0.3);
      transition: transform 0.5s ease;
      max-width: 100%;
    }
    .profile-image:hover {
      transform: scale(1.05);
    }

    .about-institute {
      background: rgba(255, 255, 255, 0.8);
      backdrop-filter: blur(8px);
      border-radius: 15px;
      padding: 30px;
      box-shadow: 0 8px 30px rgba(0, 0, 0, 0.15);
      border-left: 6px solid #1f3c88;
    }
    .about-institute h2 {
      font-weight: bold;
      color: #1f3c88;
    }

    .glass-card {
      background: rgba(255, 255, 255, 0.75);
      backdrop-filter: blur(8px);
      border-radius: 20px;
      box-shadow: 0 8px 30px rgba(0, 0, 0, 0.15);
      border: 1px solid rgba(255, 255, 255, 0.3);
      transition: all 0.3s ease;
    }
    .glass-card:hover {
      transform: translateY(-5px);
      box-shadow: 0 15px 40px rgba(0, 0, 0, 0.2);
    }
    .card-title {
      font-weight: bold;
      color: #004e92;
    }
    .card-text {
      color: #444;
    }

    footer {
      background: linear-gradient(90deg, #1f3c88, #004e92);
      color: #fff;
    }

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

    .fade-in-quote {
      font-family: 'Georgia', serif;
      font-size: 1.6rem;
      font-style: italic;
      line-height: 1.5;
      font-weight: 500;
      background: linear-gradient(90deg, #0d6efd, #6610f2);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      animation: fadeInUp 1.2s ease-out;
    }

    .quote-mark {
      font-size: 2rem;
      color: #0d6efd;
      font-weight: bold;
    }

    @keyframes fadeInUp {
      from {
        opacity: 0;
        transform: translateY(15px);
      }
      to {
        opacity: 1;
        transform: translateY(0);
      }
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
    /* Submenu Styling */
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


<!-- QUOTE ABOVE IMAGE -->
<div class="container text-center my-4">
  <blockquote class="blockquote fade-in-quote">
    <span class="quote-mark">“</span>
    <span class="quote-text">30 Years of Trust, Dedication, and Achievement.</span>
    <span class="quote-mark">”</span>
  </blockquote>
</div>

<!-- INSTITUTE IMAGE -->
<div class="container text-center my-5">
  <img src="/images/aadarsh classes piv.png" alt="Institute Image" class="profile-image">
</div>

<!-- ABOUT INSTITUTE -->
<div class="container about-institute my-5">
  <h2>About Our Institute</h2>
  <p>
    Welcome to <strong>Aadarsh Classes</strong>, a proud institution founded by <strong>Mr. Sharad Laxmanrao Sawant</strong>, built on a legacy of <strong>30 years</strong> of dedication, discipline, and academic excellence.<br><br>
    Established with a clear vision to shape young minds, Aadarsh Classes is known for its <strong>strict discipline</strong>, focused teaching methods, and strong moral values. We provide quality education from <strong>5th to 10th standard</strong>, with special attention to core science subjects: <strong>Mathematics, Biology, Chemistry, and Physics</strong>.<br><br>
    Under the leadership of Mr. Sawant Sir, every student receives personal guidance and a structured learning environment that encourages both academic growth and personal development.<br><br>
    Beyond academics, Aadarsh Classes also promotes cultural and patriotic values. We proudly host various events such as:<br>
    <strong>
      # 26th January – Republic Day<br>
      # Ganpati Mahotsav<br>
      # 15th August – Independence Day<br>
      # Annual Gathering<br>
    </strong><br>
    And our most awaited event, <strong>Student of the Year</strong>, where we recognize outstanding performance and character.<br><br>
    At Aadarsh Classes, we don’t just teach — we build future leaders with values.
  </p>
</div>

<!-- VISION & MISSION -->
<div class="container text-center mb-5">
  <div class="row justify-content-center">
    <div class="col-md-5">
      <div class="glass-card p-4 mb-4">
        <h2 class="card-title">👁️ Our Vision</h2>
        <p class="card-text">Our vision is to shape students into well-rounded, successful individuals who lead meaningful and disciplined lives. We believe that true success lies not just in academic achievement but in becoming a good human being — one who is respectful, capable, and socially responsible. At Aadarsh Classes, we envision a future where every student thrives with knowledge, culture, and character.</p>
      </div>
    </div>
    <div class="col-md-6">
      <div class="glass-card p-4 mb-4">
        <h2 class="card-title">🎯 Our Mission</h2>
        <p class="card-text">At Aadarsh Classes, our mission is to develop all-rounder students — individuals who excel not only in academics but also grow through values, discipline, and cultural involvement. We aim to provide a balanced education where students gain deep knowledge in Mathematics, Biology, Chemistry, and Physics, while also participating in programs that enhance confidence, creativity, and leadership. We strive to create responsible, focused, and self-motivated learners prepared for every challenge in life.</p>
      </div>
    </div>
  </div>
</div>

<!-- FOOTER -->
<footer class="text-center p-3">
  <p class="mb-0">© 2025 Aadarsh Classes | All rights reserved</p>
</footer>

<!-- CUSTOM SCRIPT FOR NESTED DROPDOWN -->
<script>
  document.querySelectorAll('.dropdown-submenu .dropdown-toggle').forEach(function (element) {
    element.addEventListener('click', function (e) {
      e.preventDefault();
      e.stopPropagation();
      let submenu = this.nextElementSibling;
      if (submenu.classList.contains('show')) {
        submenu.classList.remove('show');
      } else {
        submenu.classList.add('show');
      }
    });
  });

  // Close submenu on outside click
  window.addEventListener('click', function () {
    document.querySelectorAll('.dropdown-submenu .dropdown-menu').forEach(function (submenu) {
      submenu.classList.remove('show');
    });
  });
</script>
<script>
  // Enable submenu dropdown functionality
  document.querySelectorAll('.dropdown-submenu .dropdown-toggle').forEach(function (element) {
    element.addEventListener('click', function (e) {
      e.preventDefault();
      e.stopPropagation();
      let submenu = this.nextElementSibling;
      submenu.classList.toggle('show');
    });
  });

  // Hide submenus on window click
  window.addEventListener('click', function () {
    document.querySelectorAll('.dropdown-submenu .dropdown-menu').forEach(function (submenu) {
      submenu.classList.remove('show');
    });
  });
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
