<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin Dashboard - Aadarsh Classes</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
  <style>
    body { font-family: 'Poppins', sans-serif; background-color: #f4f6f9; }
    .navbar { background: linear-gradient(135deg, #2c3e50, #34495e); }
    .navbar-brand, .nav-link, .navbar-text { color: #fff !important; }
    .dashboard-container { margin-top: 40px; }
    .card { border-radius: 15px; box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1); transition: transform 0.3s ease; }
    .card:hover { transform: translateY(-5px); }
    .card-icon { font-size: 2.5rem; color: #3498db; }
    .btn-action { margin-right: 5px; }
  </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Admin Dashboard</a>
    <div class="collapse navbar-collapse">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item">
          <span class="navbar-text me-3"> Welcome, <c:out value="${admin.username}" /> </span>
        </li>
        <li class="nav-item">
			<a class="nav-link" href="${pageContext.request.contextPath}/logout">
            <i class="fas fa-sign-out-alt"></i> Logout
          </a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<!-- Dashboard Content -->
<div class="container dashboard-container">
  <div class="row g-4">
    <div class="col-md-4">
      <div class="card text-center p-4">
        <div class="card-icon mb-3"><i class="fas fa-users"></i></div>
        <h5>Total Students</h5>
        <p class="fs-4 fw-bold"><c:out value="${studentCount}" /></p>
      </div>
    </div>
    <div class="col-md-4">
      <div class="card text-center p-4">
        <div class="card-icon mb-3"><i class="fas fa-book"></i></div>
        <h5>Courses</h5>
        <p class="fs-4 fw-bold"><c:out value="${courseCount}" /></p>
      </div>
    </div>
    <div class="col-md-4">
      <div class="card text-center p-4">
        <div class="card-icon mb-3"><i class="fas fa-chalkboard-teacher"></i></div>
        <h5>Teachers</h5>
        <p class="fs-4 fw-bold"><c:out value="${teacherCount}" /></p>
      </div>
    </div>
  </div>
</div>

<!-- Student List Section -->
<div class="container mt-5">
  <h3 class="mb-3">Registered Students</h3>
  <div class="table-responsive">
    <table class="table table-striped table-bordered align-middle">
      <thead class="table-dark">
        <tr>
          <th>#</th>
          <th>Name</th>
          <th>Phone</th>
          <th>Email</th>
          <th>Action</th>
        </tr>
      </thead>
	  <tbody>
	    <c:forEach var="student" items="${students}" varStatus="loop">
	      <tr>
	        <!-- Continuous serial number -->
	        <td>${loop.index + 1}</td>
	        <td><c:out value="${student.name}" /></td>
	        <td><c:out value="${student.phone}" /></td>
	        <td><c:out value="${student.email}" /></td>
	        <td>
	          <!-- ✅ Delete Button -->
	          <a href="${pageContext.request.contextPath}/admin/student/delete/${student.id}" 
	             class="btn btn-sm btn-danger btn-action"
	             onclick="return confirm('Are you sure you want to delete this student?');">
	            <i class="fas fa-trash"></i> Delete
	          </a>
	        </td>
	      </tr>
	    </c:forEach>
	  </tbody>

    </table>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
