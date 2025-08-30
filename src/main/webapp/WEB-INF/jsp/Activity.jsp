<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Activities - Aadarsh Classes</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>
  <style>
  html {
    scroll-behavior: smooth;
  }

  body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background: linear-gradient(120deg, #f0f4ff, #ffffff);
    color: #333;
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

  section {
    background: linear-gradient(135deg, #4b6cb7, #182848);
    color: white;
    padding: 60px 0;
    text-align: center;
  }

  section h1 {
    font-size: 3rem;
    font-weight: 700;
    text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
  }

  section p {
    font-size: 1.25rem;
    margin-top: 15px;
    color: #dfe6f0;
  }

  .card {
    background-color: #ffffff;
    border: none;
    border-radius: 20px;
    box-shadow: 0 8px 30px rgba(0, 0, 0, 0.15);
    transition: all 0.3s ease;
  }

  .card:hover {
    transform: translateY(-8px);
    box-shadow: 0 12px 35px rgba(0, 0, 0, 0.2);
  }

  .card-title-custom {
    font-size: 1.4rem;
    font-weight: bold;
    background: linear-gradient(to right, #ff6a00, #ee0979);
    background-clip: text;
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    border-bottom: 2px solid #dee2e6;
    padding-bottom: 8px;
    margin-bottom: 15px;
    text-align: center;
    text-transform: uppercase;
  }

  .card-text {
    font-size: 1.05rem;
    line-height: 1.6;
  }

  .carousel-inner img {
  width: 100%;
  height: auto;
  object-fit: contain;
  background-color: #000;
  border-radius: 15px;
  transition: transform 0.3s ease;
  max-height: 90vh; /* Prevents the image from getting too tall */
  display: block;
  margin: auto;
}


  .carousel-inner img:hover {
    transform: scale(1.02);
  }

  .carousel-control-prev-icon,
  .carousel-control-next-icon {
    background-color: rgba(0, 0, 0, 0.6);
    border-radius: 50%;
    padding: 10px;
  }

  .carousel-indicators [data-bs-target] {
    background-color: #333;
  }

  footer {
    background-color: #1e1e2f;
    color: #f8f9fa;
    padding: 15px 0;
    font-size: 0.95rem;
  }

  /* Dark Mode Button */
  .btn-outline-warning {
    border-radius: 25px;
    font-weight: bold;
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

  /* Utility spacing */
  .container.py-5 {
    padding-top: 4rem !important;
    padding-bottom: 4rem !important;
  }

  .text-muted em {
    font-style: italic;
    color: #6c757d !important;
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

  <!-- Activities Header -->
  <section>
    <div class="container">
      <h1 class="display-4 fw-bold">Extra-Curricular Activities</h1>
      <p class="lead">Celebrating patriotism, culture, creativity, and unity!</p>
    </div>
  </section>


<div class="container my-4">
    <div class="card shadow-lg bg-light">
      <div class="card-body">
        <h4 class="card-title text-center text-primary">Enriching Class Life</h4>
        <p class="card-text text-dark">
         <h6> At Aadarsh Classes, we believe in nurturing patriotism, culture, and unity through our thoughtfully celebrated events. Our extra-curricular calendar includes national celebrations like Independence Day (15th August) and Republic Day (26th January), which instill a deep sense of pride and respect for the nation among students.

We also organize vibrant festivals such as the Ganpati Mahotsav, promoting tradition and togetherness in a joyful atmosphere. The Annual Gathering is a much-awaited occasion that showcases students' talents in music, dance, drama, and more—encouraging confidence, stage presence, and creative expression.

A special highlight of our calendar is the "Student of the Year" award—an inspiring initiative to recognize students who demonstrate all-round excellence in academics, discipline, leadership, and character.

These events not only enrich students' school life but also foster discipline, unity, and a strong cultural foundation.</h6>
        </p>
      </div>
    </div>
  </div>


  <!-- Activity Cards with Slideshows -->
  <div class="container py-5">
  <div class="row row-cols-1 g-4">



      <!-- Ganesh Mahotsav -->
      <div class="container py-5">
  <div class="row row-cols-1 g-4">
        <div class="card">
          <div id="carouselGanesh" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselGanesh" data-bs-slide-to="0" class="active" aria-current="true"></button>
    <button type="button" data-bs-target="#carouselGanesh" data-bs-slide-to="1"></button>
    <button type="button" data-bs-target="#carouselGanesh" data-bs-slide-to="2"></button>
    <button type="button" data-bs-target="#carouselGanesh" data-bs-slide-to="3"></button>
    <button type="button" data-bs-target="#carouselGanesh" data-bs-slide-to="4"></button>
        <button type="button" data-bs-target="#carouselGanesh" data-bs-slide-to="5"></button>

  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="images/GaneshPic/Ganesh4.jpg" class="d-block w-100" alt="Ganesh 1">
    </div>
    <div class="carousel-item">
      <img src="images/GaneshPic/Ganesh3.jpg" class="d-block w-100" alt="Ganesh 2">
    </div>
    <div class="carousel-item">
      <img src="images/GaneshPic/Ganesh1.JPG" class="d-block w-100" alt="Ganesh 3">
    </div>
    <div class="carousel-item">
      <img src="images/GaneshPic/Ganesh5 (1).JPG" class="d-block w-100" alt="Ganesh 4">
    </div>
     <div class="carousel-item">
      <img src="images/GaneshPic/Ganesh5 (2).JPG" class="d-block w-100" alt="Ganesh 5">
    </div>
     <div class="carousel-item">
      <img src="images/GaneshPic/Ganesh5 (3).JPG" class="d-block w-100" alt="Ganesh 6">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselGanesh" data-bs-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselGanesh" data-bs-slide="next">
    <span class="carousel-control-next-icon"></span>
  </button>
</div>

          <div class="card-body">
<h5 class="card-title card-title-custom">Ganesh Mahotsav</h5>             <p class="card-text text-dark">
      Aadarsh Classes celebrates <strong>Ganpati Mahotsav</strong> with great devotion and unity. The classroom is beautifully decorated with fresh flowers, an effort led by our talented girl students.
    </p>
    <p class="card-text text-dark">
      During the celebration, a group of girls respectfully recite 7–8 <strong>Aartis</strong>, creating a divine atmosphere. For each Aarti, the <strong>chief guests</strong> are the families of our 10<sup>th</sup> standard students, who lead the rituals with reverence.
    </p>
    <p class="card-text text-dark">
      To enrich the devotional spirit, boys enthusiastically play the <strong>tabla</strong> and blow the <strong>shankh</strong> (conch shell), adding rhythm and energy to the ceremony.
    </p>
    <p class="card-text text-dark">
      After the Aarti, the celebration continues with fun-filled <strong>comedy events</strong> where humorous 'cheats' or scripts are handed to students, bringing laughter and joy to all.
    </p>
    <p class="card-text text-muted"><em>Ganpati Bappa Morya!</em></p>
          </div>
        </div>
      </div>

      
      <!-- Republic Day -->
<div class="container py-5">
  <div class="card">
    <div id="carouselRepublic" class="carousel slide" data-bs-ride="carousel">
      <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselRepublic" data-bs-slide-to="0" class="active"></button>
        <button type="button" data-bs-target="#carouselRepublic" data-bs-slide-to="1"></button>
        <button type="button" data-bs-target="#carouselRepublic" data-bs-slide-to="2"></button>
              <button type="button" data-bs-target="#carouselRepublic" data-bs-slide-to="3"></button>
        <button type="button" data-bs-target="#carouselRepublic" data-bs-slide-to="4"></button>
        <button type="button" data-bs-target="#carouselRepublic" data-bs-slide-to="5"></button>

      </div>
      <div class="carousel-inner">
        <div class="carousel-item active"><img src="images/Republic/republic1.JPG" class="d-block w-100" alt="Republic Day 1"></div>
        <div class="carousel-item"><img src="images/Republic/republic2.JPG" class="d-block w-100" alt="Republic Day 2"></div>
        <div class="carousel-item"><img src="images/Republic/republic3.JPG" class="d-block w-100" alt="Republic Day 3"></div>
              <div class="carousel-item"><img src="images/Republic/republic4.JPG" class="d-block w-100" alt="Republic Day 4"></div>
        <div class="carousel-item"><img src="images/Republic/republic5.jpg" class="d-block w-100" alt="Republic Day 5"></div>

      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselRepublic" data-bs-slide="prev">
        <span class="carousel-control-prev-icon"></span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselRepublic" data-bs-slide="next">
        <span class="carousel-control-next-icon"></span>
      </button>
    </div>

    <div class="card-body">
<h5 class="card-title card-title-custom">Republic Day</h5>
      <p class="card-text text-dark">
        At Aadarsh Classes, we honor Republic Day with deep respect and grandeur. Every year, the <strong>flag is proudly hoisted by a respected army personnel</strong> — invited especially by our sir, as a tribute to real-life heroes who serve our nation.
      </p>
      <p class="card-text text-dark">
        All students participate in the ceremony wearing a <strong>uniform dress code</strong>, symbolizing unity and equality. A special moment of pride is when <strong>one girl represents Bharat Mata</strong>, standing tall in a graceful traditional portrayal of our Mother India.
      </p>
      <p class="card-text text-dark">
        The classroom is transformed with vibrant <strong>lights, flowers, and colorful balloons</strong>, reflecting the patriotic spirit and joy of the occasion.
      </p>
      <p class="card-text text-muted"><em>Jai Hind! Jai Bharat!</em></p>
    </div>
  </div>
</div>


      <!-- Independence Day -->
     <div class="container py-5">
  <div class="row row-cols-1 g-4">
    <div class="card shadow rounded">
      <!-- Bootstrap Carousel -->
      <div id="carouselIndependence" class="carousel slide" data-bs-ride="carousel">
        
        <!-- Indicators -->
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#carouselIndependence" data-bs-slide-to="0" class="active"></button>
          <button type="button" data-bs-target="#carouselIndependence" data-bs-slide-to="1"></button>
          <button type="button" data-bs-target="#carouselIndependence" data-bs-slide-to="2"></button>
          <button type="button" data-bs-target="#carouselIndependence" data-bs-slide-to="3"></button>
          <button type="button" data-bs-target="#carouselIndependence" data-bs-slide-to="4"></button>
          <button type="button" data-bs-target="#carouselIndependence" data-bs-slide-to="5"></button>

        </div>

        <!-- Slides -->
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="images/Independance/Inde1.JPG" class="d-block w-100" alt="Independence Day 1">
          </div>
          <div class="carousel-item">
            <img src="images/Independance/Inde2.jpg" class="d-block w-100" alt="Independence Day 2">
          </div>
          <div class="carousel-item">
            <img src="images/Independance/Inde3.JPG" class="d-block w-100" alt="Independence Day 3">
          </div>
          <div class="carousel-item">
            <img src="images/Independance/Inde4.JPG" class="d-block w-100" alt="Independence Day 4">
          </div>
          <div class="carousel-item">
            <img src="images/Independance/Inde5.JPG" class="d-block w-100" alt="Independence Day 5">
          </div>
          <div class="carousel-item">
            <img src="images/Independance/Inde6.jpg" class="d-block w-100" alt="Independence Day 6">
          </div>
        </div>

        <!-- Navigation Buttons -->
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselIndependence" data-bs-slide="prev">
          <span class="carousel-control-prev-icon"></span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselIndependence" data-bs-slide="next">
          <span class="carousel-control-next-icon"></span>
        </button>
      </div>

      <!-- Card Body -->
      <div class="card-body">
<h5 class="card-title card-title-custom">Independence Day</h5>
        <p class="card-text text-dark">
          Independence Day at Aadarsh Classes is celebrated with pride and enthusiasm. Just like Republic Day, the classroom is beautifully adorned with <strong>lights, flowers, and balloons</strong>, creating a patriotic atmosphere.
        </p>
        <p class="card-text text-dark">
          A key highlight is the <strong>rally that moves through the town of Nampur</strong>, accompanied by a live <strong>band playing patriotic songs</strong>. All students — boys and girls — walk in perfect discipline, proudly carrying the spirit of independence and unity.
        </p>
        <p class="card-text text-dark">
          Dressed uniformly, students represent the values of freedom, respect, and national pride. The event is a moving tribute to India’s independence, blending celebration with deep cultural learning.
        </p>
        <p class="card-text text-muted"><em>Vande Mataram!</em></p>
      </div>
    </div>
  </div>
</div>


      <!-- Annual Gathering -->
      <div class="container py-5">
  <div class="row row-cols-1 g-4">
    <div class="card shadow rounded">
      <!-- Carousel -->
      <div id="carouselGathering" class="carousel slide" data-bs-ride="carousel">
        
        <!-- Indicators -->
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#carouselGathering" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselGathering" data-bs-slide-to="1" aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#carouselGathering" data-bs-slide-to="2" aria-label="Slide 3"></button>
              <button type="button" data-bs-target="#carouselGathering" data-bs-slide-to="3" aria-label="Slide 4"></button>
          <button type="button" data-bs-target="#carouselGathering" data-bs-slide-to="4" aria-label="Slide 5"></button>
          <button type="button" data-bs-target="#carouselGathering" data-bs-slide-to="5" aria-label="Slide6"></button>

        </div>

        <!-- Slides -->
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="images/Gathering/gathering1.JPG" class="d-block w-100 rounded-top" alt="Annual Gathering 1">
          </div>
          <div class="carousel-item">
            <img src="images/Gathering/gathering2.JPG" class="d-block w-100" alt="Annual Gathering 2">
          </div>
          <div class="carousel-item">
            <img src="images/Gathering/gathering3.JPG" class="d-block w-100" alt="Annual Gathering 3">
          </div>
          <div class="carousel-item">
            <img src="images/Gathering/gathering4.JPG" class="d-block w-100" alt="Annual Gathering 4">
          </div>
          <div class="carousel-item">
            <img src="images/Gathering/gathering5.JPG" class="d-block w-100" alt="Annual Gathering 5">
          </div>
          <div class="carousel-item">
            <img src="images/Gathering/gathering6.JPG" class="d-block w-100" alt="Annual Gathering 6">
          </div>
        </div>

        <!-- Navigation Buttons -->
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselGathering" data-bs-slide="prev">
          <span class="carousel-control-prev-icon"></span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselGathering" data-bs-slide="next">
          <span class="carousel-control-next-icon"></span>
        </button>
      </div>

      <!-- Description -->
      <div class="card-body">
<h5 class="card-title card-title-custom">Annual Gathering</h5>
        <p class="card-text text-dark">
          The Annual Gathering at Aadarsh Classes is a grand event that brings together students from <strong>5th to 10th standard</strong> to showcase their talents in <strong>dance, drama, and more</strong>.
        </p>
        <p class="card-text text-dark">
          A unique highlight is the <strong>prize distribution by 10th standard boys</strong>, awarding students for <em>Good Handwriting, 100% Attendance</em>, and honoring parents whose children have been part of Aadarsh Classes from 5th to 10th with a special <strong>Trust Trophy</strong>.
        </p>
        <p class="card-text text-dark">
          Each gathering has a unique title like <em>"The Flower Has an Earthy Scent"</em>, and features <strong>professionally anchored segments</strong> with stunning background music and videos. A <strong>big hall</strong> is reserved, and a <strong>large screen</strong> displays visuals to elevate the experience.
        </p>
        <p class="card-text text-dark">
          Students respectfully offer <strong>shraddhanjali</strong> to those whose parents are no longer with us, honoring their memory with dignity.
        </p>
        <p class="card-text text-dark">
          From <strong>invitation card designs to trophy and bouquet crafting</strong> — everything is created by students, adding a personal and creative touch to the celebration.
        </p>
        <p class="card-text text-dark">
          And finally, the most awaited moment: the secret reveal of the <strong>Student of the Year</strong>, chosen and announced by Sir himself.
        </p>
        <p class="card-text text-muted text-end"><em>Where memories are made, and excellence is honored.</em></p>
      </div>
    </div>
  </div>
</div>


      <!-- Student of the Year -->
      <div class="container py-5">
  <div class="row row-cols-1 g-4">
    <div class="card shadow rounded">
      <!-- Carousel -->
      <div id="carouselSOY" class="carousel slide" data-bs-ride="carousel">
        
        <!-- Indicators -->
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#carouselSOY" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselSOY" data-bs-slide-to="1" aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#carouselSOY" data-bs-slide-to="2" aria-label="Slide 3"></button>
                  <button type="button" data-bs-target="#carouselSOY" data-bs-slide-to="3" aria-label="Slide 4"></button>
          <button type="button" data-bs-target="#carouselSOY" data-bs-slide-to="4" aria-label="Slide 5"></button>
          <button type="button" data-bs-target="#carouselSOY" data-bs-slide-to="5" aria-label="Slide 6"></button>

        </div>

        <!-- Slides -->
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="images/SOY/SOY1.JPG" class="d-block w-100 rounded-top" alt="Student of the Year - 1">
          </div>
          <div class="carousel-item">
            <img src="images/SOY/SOY2.JPG" class="d-block w-100" alt="Student of the Year - 2">
          </div>
          <div class="carousel-item">
            <img src="images/SOY/SOY3.JPG" class="d-block w-100" alt="Student of the Year - 3">
          </div>
          <div class="carousel-item">
            <img src="images/SOY/SOY4.jpg" class="d-block w-100" alt="Student of the Year - 3">
          </div>
          <div class="carousel-item">
            <img src="images/SOY/SOY5.png" class="d-block w-100" alt="Student of the Year - 3">
          </div>
        </div>

        <!-- Navigation -->
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselSOY" data-bs-slide="prev">
          <span class="carousel-control-prev-icon"></span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselSOY" data-bs-slide="next">
          <span class="carousel-control-next-icon"></span>
        </button>
      </div>

      <!-- Content -->
      <div class="card-body">
<h5 class="card-title card-title-custom">Student of the Year</h5>
        <p class="card-text text-dark">
          The <strong>Student of the Year</strong> award at <strong>Adarsh Classes</strong> is the most prestigious recognition presented during the Annual Gathering. It celebrates not only academic brilliance but also discipline, consistency, creativity, and contribution throughout the student's journey at the institute.
        </p>
        <p class="card-text text-dark">
          Eligibility begins with how many years a student has studied at Adarsh Classes — starting from <strong>5th or 6th standard to 10th</strong>. Further points are awarded based on <strong>cultural participation</strong>, <strong>9th grade percentage & marks</strong>, and the <strong>10th first semester results</strong>.
        </p>
        <p class="card-text text-dark">
          Other key criteria include <strong>year-round attendance</strong> and <strong>notebook marks</strong>, reflecting the student’s dedication and attention to detail. All these factors are converted into a final performance percentage.
        </p>
        <p class="card-text text-dark">
          Based on this comprehensive score, the <strong>Top 10 students</strong> are shortlisted. These finalists then face an <strong>audience poll</strong> during the gathering to select the <strong>Top 5 contenders</strong>.
        </p>
        <p class="card-text text-dark">
          In the final round, each of the top 5 students designs a paper for the others. These are shuffled and attempted anonymously. After evaluation, the final scores are kept secret.
        </p>
        <p class="card-text text-dark">
          The winner — the true <strong>Student of the Year</strong> — is known only to <strong>Sharad Sawant Sir</strong>. His name is revealed as a heartfelt surprise at the event’s conclusion.
        </p>
        <p class="card-text text-muted text-end"><em>An award that inspires, a moment remembered forever.</em></p>
      </div>
    </div>
  </div>
</div>


  <!-- Footer -->
  <footer class="text-center py-3">
    <p class="mb-0">© 2025 Aadarsh Classes | All rights reserved</p>
  </footer>

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
