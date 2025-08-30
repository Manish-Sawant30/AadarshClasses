<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Admission Form - Print</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body { background-color: #fefcf9; font-family: 'Segoe UI', sans-serif; }
    .form-box { max-width: 850px; margin: auto; background: #fff; padding: 25px 30px; border: 2px solid #9e0b33; border-radius: 10px; margin-top: 20px; margin-bottom: 40px; }
    .form-title { background-color: #9e0b33; color: #fff; padding: 12px; text-align: center; font-weight: bold; margin-bottom: 10px; font-size: 20px; }
    .section-title { background-color: #4b0082; color: #fff; padding: 10px; margin-bottom: 20px; font-weight: bold; text-align: center; }
    label { font-weight: 500; }
    .note { font-size: 14px; color: red; text-align: center; margin-top: 10px; }
    .signature { display: flex; justify-content: space-between; margin-top: 40px; }
    .office-use { border: 1px solid #000; padding: 20px; margin-top: 40px; }
    .office-use h5 { background-color: #343a40; color: white; padding: 8px; text-align: center; margin-bottom: 20px; }
    @media print { .btn-print { display: none; } }
  </style>
</head>
<body>
  <div class="form-box">
    <div class="form-title">ADARSH CLASSES & SIGMA LINE COMPUTER ACADEMY, NAMPUR</div>
    <p class="text-center mb-1"><strong>Sharada Chouk, Charphata, Nampur</strong> Tal. Satana Dist. Nashik - 423 204</p>
    <p class="text-center mb-3">Phone: (02555) 234962 | Email: sigmalinecomp@gmail.com</p>
    <div class="section-title">ADMISSION FORM</div>

    <!-- Std & Fees -->
    <div class="row mb-3">
      <div class="col-md-6">
        <label>Std</label>
        <p class="form-control-plaintext">${admission.std}</p>
      </div>
      <div class="col-md-6">
        <label>Fees</label>
        <p class="form-control-plaintext">₹ ${admission.fees}</p>
      </div>
    </div>

    <div class="mb-3">
      <label>Student Name</label>
      <p class="form-control-plaintext">${admission.studentName}</p>
    </div>

    <div class="mb-3">
      <label>Contact No.</label>
      <p class="form-control-plaintext">${admission.contact}</p>
    </div>

    <div class="row mb-3">
      <div class="col-md-6">
        <label>Date of Birth</label>
        <p class="form-control-plaintext">${admission.dob}</p>
      </div>
      <div class="col-md-6">
        <label>Gender</label>
        <p class="form-control-plaintext">${admission.gender}</p>
      </div>
    </div>

    <div class="row mb-3">
      <div class="col-md-6">
        <label>Father's Name</label>
        <p class="form-control-plaintext">${admission.fatherName}</p>
      </div>
      <div class="col-md-6">
        <label>Mother's Name</label>
        <p class="form-control-plaintext">${admission.motherName}</p>
      </div>
    </div>

    <div class="mb-3">
      <label>Postal Address</label>
      <p class="form-control-plaintext">${admission.address}</p>
    </div>

    <p class="note">Please Note: Fees will not be refundable at any cause.</p>

    <div class="signature">
      <div><strong>Student Signature</strong></div>
      <div><strong>Parent Signature</strong></div>
    </div>

    <div class="office-use">
      <h5>For Office Use Only</h5>
      <div><strong>Admission Date:</strong> ${admission.admissionDate}</div>
      <div><strong>Receipt No.:</strong> _________</div>
      <div class="mt-4"><strong>Office Incharge Signature:</strong> __________________</div>
    </div>

    <!-- Print button -->
    <div class="text-center mt-4">
      <button onclick="window.print()" class="btn btn-primary btn-print">🖨️ Print</button>
    </div>
  </div>
</body>
</html>
