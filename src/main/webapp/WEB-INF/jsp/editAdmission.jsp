<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Admission</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container mt-5">

<h2>Edit Admission</h2>

<form action="${pageContext.request.contextPath}/admin/admission/update/${admission.id}" method="post">
    <!-- ✅ Standard -->
    <div class="mb-3">
        <label>Standard</label>
        <select name="std" class="form-select">
            <option value="5th" ${admission.std == '5th' ? 'selected' : ''}>5th</option>
            <option value="6th" ${admission.std == '6th' ? 'selected' : ''}>6th</option>
            <option value="7th" ${admission.std == '7th' ? 'selected' : ''}>7th</option>
            <option value="8th" ${admission.std == '8th' ? 'selected' : ''}>8th</option>
            <option value="9th" ${admission.std == '9th' ? 'selected' : ''}>9th</option>
            <option value="10th" ${admission.std == '10th' ? 'selected' : ''}>10th</option>
        </select>
    </div>

    <!-- ✅ Student Name -->
    <div class="mb-3">
        <label>Student Name</label>
        <input type="text" name="studentName" value="${admission.studentName}" class="form-control" required />
    </div>

    <!-- ✅ Fees -->
    <div class="mb-3">
        <label>Fees</label>
        <input type="number" step="0.01" name="fees" value="${admission.fees}" class="form-control" required />
    </div>

    <!-- ✅ Contact -->
    <div class="mb-3">
        <label>Contact</label>
        <input type="text" name="contact" value="${admission.contact}" class="form-control" required />
    </div>

    <!-- ✅ Date of Birth (Fix: format properly for input="date") -->
    <div class="mb-3">
        <label>Date of Birth</label>
        <input type="date" name="dob"
               value="<fmt:formatDate value='${admission.dob}' pattern='yyyy-MM-dd'/>"
               class="form-control" />
    </div>

    <!-- ✅ Gender -->
    <div class="mb-3">
        <label>Gender</label>
        <select name="gender" class="form-select">
            <option value="Male" ${admission.gender == 'Male' ? 'selected' : ''}>Male</option>
            <option value="Female" ${admission.gender == 'Female' ? 'selected' : ''}>Female</option>
            <option value="Other" ${admission.gender == 'Other' ? 'selected' : ''}>Other</option>
        </select>
    </div>

    <!-- ✅ Father's Name -->
    <div class="mb-3">
        <label>Father's Name</label>
        <input type="text" name="fatherName" value="${admission.fatherName}" class="form-control" />
    </div>

    <!-- ✅ Mother's Name -->
    <div class="mb-3">
        <label>Mother's Name</label>
        <input type="text" name="motherName" value="${admission.motherName}" class="form-control" />
    </div>

    <!-- ✅ Address -->
    <div class="mb-3">
        <label>Address</label>
        <textarea name="address" class="form-control">${admission.address}</textarea>
    </div>

    <!-- ✅ Buttons -->
    <button type="submit" class="btn btn-primary">Update</button>
    <a href="${pageContext.request.contextPath}/admin/admissions" class="btn btn-secondary">Cancel</a>
</form>

</body>
</html>
