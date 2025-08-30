<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>About Founder</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
  <style>
    body {
      background: linear-gradient(to right, #0f2027, #203a43, #2c5364);
      font-family: 'Segoe UI', sans-serif;
      color: #fff;
    }

    /* NAVBAR */
    .navbar {
      box-shadow: 0 4px 15px rgba(0,0,0,0.2);
    }

    /* QUOTE BANNER */
    .quote-banner {
      background: rgba(255, 193, 7, 0.9);
      color: #000;
      font-weight: 500;
      padding: 10px;
      font-size: 1.1rem;
      text-align: center;
      font-style: italic;
    }

    /* ABOUT CARD */
    .about-card {
      background: rgba(255, 255, 255, 0.08);
      backdrop-filter: blur(8px);
      border-radius: 15px;
      overflow: hidden;
      box-shadow: 0 8px 25px rgba(0,0,0,0.3);
      transition: transform 0.4s ease, box-shadow 0.4s ease;
    }
    .about-card:hover {
      transform: translateY(-5px);
      box-shadow: 0 12px 35px rgba(0,0,0,0.4);
    }

    /* Founder Image */
    .founder-img {
      position: relative;
      overflow: hidden;
    }
    .founder-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: transform 0.6s ease;
    }
    .founder-img::after {
      content: "";
      position: absolute;
      inset: 0;
      background: linear-gradient(to top, rgba(0,0,0,0.5), transparent);
    }
    .founder-img:hover img {
      transform: scale(1.08);
    }

    /* Text Content */
    .about-content {
      padding: 30px;
      animation: fadeInRight 1s ease both;
    }
    .about-content h2 {
      color: #ffc107;
      font-weight: bold;
      font-size: 2rem;
      margin-bottom: 15px;
    }
    .about-content p {
      font-size: 1.05rem;
      line-height: 1.8;
      margin-bottom: 15px;
      color: #e6e6e6;
    }
    .about-content h6 {
      margin-top: 20px;
      font-style: italic;
      color: #bbb;
    }

    /* Animations */
    @keyframes fadeInRight {
      from {opacity: 0; transform: translateX(40px);}
      to {opacity: 1; transform: translateX(0);}
    }

    @keyframes fadeInUp {
      from {opacity: 0; transform: translateY(40px);}
      to {opacity: 1; transform: translateY(0);}
    }

    /* Footer */
    footer {
      background-color: #111;
      color: #ccc;
      font-size: 14px;
      padding: 15px 0;
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


<!-- QUOTE -->
<div class="quote-banner">
  "Discipline is the bridge between goals and achievement"
</div>

<!-- ABOUT FOUNDER -->
<div class="container my-5">
  <div class="row about-card">
    <div class="col-lg-5 founder-img p-0">
      <img src="images/sir pic 3.jpg" alt="Founder">
    </div>
    <div class="col-lg-7 about-content">
      <h2>About the Founder</h2>
      
Mr. Sharad Laxmanrao Sawant Sir is a disciplined, dedicated, and visionary educator who has been shaping young minds for over 30 years. Renowned for his strict yet deeply caring approach, Sir begins his day at 4:00 AM and reaches the classroom by 5:00 AM to personally mentor his 10th-grade students — a testament to his unmatched commitment. At 53, he continues to inspire with the same energy, focus, and adaptability, proving that true passion never fades with age.

More than just a teacher, he is a mentor and life coach, instilling not only academic excellence but also values such as confidence, respect, resilience, and self-discipline. He teaches students how to carry themselves in life — from effective communication to moral conduct — ensuring their growth extends far beyond the syllabus. Remarkably, he runs the entire institute single-handedly, managing every detail with precision and sincerity.

Believing in holistic development, Sir organizes extracurricular activities to nurture creativity, leadership, and team spirit. In all these years, he has never taken a single day off from his duties — a rare embodiment of dedication and consistency. Humble in nature yet strong in principles, his journey is a source of inspiration for countless students, including myself. His self-discipline, simplicity, and unwavering motivation have left a profound mark on my life and continue to guide generations toward success.

      <h6>By <strong>Manish Sawant</strong></h6>
    </div>
  </div>
</div>

<!-- FOOTER -->
<footer class="text-center">
  &copy; 2025 Aadarsh Classes. All rights reserved.
</footer>

</body>

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

</html>
