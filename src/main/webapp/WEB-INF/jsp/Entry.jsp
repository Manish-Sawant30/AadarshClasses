<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sign Up | Your Brand</title>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  
  <style>
      :root {
        --primary-color: #4361ee;
        --primary-hover: #3a56d4;
        --secondary-color: #f8f9fa;
        --text-color: #2b2d42;
        --light-text: #8d99ae;
        --border-color: #e9ecef;
        --error-color: #ef233c;
        --success-color: #2ec4b6;
      }
      
      * {
        box-sizing: border-box;
        margin: 0;
        padding: 0;
      }
      
      body {
        margin: 0;
        font-family: 'Poppins', sans-serif;
		background: url("<c:url value='/images/Back2.jpg' />") no-repeat center center fixed;
        background-size: cover;
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        color: var(--text-color);
        line-height: 1.6;
        padding: 20px;
      }

      .container {
        background-color: rgba(255, 255, 255, 0.95);
        padding: 2rem;
        border-radius: 16px;
        box-shadow: 0 15px 35px rgba(0, 0, 0, 0.1);
        width: 100%;
        max-width: 450px;
        position: relative;
        overflow: hidden;
      }

      .container::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 5px;
        background: linear-gradient(90deg, var(--primary-color), #7209b7);
      }

      .logo-container {
        text-align: center;
        margin-bottom: 1.5rem;
      }

      .logo {
        width: 120px;
        height: auto;
        margin-bottom: 1rem;
      }

      .container h2 {
        text-align: center;
        margin-bottom: 1.5rem;
        color: var(--text-color);
        font-weight: 600;
        font-size: 1.5rem;
      }

      .form-group {
        margin-bottom: 1.25rem;
        position: relative;
      }

      .form-group label {
        display: block;
        margin-bottom: 0.5rem;
        font-size: 0.9rem;
        color: var(--text-color);
        font-weight: 500;
      }

      .input-icon {
        position: absolute;
        top: 38px;
        left: 12px;
        color: var(--light-text);
        font-size: 1rem;
      }

      .form-control {
        width: 100%;
        padding: 10px 10px 10px 35px;
        border: 1px solid var(--border-color);
        border-radius: 8px;
        font-size: 0.95rem;
        transition: all 0.3s ease;
        background-color: #f8f9fa;
      }

      .form-control:focus {
        outline: none;
        border-color: var(--primary-color);
        box-shadow: 0 0 0 3px rgba(67, 97, 238, 0.1);
        background-color: #fff;
      }

      .form-control::placeholder {
        color: var(--light-text);
        font-weight: 300;
      }

      .btn {
        display: block;
        width: 100%;
        padding: 12px;
        border-radius: 8px;
        font-size: 1rem;
        font-weight: 500;
        cursor: pointer;
        transition: all 0.3s ease;
        text-align: center;
        border: none;
      }

      .btn-primary {
        background-color: var(--primary-color);
        color: white;
        margin-top: 1rem;
      }

      .btn-primary:hover {
        background-color: var(--primary-hover);
        transform: translateY(-2px);
        box-shadow: 0 5px 15px rgba(67, 97, 238, 0.3);
      }

      .btn-login {
        background: linear-gradient(to right, #8e2de2, #4a00e0);
        border: none;
        color: white;
        margin-top: 1rem;
      }

      .btn-login:hover {
        background: linear-gradient(to right, #6a0dad, #2e008f);
      }

      .divider {
        display: flex;
        align-items: center;
        margin: 1.5rem 0;
        color: var(--light-text);
        font-size: 0.8rem;
      }

      .divider::before,
      .divider::after {
        content: "";
        flex: 1;
        border-bottom: 1px solid var(--border-color);
      }

      .divider::before {
        margin-right: 1rem;
      }

      .divider::after {
        margin-left: 1rem;
      }

      .form-footer {
        text-align: center;
        margin-top: 1.5rem;
        font-size: 0.9rem;
        color: var(--light-text);
      }

      .form-footer a {
        color: var(--primary-color);
        text-decoration: none;
        font-weight: 500;
      }

      .form-footer a:hover {
        text-decoration: underline;
      }

      /* Admin Icon */
      .admin-icon {
        position: absolute;
        top: 20px;
        right: 25px;
        z-index: 999;
      }

      .admin-icon a {
        background: linear-gradient(to right, #1d2671, #c33764);
        color: white;
        padding: 10px 14px;
        border-radius: 50%;
        text-decoration: none;
        font-size: 20px;
        box-shadow: 0 4px 8px rgba(0,0,0,0.2);
        transition: background 0.3s;
      }

      .admin-icon a:hover {
        background: linear-gradient(to right, #16213e, #8a2387);
      }

      /* Responsive adjustments */
      @media (max-width: 768px) {
        body {
          padding: 15px;
          background-attachment: scroll;
        }
        
        .container {
          padding: 1.5rem;
        }
        
        .container h2 {
          font-size: 1.3rem;
        }
        
        .form-control {
          padding: 10px 10px 10px 35px;
          font-size: 0.9rem;
        }
        
        .input-icon {
          top: 36px;
          font-size: 0.9rem;
        }
        
        .logo {
          width: 100px;
        }
      }

      @media (max-width: 480px) {
        .container {
          padding: 1.2rem;
        }
        
        .container h2 {
          font-size: 1.2rem;
          margin-bottom: 1rem;
        }
        
        .form-group {
          margin-bottom: 1rem;
        }
        
        .form-group label {
          font-size: 0.85rem;
        }
        
        .btn {
          padding: 10px;
          font-size: 0.9rem;
        }
        
        .admin-icon {
          top: 15px;
          right: 15px;
        }
        
        .admin-icon a {
          padding: 8px 10px;
          font-size: 18px;
        }
      }

      /* Animation */
      @keyframes fadeIn {
        from {
          opacity: 0;
          transform: translateY(20px);
        }
        to {
          opacity: 1;
          transform: translateY(0);
        }
      }

      .container {
        animation: fadeIn 0.5s ease-out;
      }
    </style>
</head>
<body>
  <div class="container">
    <div class="logo-container">
      <img src="<c:url value='/images/Logo.jpg' />" alt="Company Logo" class="logo">
    </div>
    
    <h2>Create Your Account</h2>
    
    <!-- ✅ Form will call backend controller -->
    <form id="signinForm" action="register" method="post">
      <div class="form-group">
        <label for="name">Full Name</label>
        <i class="fas fa-user input-icon"></i>
        <input type="text" id="name" name="name" class="form-control" required placeholder="Manish Sawant">
      </div>

      <div class="form-group">
        <label for="phone">Phone Number</label>
        <i class="fas fa-phone input-icon"></i>
        <input type="tel" id="phone" name="phone" class="form-control" required placeholder="1234567890" pattern="[0-9]{10}" maxlength="10">
      </div>

      <div class="form-group">
        <label for="email">Email Address</label>
        <i class="fas fa-envelope input-icon"></i>
        <input type="email" id="email" name="email" class="form-control" required placeholder="your@email.com">
      </div>

      <div class="form-group">
        <label for="password">Password</label>
        <i class="fas fa-lock input-icon"></i>
        <input type="password" id="password" name="password" class="form-control" required placeholder="••••••••">
      </div>

      <button type="submit" class="btn btn-primary">Sign Up</button>
      
      <div class="divider">OR</div>
      
      <!-- ✅ redirect to EntryLogin.jsp instead of html -->
	  <a href="${pageContext.request.contextPath}/login" class="btn btn-login">
	      Already Registered? Login
	  </a>    </form>
    
    <div class="form-footer">
      By signing up, you agree to our <a href="#">Terms</a> and <a href="#">Privacy Policy</a>
    </div>
  </div>

  <div class="admin-icon">
	<a href="${pageContext.request.contextPath}/admin/login" title="Admin Login">
	    <i class="fas fa-user-shield"></i>
	</a>

  </div>

</body>
</html>
