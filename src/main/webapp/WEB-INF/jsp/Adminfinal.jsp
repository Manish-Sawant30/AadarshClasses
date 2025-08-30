<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Aadarsh Classes — Admin Dashboard</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
  <style>
    body {
      background: #f6f9fc;
      font-family: 'Segoe UI', sans-serif;
    }
    .sidebar {
      width: 260px;
      height: 100vh;
      position: fixed;
      top: 0; left: 0;
      background: linear-gradient(180deg,#072540,#0f3a5a);
      color: #fff;
      padding: 20px;
    }
    .sidebar a { color: #fff; text-decoration: none; display: block; margin: 10px 0; }
    .sidebar .nav-link.active { background: rgba(255,255,255,0.1); border-radius: 6px; }
    main { margin-left: 260px; padding: 25px; }
    .card { border-radius: 12px; }
  </style>
</head>
<body>

<!-- Sidebar -->
<div class="sidebar">
  <div class="mb-4">
    <h4>Aadarsh Classes</h4>
    <p class="small">Admin Panel</p>
  </div>
  <nav>
    <!-- ✅ Use Spring routes -->
    <a class="nav-link active" href="${pageContext.request.contextPath}/admin/dashboard">
      <i class="bi bi-speedometer2 me-2"></i> Dashboard
    </a>
    <a class="nav-link" href="${pageContext.request.contextPath}/admin/students">
      <i class="bi bi-people-fill me-2"></i> Students
    </a>
    <a class="nav-link" href="${pageContext.request.contextPath}/admission/panel">
      <i class="bi bi-journal-plus me-2"></i> Admissions
    </a>
  </nav>
  <div class="mt-auto">
    <hr>
    <p class="small">Signed in as <b>Admin</b></p>
    <a href="${pageContext.request.contextPath}/admin/logout" 
       class="btn btn-warning btn-sm w-100">Logout</a>
  </div>
</div>

<!-- Main -->
<main>
  <div class="d-flex justify-content-between align-items-center mb-4">
    <div>
      <h3>Dashboard</h3>
      <p class="text-muted">Overview of institute activity</p>
    </div>
    <div>
      <!-- ✅ Add student via admission form -->
      <a href="${pageContext.request.contextPath}/admission/form" class="btn btn-primary">➕ Add Student</a>
    </div>
  </div>

  <!-- Quick Stats -->
  <div class="row g-3 mb-4">
    <div class="col-md-3">
      <div class="card p-3 text-center">
        <h5>Total Students</h5>
        <p class="h4 text-primary"><c:out value="${studentCount != null ? studentCount : 0}" /></p>
      </div>
    </div>
    <div class="col-md-3">
      <div class="card p-3 text-center">
        <h5>Admissions</h5>
        <p class="h4 text-success"><c:out value="${admissionCount != null ? admissionCount : 0}" /></p>
      </div>
    </div>
    <div class="col-md-3">
      <div class="card p-3 text-center">
        <h5>Pending Fees</h5>
        <p class="h4 text-danger"><c:out value="${pendingFees != null ? pendingFees : 0}" /></p>
      </div>
    </div>
    <div class="col-md-3">
      <div class="card p-3 text-center">
        <h5>Upcoming Classes</h5>
        <p class="h4 text-info"><c:out value="${upcomingClasses != null ? upcomingClasses : 0}" /></p>
      </div>
    </div>
  </div>

  <!-- Welcome -->
  <div class="card p-4">
    <h5>Welcome Admin 👋</h5>
    <p>Use the sidebar to manage Students and Admissions.</p>
  </div>
</main>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
