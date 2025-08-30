<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>HomePage</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css">

  <link rel="stylesheet" href="HomePage.css">
  <style>
    body {
      transition: background-color 0.5s ease, color 0.5s ease;
    }

    .dark-mode {
      background-color: #121212;
      color: #e0e0e0;
    }

    .navbar-dark-mode {
      background-color: #1f1f1f !important;
    }

   .animated-heading {
  font-family: 'Times New Roman', Times, serif;
  font-size: 5vw;
  text-align: center;
  margin: 40px 0;
  color: inherit; /* Maintains existing color */
  position: relative;
  overflow: hidden;
}

@media (min-width: 768px) {
  .animated-heading {
    font-size: 45px;
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

/* Option 1: Fade-in with slide up animation */
.animated-heading {
  animation: fadeInUp 1.5s ease-out forwards;
  opacity: 0;
  transform: translateY(20px);
}

@keyframes fadeInUp {
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

    .zoom-image {
      overflow: hidden;
      border-radius: 15px;
      box-shadow: 0 10px 25px rgba(0,0,0,0.15);
      transition: transform 0.8s ease;
    }

    .zoom-image:hover {
      transform: scale(1.05);
    }

    @keyframes fadeInUp {
      from {
        opacity: 0;
        transform: translateY(30px);
      }
      to {
        opacity: 1;
        transform: translateY(0);
      }
    }

    .animated-card {
      opacity: 0;
      animation: fadeInUp 1s ease forwards;
      transition: transform 0.4s ease, box-shadow 0.4s ease;
      border-radius: 15px;
    }

    .animated-card:hover {
      transform: scale(1.05) rotate(1deg);
      box-shadow: 0 15px 25px rgba(0, 0, 0, 0.3);
    }

    .animated-card:nth-child(1) { animation-delay: 0.2s; }
    .animated-card:nth-child(2) { animation-delay: 0.4s; }
    .animated-card:nth-child(3) { animation-delay: 0.6s; }
    .animated-card:nth-child(4) { animation-delay: 0.8s; }

    .classroom-heading {
      font-size: 48px;
      font-weight: bold;
      font-family: 'Georgia', serif;
      color: #1f3c88;
      background: linear-gradient(to right, #ffecd2, #fcb69f);
      padding: 20px;
      border-radius: 20px;
      box-shadow: 0 5px 15px rgba(0,0,0,0.2);
      animation: pulse 2s ease-in-out infinite;
      display: inline-block;
    }

    @keyframes pulse {
      0% { transform: scale(1); }
      50% { transform: scale(1.03); }
      100% { transform: scale(1); }
    }

    

    /* === Testimonials Section === */
    .testimonial-card {
      background: #f8f9fa;
      border-radius: 15px;
      padding: 25px;
      box-shadow: 0 5px 15px rgba(0,0,0,0.15);
      margin: 20px auto;
      max-width: 800px;
      text-align: center;
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


/* === Floating Contact Button === */
  .contact-float {
    position: fixed;
    bottom: 20px;
    right: 20px;
    z-index: 1000;
  }

  .contact-float a {
    display: flex;
    align-items: center;
    gap: 8px;
    background: linear-gradient(135deg, #ff6a00, #ee0979, #00c6ff, #0072ff);
    background-size: 300% 300%;
    color: #fff;
    padding: 12px 20px;
    border-radius: 50px;
    text-decoration: none;
    font-weight: bold;
    box-shadow: 0 6px 20px rgba(0,0,0,0.25);
    font-size: 16px;
    animation: gradientShift 5s ease infinite;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
  }

  .contact-float a:hover {
    transform: scale(1.08);
    box-shadow: 0 8px 25px rgba(0,0,0,0.35);
  }

  .contact-float i {
    font-size: 20px;
    animation: ring 1.5s infinite;
  }

  @keyframes gradientShift {
    0% { background-position: 0% 50%; }
    50% { background-position: 100% 50%; }
    100% { background-position: 0% 50%; }
  }

  @keyframes ring {
    0% { transform: rotate(0); }
    10% { transform: rotate(15deg); }
    20% { transform: rotate(-15deg); }
    30% { transform: rotate(10deg); }
    40% { transform: rotate(-10deg); }
    50% { transform: rotate(5deg); }
    60% { transform: rotate(-5deg); }
    70% { transform: rotate(0); }
    100% { transform: rotate(0); }
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

<!-- Optional: Bootstrap Icons -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">


<!-- ANIMATED HEADING -->
<div class="container">
  <div class="animated-heading">Welcome to the Site of Aadarsh Classes...!!</div>
</div>

<!-- BACKGROUND IMAGE -->
<div class="container mb-4">
  <div class="zoom-image">
    <img src="/images/HomeBackground.jpg" class="img-fluid rounded" alt="Home Background">
  </div>
</div>

<!-- CLASSROOM PROGRAM SECTION -->
<div class="container classroom-program-section py-5">
  <div class="text-center mb-5">
    <h2 class="section-title">Our <span>Classroom</span> Programs</h2>
    <p class="section-subtitle">Comprehensive learning for academic excellence</p>
  </div>

  <div class="row g-4 justify-content-center">
    
    <!-- Mathematics Card -->
    <div class="col-md-6 col-lg-3">
      <div class="program-card math-card">
        <div class="card-icon">
          <i class="fas fa-square-root-alt"></i>
        </div>
        <img src="/images/math.png" class="card-img" alt="Mathematics">
        <div class="card-content">
          <h3 align="center">Mathematics</h3>
          <p align="center">Master problem-solving skills with our expert faculty</p>
          <div class="card-footer">
            <center>

				<a href="${pageContext.request.contextPath}/agreeAdmission" class="btn-enroll">
				    Enroll Now <i class="fas fa-arrow-right"></i>
				</a>
              </center>
          </div>
        </div>
      </div>
    </div>

    <!-- Biology Card -->
    <div class="col-md-6 col-lg-3">
      <div class="program-card biology-card">
        <div class="card-icon">
          <i class="fas fa-dna"></i>
        </div>
        <img src="/images/biology.jpg" class="card-img" alt="Biology">
        <div class="card-content">
          <h3 align="center">Biology</h3>
          <p align="center">Explore the wonders of life and living organisms</p>
          <div class="card-footer">
            <center>

				<a href="${pageContext.request.contextPath}/agreeAdmission" class="btn-enroll">
				    Enroll Now <i class="fas fa-arrow-right"></i>
				</a>
              </center>
          </div>
        </div>
      </div>
    </div>

    <!-- Chemistry Card -->
    <div class="col-md-6 col-lg-3">
      <div class="program-card chemistry-card">
        <div class="card-icon">
          <i class="fas fa-atom"></i>
        </div>
        <img src="/images/chemistry.jpg" class="card-img" alt="Chemistry">
        <div class="card-content">
          <h3 align="center">Chemistry</h3>
          <p align="center">Discover the building blocks of matter and reactions</p>
          <div class="card-footer">
            <center>

				<a href="${pageContext.request.contextPath}/agreeAdmission" class="btn-enroll">
				    Enroll Now <i class="fas fa-arrow-right"></i>
				</a>
              </center>
          </div>
        </div>
      </div>
    </div>

    <!-- Physics Card -->
    <div class="col-md-6 col-lg-3">
      <div class="program-card physics-card">
        <div class="card-icon">
          <i class="fas fa-meteor"></i>
        </div>
        <img src="/images/physics.png" class="card-img" alt="Physics">
        <div class="card-content">
          <h3 align="center">Physics</h3>
          <p align="center">Understand the fundamental laws of the universe</p>
          <div class="card-footer">
            <center>

				<a href="${pageContext.request.contextPath}/agreeAdmission" class="btn-enroll">
				    Enroll Now <i class="fas fa-arrow-right"></i>
				</a>
              </center>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<style>
  /* Classroom Program Section Styling */
  .classroom-program-section {
    background: linear-gradient(135deg, #f8f9fa 0%, #e9ecef 100%);
    position: relative;
    overflow: hidden;
  }

  .classroom-program-section::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: url('https://www.transparenttextures.com/patterns/concrete-wall.png');
    opacity: 0.03;
    z-index: 0;
  }

  .section-title {
    font-family: 'Poppins', sans-serif;
    font-weight: 700;
    font-size: 2.5rem;
    color: #2c3e50;
    position: relative;
    display: inline-block;
    margin-bottom: 10px;
  }

  .section-title span {
    color: #3498db;
  }

  .section-title::after {
    content: '';
    position: absolute;
    bottom: -10px;
    left: 50%;
    transform: translateX(-50%);
    width: 80px;
    height: 4px;
    background: linear-gradient(90deg, #3498db, #2c3e50);
    border-radius: 2px;
  }

  .section-subtitle {
    color: #7f8c8d;
    font-size: 1.1rem;
    max-width: 600px;
    margin: 0 auto;
  }

  /* Program Cards Styling */
  .program-card {
    background: white;
    border-radius: 15px;
    overflow: hidden;
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.08);
    transition: all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1.275);
    position: relative;
    height: 100%;
    transform: translateY(20px);
    opacity: 0;
    animation: fadeInUp 0.8s ease-out forwards;
  }

  @keyframes fadeInUp {
    to {
      transform: translateY(0);
      opacity: 1;
    }
  }

  .program-card:nth-child(1) { animation-delay: 0.2s; }
  .program-card:nth-child(2) { animation-delay: 0.4s; }
  .program-card:nth-child(3) { animation-delay: 0.6s; }
  .program-card:nth-child(4) { animation-delay: 0.8s; }

  .card-icon {
    position: absolute;
    top: 20px;
    right: 20px;
    width: 50px;
    height: 50px;
    background: rgba(255, 255, 255, 0.9);
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 1.5rem;
    z-index: 2;
    color: #2c3e50;
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
    transition: all 0.3s ease;
  }

  .program-card:hover .card-icon {
    transform: scale(1.1) rotate(15deg);
    color: #3498db;
  }

  .card-img {
    width: 100%;
    height: 200px; /* Slightly bigger so small images are more visible */
    object-fit: contain; /* Shows the full image without cropping */
    background-color: #f8f9fa; /* Light background for transparent PNGs */
    padding: 10px; /* Small padding so images don’t touch edges */
    transition: transform 0.5s ease, box-shadow 0.3s ease;
}

.program-card:hover .card-img {
    transform: scale(1.03);
    box-shadow: 0 4px 20px rgba(0,0,0,0.1);
}

  .card-content {
    padding: 25px;
    position: relative;
    z-index: 1;
  }

  .card-content h3 {
    font-weight: 700;
    margin-bottom: 15px;
    color: #2c3e50;
    font-size: 1.5rem;
  }

  .card-content p {
    color: #7f8c8d;
    margin-bottom: 20px;
    font-size: 0.95rem;
  }

  .card-footer {
    border-top: 1px solid #eee;
    padding-top: 15px;
  }

  .btn-enroll {
    display: inline-flex;
    align-items: center;
    background: linear-gradient(135deg, #3498db, #2980b9);
    color: white;
    padding: 8px 20px;
    border-radius: 30px;
    text-decoration: none;
    font-weight: 600;
    font-size: 0.9rem;
    transition: all 0.3s ease;
    box-shadow: 0 4px 15px rgba(52, 152, 219, 0.3);
  }

  .btn-enroll i {
    margin-left: 8px;
    transition: transform 0.3s ease;
  }

  .btn-enroll:hover {
    transform: translateY(-3px);
    box-shadow: 0 6px 20px rgba(52, 152, 219, 0.4);
    color: white;
  }

  .btn-enroll:hover i {
    transform: translateX(3px);
  }

  /* Subject-specific card accents */
  .math-card {
    border-top: 4px solid #e74c3c;
  }

  .biology-card {
    border-top: 4px solid #2ecc71;
  }

  .chemistry-card {
    border-top: 4px solid #9b59b6;
  }

  .physics-card {
    border-top: 4px solid #f39c12;
  }

  /* Hover effects */
  .program-card:hover {
    transform: translateY(-10px);
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.15);
  }

  /* Responsive adjustments */
  @media (max-width: 992px) {
    .section-title {
      font-size: 2.2rem;
    }
  }

  @media (max-width: 768px) {
    .section-title {
      font-size: 1.8rem;
    }
    
    .card-content {
      padding: 20px;
    }
  }
</style>

<!-- TESTIMONIALS -->
<div class="testimonial-card">
  <h4>✨ Aadarsh Classes</h4>
  <p>"Shaping bright futures with discipline, dedication, and excellence."</p>
  <p><strong>— Empowering minds, inspiring success since our very first day</strong></p>
</div>

<!-- FOOTER -->
<footer class="bg-dark text-white text-center p-3">
  <p class="mb-0">© 2025 Aadarsh Classes | All rights reserved</p>
</footer>

<!-- FLOATING CONTACT BUTTON -->
<div class="contact-float">
  <a href="${pageContext.request.contextPath}/contact">
    <i class="bi bi-telephone-fill"></i> Contact Us
  </a>
</div>


<!-- DARK MODE SCRIPT -->
<script>
  function toggleDarkMode() {
    document.body.classList.toggle("dark-mode");
    document.getElementById("mainNavbar").classList.toggle("navbar-dark-mode");
  }

  
function updateClock() {
    const now = new Date();
    const options = { weekday: 'short', year: 'numeric', month: 'short', day: 'numeric' };
    document.getElementById('clock').innerHTML =
        now.toLocaleDateString('en-US', options) + " | " +
        now.toLocaleTimeString('en-US');
}
setInterval(updateClock, 1000);
updateClock();
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
