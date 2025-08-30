<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login | Adarsh Classes</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <style>
    :root {
      --primary: #4361ee;
      --secondary: #3f37c9;
      --accent: #7209b7;
      --success: #4cc9f0;
      --light: #f8f9fa;
      --dark: #212529;
    }

    body {
      background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)), url("<c:url value='/images/backloginpage.jpg' />");
      background-size: cover;
      background-position: center;
      background-attachment: fixed;
      min-height: 100vh;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      display: flex;
      justify-content: center;
      align-items: center;
      color: var(--light);
    }

    .login-card {
      width: 100%;
      max-width: 400px;
      background: rgba(255, 255, 255, 0.1);
      backdrop-filter: blur(10px);
      border-radius: 20px;
      padding: 2.5rem;
      box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
      border: 1px solid rgba(255, 255, 255, 0.1);
      animation: fadeIn 0.8s ease-out;
    }

    .logo-container { text-align: center; margin-bottom: 1.5rem; }
    .logo { width: 100px; height: auto; }

    .heading { text-align: center; margin-bottom: 2rem; }
    .heading h1 { font-weight: 600; color: white; }

    .form-label { color: white; font-weight: 500; }
    .form-control {
      background-color: rgba(255, 255, 255, 0.1);
      border: 1px solid rgba(255, 255, 255, 0.2);
      color: white;
      padding: 12px 15px;
      border-radius: 10px;
    }
    .form-control::placeholder { color: rgba(255, 255, 255, 0.6); }

    .btn-login {
      background: linear-gradient(135deg, var(--primary), var(--accent));
      border: none; padding: 12px;
      font-weight: 600; border-radius: 10px;
      text-transform: uppercase;
    }

    .btn-signup {
      background: transparent;
      border: 2px solid white;
      color: white; padding: 10px;
      border-radius: 10px;
    }
    .btn-signup:hover { background: white; color: var(--dark); }
  </style>
</head>
<body>
  <div class="login-card">
    <div class="logo-container">
      <img src="<c:url value='/images/Logo.jpg' />" alt="Company Logo" class="logo">
    </div>

    <div class="heading"><h1>Welcome Back</h1></div>

    <!-- ✅ Corrected form action -->
    <form action="${pageContext.request.contextPath}/login" method="post">
      <div class="mb-3">
        <label for="phoneInput" class="form-label">Phone Number</label>
        <div class="input-group">
          <span class="input-group-text"><i class="fas fa-phone"></i></span>
          <input type="tel" class="form-control" id="phoneInput" name="phone" 
                 placeholder="Enter your phone number" pattern="[0-9]{10}" maxlength="10" required>
        </div>
      </div>

      <div class="mb-3">
        <label for="passwordInput" class="form-label">Password</label>
        <div class="input-group">
          <span class="input-group-text"><i class="fas fa-lock"></i></span>
          <input type="password" class="form-control" id="passwordInput" name="password" placeholder="Enter your password" required>
          <span class="input-group-text" style="cursor: pointer;" id="togglePassword"><i class="fas fa-eye"></i></span>
        </div>
      </div>

      <!-- ✅ Show error if login fails -->
      <c:if test="${not empty error}">
        <div class="alert alert-danger text-center">${error}</div>
      </c:if>

      <div class="d-grid gap-2">
        <button type="submit" class="btn btn-login">Login</button>
        <a href="${pageContext.request.contextPath}/entry" class="btn btn-signup">Create New Account</a>
      </div>
    </form>
  </div>

  <script>
    // Toggle password visibility
    document.getElementById('togglePassword').addEventListener('click', function() {
      const passwordInput = document.getElementById('passwordInput');
      const icon = this.querySelector('i');
      if (passwordInput.type === 'password') {
        passwordInput.type = 'text';
        icon.classList.replace('fa-eye','fa-eye-slash');
      } else {
        passwordInput.type = 'password';
        icon.classList.replace('fa-eye-slash','fa-eye');
      }
    });
  </script>
</body>
</html>
