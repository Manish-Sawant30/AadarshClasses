<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Admin Panel - Admissions</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body { font-family: 'Segoe UI', sans-serif; background: #f8f9fa; padding: 20px; }
    .container { background: #fff; padding: 25px; border-radius: 10px;
                 box-shadow: 0 4px 15px rgba(0,0,0,0.1); }
    h2 { color: #2c3e50; font-weight: bold; margin-bottom: 20px; }
    thead { background: #2c3e50; color: white; }
    .btn-action { margin-right: 5px; }
  </style>
</head>
<body>
  <div class="container">
    <h2>Admissions List</h2>

    <!-- ✅ Dropdown filter -->
    <form method="get" action="${pageContext.request.contextPath}/admin/admissions" class="mb-3">
      <label for="std" class="form-label">Filter by Standard:</label>
      <select name="std" id="std" class="form-select" onchange="this.form.submit()">
        <option value="All" ${param.std == 'All' ? 'selected' : ''}>All</option>
        <option value="5th" ${param.std == '5th' ? 'selected' : ''}>5th</option>
        <option value="6th" ${param.std == '6th' ? 'selected' : ''}>6th</option>
        <option value="7th" ${param.std == '7th' ? 'selected' : ''}>7th</option>
        <option value="8th" ${param.std == '8th' ? 'selected' : ''}>8th</option>
        <option value="9th" ${param.std == '9th' ? 'selected' : ''}>9th</option>
        <option value="10th" ${param.std == '10th' ? 'selected' : ''}>10th</option>
      </select>
    </form>

    <!-- ✅ Table -->
    <div class="table-responsive">
      <table class="table table-striped table-hover align-middle">
        <thead>
          <tr>
            <th>Sl. No</th> <!-- Changed from ID -->
            <th>Std</th>
            <th>Fees</th>
            <th>Student Name</th>
            <th>Contact</th>
            <th>DOB</th>
            <th>Gender</th>
            <th>Father</th>
            <th>Mother</th>
            <th>Address</th>
            <th>Admission Date</th>
            <th>Action</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach var="a" items="${admissions}" varStatus="loop">
            <tr>
              <!-- ✅ Show serial number instead of DB ID -->
              <td>${loop.index + 1}</td>
              <td>${a.std}</td>
              <td>₹ ${a.fees}</td>
              <td>${a.studentName}</td>
              <td>${a.contact}</td>
              <td><fmt:formatDate value="${a.dob}" pattern="yyyy-MM-dd"/></td>
              <td>${a.gender}</td>
              <td>${a.fatherName}</td>
              <td>${a.motherName}</td>
              <td>${a.address}</td>
              <td><fmt:formatDate value="${a.admissionDate}" pattern="dd-MM-yyyy HH:mm"/></td>
              <td>
                <!-- ✅ Edit -->
                <a href="${pageContext.request.contextPath}/admin/admission/edit/${a.id}" 
                   class="btn btn-sm btn-warning btn-action">Edit</a>

                <!-- ✅ Delete (preserve filter) -->
                <a href="${pageContext.request.contextPath}/admin/admission/delete/${a.id}?std=${param.std}" 
                   class="btn btn-sm btn-danger btn-action"
                   onclick="return confirm('Are you sure you want to delete this admission?');">
                  Delete
                </a>

                <!-- ✅ Print -->
                <a href="${pageContext.request.contextPath}/admission/print/${a.id}" 
                   target="_blank" class="btn btn-sm btn-primary">
                  Print
                </a>
              </td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
    </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
