<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Admission Form - Adarsh Classes</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body { background-color: #fefcf9; font-family: 'Segoe UI', sans-serif; }
    .form-box { max-width: 850px; margin: auto; background: #fff; padding: 25px 30px; border: 2px solid #9e0b33; border-radius: 10px; margin-top: 20px; margin-bottom: 40px; box-shadow: 0 0 15px rgba(0,0,0,0.1); }
    .form-title { background-color: #9e0b33; color: #fff; padding: 12px; text-align: center; font-weight: bold; margin-bottom: 10px; font-size: 20px; }
    .section-title { background-color: #4b0082; color: #fff; padding: 10px; margin-bottom: 20px; font-weight: bold; text-align: center; }
    label { font-weight: 500; }
    .note { font-size: 14px; color: red; text-align: center; margin-top: 10px; }
    .signature { display: flex; justify-content: space-between; margin-top: 40px; }
    .office-use { border: 1px solid #000; padding: 20px; margin-top: 40px; }
    .office-use h5 { background-color: #343a40; color: white; padding: 8px; text-align: center; margin-bottom: 20px; }
    .photo-side-container { display: flex; justify-content: space-between; gap: 20px; align-items: flex-start; }
    .photo-side-left { flex: 2; }
    .photo-side-right { flex: 1; text-align: end; }
    #photoPreview { max-width: 130px; border: 1px solid #000; height: 150px; object-fit: cover; }
  </style>
</head>
<body>
  <div class="form-box">
    <div class="form-title">ADARSH CLASSES & SIGMA LINE COMPUTER ACADEMY, NAMPUR</div>
    <p class="text-center mb-1"><strong>Sharada Chouk, Charphata, Nampur</strong> Tal. Satana Dist. Nashik - 423 204</p>
    <p class="text-center mb-3">Phone: (02555) 234962 | Email: sigmalinecomp@gmail.com</p>
    <div class="section-title">ADMISSION FORM</div>

    <!-- ✅ Connected to backend -->
	<form action="${pageContext.request.contextPath}/admission/save"
	      method="post" enctype="multipart/form-data">

	  <div class="photo-side-container mb-3">
	    <div class="photo-side-left">
	      <div class="row">
	        <div class="col-md-6">
	          <label>Std</label>
	          <input type="text" name="std" class="form-control" required>
	        </div>
	        <div class="col-md-6">
	          <label>Fees</label>
	          <input type="number" name="fees" class="form-control" required>
	        </div>
	      </div>
	    </div>
	    <div class="photo-side-right">
	      <label>Upload Photo:</label>
	      <input type="file" name="photo" id="photoInput" class="form-control mb-2" accept="image/*">
	      <img id="photoPreview" src="" alt="Photo Preview">
	    </div>
	  </div>


      <!-- Student Name -->
      <div class="mb-3">
        <label>Student Name</label>
        <input type="text" name="studentName" class="form-control" required>
      </div>

      <!-- Contact -->
      <div class="mb-3">
        <label>Contact No.</label>
        <input type="text" name="contact" class="form-control" required>
      </div>

      <!-- DOB & Gender -->
      <div class="row mb-3">
        <div class="col-md-6">
          <label>Date of Birth</label>
          <input type="date" name="dob" class="form-control">
        </div>
        <div class="col-md-6">
          <label>Gender</label><br>
          <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="gender" value="Male"> Male
          </div>
          <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="gender" value="Female"> Female
          </div>
        </div>
      </div>

      <!-- Parents -->
      <div class="row mb-3">
        <div class="col-md-6">
          <label>Father's Name</label>
          <input type="text" name="fatherName" class="form-control">
        </div>
        <div class="col-md-6">
          <label>Mother's Name</label>
          <input type="text" name="motherName" class="form-control">
        </div>
      </div>

      <!-- Address -->
      <div class="mb-3">
        <label>Postal Address</label>
        <textarea name="address" class="form-control" rows="2"></textarea>
      </div>

      <p class="note">Please Note: Fees will not be refundable at any cause.</p>

      <!-- Signature -->
      <div class="signature">
        <div><strong>Student Signature</strong></div>
        <div><strong>Parent Signature</strong></div>
      </div>

      <!-- Office Use -->
      <div class="office-use">
        <h5>For Office Use Only</h5>
        <div><strong>Admission Date:</strong> ________________________</div>
        <div><strong>Receipt No.:</strong> ________________________</div>
        <div class="mt-4"><strong>Office Incharge Signature:</strong> ________________________</div>
      </div>

      <!-- Submit -->
      <div class="text-center mt-4">
        <button type="submit" class="btn btn-success">Submit</button>
      </div>
    </form>
  </div>

  <script>
    function previewPhoto() {
      const input = document.getElementById('photoInput');
      const preview = document.getElementById('photoPreview');
      const file = input.files[0];
      const reader = new FileReader();
      reader.onloadend = function () { preview.src = reader.result; }
      if (file) reader.readAsDataURL(file);
      else preview.src = "";
    }
    document.getElementById("photoInput").addEventListener("change", previewPhoto);
  </script>
</body>
</html>
