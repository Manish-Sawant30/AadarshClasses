<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Admin Login - Aadarsh Classes</title>
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
	            background-color: #f8f9fa;
	            height: 100vh;
	            display: flex;
	            align-items: center;
	            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
	            background-size: 400% 400%;
	            animation: gradientBG 15s ease infinite;
	        }

	        @keyframes gradientBG {
	            0% { background-position: 0% 50%; }
	            50% { background-position: 100% 50%; }
	            100% { background-position: 0% 50%; }
	        }

	        .login-container {
	            max-width: 500px;
	            width: 100%;
	            margin: 0 auto;
	            animation: fadeIn 0.8s ease-out;
	        }

	        @keyframes fadeIn {
	            from { opacity: 0; transform: translateY(20px); }
	            to { opacity: 1; transform: translateY(0); }
	        }

	        .login-card {
	            border: none;
	            border-radius: 15px;
	            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.1);
	            overflow: hidden;
	            transition: transform 0.3s ease, box-shadow 0.3s ease;
	        }

	        .login-card:hover {
	            transform: translateY(-5px);
	            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.15);
	        }

	        .login-header {
	            background: linear-gradient(135deg, var(--primary-color), var(--dark-color));
	            color: white;
	            padding: 25px;
	            text-align: center;
	            position: relative;
	        }

	        .login-header::before {
	            content: '';
	            position: absolute;
	            top: 0;
	            left: 0;
	            width: 100%;
	            height: 100%;
	            background: url('data:image/svg+xml;utf8,<svg viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg" opacity="0.05"><path d="M0,0 L100,0 L100,100 L0,100 Z" fill="white"/></svg>');
	            background-size: 30px 30px;
	        }

	        .login-header h3 {
	            font-weight: 700;
	            margin-bottom: 5px;
	            position: relative;
	        }

	        .login-header p {
	            opacity: 0.8;
	            font-size: 0.9rem;
	            position: relative;
	        }

	        .login-body {
	            padding: 30px;
	            background-color: white;
	        }

	        .form-control {
	            border-radius: 8px;
	            padding: 12px 15px;
	            border: 1px solid #e0e0e0;
	            transition: all 0.3s ease;
	        }

	        .form-control:focus {
	            border-color: var(--secondary-color);
	            box-shadow: 0 0 0 0.25rem rgba(52, 152, 219, 0.25);
	        }

	        .input-group-text {
	            background-color: transparent;
	            border-right: none;
	        }

	        .form-floating > .form-control:not(:placeholder-shown) ~ label {
	            color: var(--secondary-color);
	        }

	        .btn-login {
	            background: linear-gradient(135deg, var(--secondary-color), #2980b9);
	            border: none;
	            border-radius: 8px;
	            padding: 12px;
	            font-weight: 600;
	            letter-spacing: 0.5px;
	            transition: all 0.3s ease;
	            width: 100%;
	            box-shadow: 0 4px 15px rgba(52, 152, 219, 0.3);
	        }

	        .btn-login:hover {
	            background: linear-gradient(135deg, #2980b9, var(--secondary-color));
	            transform: translateY(-2px);
	            box-shadow: 0 6px 20px rgba(52, 152, 219, 0.4);
	        }

	        .forgot-password {
	            color: var(--secondary-color);
	            text-decoration: none;
	            font-size: 0.9rem;
	            transition: all 0.3s ease;
	        }

	        .forgot-password:hover {
	            color: var(--primary-color);
	            text-decoration: underline;
	        }

	        .login-footer {
	            text-align: center;
	            margin-top: 20px;
	            font-size: 0.9rem;
	            color: #666;
	        }

	        .login-footer a {
	            color: var(--secondary-color);
	            text-decoration: none;
	            transition: all 0.3s ease;
	        }

	        .login-footer a:hover {
	            color: var(--primary-color);
	            text-decoration: underline;
	        }

	        .floating-icon {
	            position: absolute;
	            font-size: 1.5rem;
	            color: var(--secondary-color);
	            right: 15px;
	            top: 50%;
	            transform: translateY(-50%);
	            cursor: pointer;
	        }

	        /* Responsive adjustments */
	        @media (max-width: 576px) {
	            .login-container {
	                padding: 0 15px;
	            }
	            
	            .login-body {
	                padding: 20px;
	            }
	        }
		</style>
		</head>
		<body>
		    <div class="container">
		        <div class="login-container">
		            <div class="login-card">
		                <div class="login-header">
		                    <h3><i class="fas fa-lock"></i> Admin Portal</h3>
		                    <p>Secure access to Aadarsh Classes management system</p>
		                </div>
		                <div class="login-body">

		                    <!-- ✅ Show errors or logout messages -->
		                    <c:if test="${param.error == 'true'}">
		                        <div class="alert alert-danger">Invalid username or password.</div>
		                    </c:if>
		                    <c:if test="${param.logout == 'true'}">
		                        <div class="alert alert-success">You have been logged out successfully.</div>
		                    </c:if>

		                    <!-- ✅ Backend form -->
							<form action="${pageContext.request.contextPath}/admin/login" method="post">
							    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
							    
							    <div class="mb-4">
							        <div class="form-floating">
							            <input type="text" class="form-control" id="username" name="username" placeholder="Username" required>
							            <label for="username"><i class="fas fa-user me-2"></i>Username</label>
							        </div>
							    </div>

							    <div class="mb-4 position-relative">
							        <div class="form-floating">
							            <input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
							            <label for="password"><i class="fas fa-key me-2"></i>Password</label>
							            <i class="fas fa-eye floating-icon" id="togglePassword"></i>
							        </div>
							    </div>

							    <button type="submit" class="btn btn-login btn-primary mb-3">
							        <i class="fas fa-sign-in-alt me-2"></i> Login
							    </button>
							</form>

		                </div>
		            </div>
		        </div>
		    </div>

			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>
			<script>
			    // Toggle password visibility
			    const togglePassword = document.querySelector('#togglePassword');
			    const password = document.querySelector('#password');
			    togglePassword.addEventListener('click', function() {
			        const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
			        password.setAttribute('type', type);
			        this.classList.toggle('fa-eye-slash');
			    });
	        
	        // Form validation
	        function validateLogin() {
	            const username = document.getElementById('username').value;
	            const password = document.getElementById('password').value;
	            
	            // Simple validation - replace with your actual validation logic
	            if(username === '' || password === '') {
	                alert('Please enter both username and password');
	                return false;
	            }
	            
	            // Here you would typically send the data to your server for authentication
	            // For demo purposes, we'll just show a success message
	            alert('Login successful! Redirecting to admin dashboard...');
	            
	            // In a real application, you would redirect after successful login
	            // window.location.href = "admin-dashboard.html";
	            
	            return false; // Prevent form submission for this demo
	        }
	        
	        // Add animation to form elements
	        document.querySelectorAll('.form-floating').forEach((element, index) => {
	            element.style.opacity = 0;
	            element.style.transform = 'translateY(20px)';
	            element.style.transition = `all 0.5s ease ${index * 0.1}s`;
	            
	            setTimeout(() => {
	                element.style.opacity = 1;
	                element.style.transform = 'translateY(0)';
	            }, 100);
	        });
	    </script>    ...
</body>
</html>
