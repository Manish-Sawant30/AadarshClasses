<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admission Agreement - Aadarsh Classes</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
  <style>
    :root {
      --primary-color: #2c3e50;
      --secondary-color: #3498db;
      --accent-color: #f39c12;
      --light-color: #ecf0f1;
      --dark-color: #1a252f;
    }
    
    body {
      font-family: 'Poppins', sans-serif;
      background: linear-gradient(135deg, #f8f9fa 0%, #e9ecef 100%);
      min-height: 100vh;
      display: flex;
      align-items: center;
      background-image: url('https://images.unsplash.com/photo-1523050854058-8df90110c9f1?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80');
      background-size: cover;
      background-position: center;
      background-attachment: fixed;
      position: relative;
    }
    
    body::before {
      content: '';
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background: rgba(255, 255, 255, 0.9);
      z-index: 0;
    }
    
    .agreement-container {
      max-width: 700px;
      margin: 40px auto;
      background: white;
      border-radius: 15px;
      box-shadow: 0 15px 40px rgba(0, 0, 0, 0.15);
      padding: 50px;
      position: relative;
      z-index: 1;
      border: 1px solid rgba(0, 0, 0, 0.05);
      overflow: hidden;
    }
    
    .agreement-container::before {
      content: '';
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 5px;
      background: linear-gradient(90deg, var(--secondary-color), var(--primary-color));
    }
    
    .agreement-header {
      text-align: center;
      margin-bottom: 30px;
      position: relative;
    }
    
    .agreement-header i {
      font-size: 3rem;
      color: var(--secondary-color);
      margin-bottom: 15px;
      display: inline-block;
      background: rgba(52, 152, 219, 0.1);
      width: 80px;
      height: 80px;
      line-height: 80px;
      border-radius: 50%;
      animation: pulse 2s infinite;
    }
    
    @keyframes pulse {
      0% { transform: scale(1); }
      50% { transform: scale(1.05); }
      100% { transform: scale(1); }
    }
    
    .agreement-header h2 {
      color: var(--primary-color);
      font-weight: 700;
      margin-bottom: 10px;
    }
    
    .agreement-header p {
      color: #666;
      font-size: 1.1rem;
    }
    
    .agreement-content {
      background: rgba(236, 240, 241, 0.3);
      border-radius: 10px;
      padding: 25px;
      margin-bottom: 30px;
      border-left: 4px solid var(--accent-color);
    }
    
    .agreement-points {
      margin-bottom: 30px;
    }
    
    .agreement-point {
      display: flex;
      align-items: flex-start;
      margin-bottom: 15px;
    }
    
    .agreement-point i {
      color: var(--accent-color);
      margin-right: 15px;
      font-size: 1.2rem;
      margin-top: 3px;
    }
    
    .agreement-point p {
      margin: 0;
      color: #444;
      font-size: 1rem;
      line-height: 1.6;
    }
    
    .form-check {
      display: flex;
      align-items: center;
      justify-content: center;
      margin-bottom: 30px;
    }
    
    .form-check-input {
      width: 20px;
      height: 20px;
      margin-right: 10px;
      cursor: pointer;
    }
    
    .form-check-label {
      color: #444;
      font-size: 1rem;
      cursor: pointer;
    }
    
    .btn-agree {
      background: linear-gradient(135deg, var(--secondary-color), #2980b9);
      border: none;
      border-radius: 50px;
      padding: 12px 35px;
      font-weight: 600;
      letter-spacing: 0.5px;
      transition: all 0.3s ease;
      box-shadow: 0 5px 15px rgba(52, 152, 219, 0.3);
      display: inline-flex;
      align-items: center;
      justify-content: center;
    }
    
    .btn-agree:hover {
      background: linear-gradient(135deg, #2980b9, var(--secondary-color));
      transform: translateY(-3px);
      box-shadow: 0 8px 20px rgba(52, 152, 219, 0.4);
    }
    
    .btn-agree i {
      margin-left: 8px;
      transition: transform 0.3s ease;
    }
    
    .btn-agree:hover i {
      transform: translateX(5px);
    }
    
    @media (max-width: 768px) {
      .agreement-container {
        padding: 30px;
        margin: 20px;
      }
      
      .agreement-header i {
        font-size: 2.5rem;
        width: 70px;
        height: 70px;
        line-height: 70px;
      }
      
      .agreement-header h2 {
        font-size: 1.5rem;
      }
    }
    
    @media (max-width: 576px) {
      .agreement-container {
        padding: 25px 20px;
      }
      
      .agreement-content {
        padding: 20px 15px;
      }
      
      .agreement-point {
        flex-direction: column;
      }
      
      .agreement-point i {
        margin-bottom: 8px;
      }
    }
  </style>
</head>
<body>

  <div class="agreement-container">
    <div class="agreement-header">
      <i class="fas fa-file-signature"></i>
      <h2>Admission Agreement</h2>
      <p>Please read the following terms carefully before proceeding</p>
    </div>
    
    <div class="agreement-content">
      <p class="text-center mb-4"><strong>By proceeding with admission, you agree to the following terms and conditions:</strong></p>
      
      <div class="agreement-points">
        <div class="agreement-point">
          <i class="fas fa-exclamation-circle"></i>
          <p>Fees once paid will not be refundable under any circumstances</p>
        </div>
        
        <div class="agreement-point">
          <i class="fas fa-calendar-check"></i>
          <p>Regular attendance is mandatory for all enrolled students</p>
        </div>
        
        <div class="agreement-point">
          <i class="fas fa-clock"></i>
          <p>Classes will begin promptly at the scheduled time</p>
        </div>
        
        <div class="agreement-point">
          <i class="fas fa-book"></i>
          <p>Students must maintain discipline and follow the code of conduct</p>
        </div>
      </div>
    </div>
    
    <div class="form-check">
      <input class="form-check-input" type="checkbox" id="agreeCheckbox">
      <label class="form-check-label" for="agreeCheckbox">
        I have read and agree to all the terms and conditions
      </label>
    </div>
    
    <div class="text-center">
      <button class="btn btn-agree" onclick="goToForm()">
        Proceed to Registration <i class="fas fa-arrow-right"></i>
      </button>
    </div>
  </div>

  <script>
    function goToForm() {
      const checkbox = document.getElementById("agreeCheckbox");
      if (checkbox.checked) {
        window.location.href = "${pageContext.request.contextPath}/registerForm";
      } else {
        alert("⚠️ Please agree to the terms and conditions to continue.");
      }
    }
  </script>


</body>
</html>