<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agent Login Portal</title>
    <link rel="stylesheet" href="css/AgentLoginP.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        /* Additional styles for login page */
        .left-panel.signup {
            background: white;
            color: #333;
            justify-content: center;
        }

        .right-panel.signin {
            background: linear-gradient(135deg, #34e7c7 0%, #00a99d 100%);
            color: white;
        }

        .left-panel.signup .create-account {
            color: #333;
            margin-bottom: 30px;
        }

        .forgot-password {
            margin-top: 15px;
            text-align: right;
            width: 100%;
        }

        .forgot-password a {
            color: #777;
            text-decoration: none;
            font-size: 14px;
            transition: all 0.3s ease;
        }

        .forgot-password a:hover {
            color: #00a99d;
        }

        .right-panel.signin .welcome-content {
            margin-top: 0;
        }

        .remember-me {
            display: flex;
            align-items: center;
            margin-top: 10px;
            width: 100%;
        }

        .remember-me input {
            margin-right: 8px;
            width: auto;
            padding: 0;
        }

        .remember-me label {
            color: #777;
            font-size: 14px;
        }

        .sign-in-form input {
            width: 100%;
            padding: 15px 15px 15px 45px;
            border: 1px solid #e0e0e0;
            background-color: #f9f9f9;
            border-radius: 8px;
            font-size: 16px;
            color: #333;
            transition: all 0.3s ease;
        }

        .sign-in-form input:focus {
            outline: none;
            border-color: #00a99d;
            box-shadow: 0 0 0 3px rgba(0, 169, 157, 0.15);
            background-color: white;
        }

        /* Alert styles */
        .alert {
            padding: 15px;
            border-radius: 5px;
            margin-bottom: 20px;
            font-size: 14px;
            width: 100%;
            box-sizing: border-box;
            display: none;
        }

        .alert-success {
            background-color: rgba(76, 175, 80, 0.2);
            color: #2e7d32;
            border: 1px solid rgba(76, 175, 80, 0.5);
        }

        .alert-error {
            background-color: rgba(244, 67, 54, 0.2);
            color: #d32f2f;
            border: 1px solid rgba(244, 67, 54, 0.5);
        }

        .alert-warning {
            background-color: rgba(255, 152, 0, 0.2);
            color: #ef6c00;
            border: 1px solid rgba(255, 152, 0, 0.5);
        }

        .alert-icon {
            margin-right: 10px;
        }

        .close-alert {
            float: right;
            font-weight: bold;
            font-size: 16px;
            line-height: 16px;
            cursor: pointer;
            transition: 0.3s;
        }

        .close-alert:hover {
            color: black;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="left-panel signup">
        <h2 class="create-account">Create Account</h2>
        <p class="or-text">Don't have an account yet?</p>
        <div class="welcome-content" style="color: #333;">
            <p>Enter your personal details and start your journey with us</p>
            <a href="AgentSignUp.jsp" class="sign-in-btn" style="background: linear-gradient(135deg, #34e7c7 0%, #00a99d 100%); border: none; color: white;">SIGN UP</a>
        </div>
    </div>

    <div class="right-panel signin">

        <div class="welcome-content">
            <h1>Welcome Agent Login</h1>
            <p>Sign in to continue access</p>
        </div>

        <%-- Check for and display error message from servlet --%>
        <% String errorMessage = (String) request.getAttribute("errorMessage"); %>
        <% if (errorMessage != null) { %>
            <script type="text/javascript">
                document.addEventListener('DOMContentLoaded', function() {
                    showAlert('error', '<%= errorMessage %>');
                });
            </script>
        <% } %>

        <!-- Alert Message Container -->
        <div id="alertContainer" class="alert" role="alert">
            <span class="alert-icon"><i class="fas fa-exclamation-circle"></i></span>
            <span id="alertMessage"></span>
            <span class="close-alert" onclick="closeAlert()">&times;</span>
        </div>

        <div class="social-login">
            <a href="#" class="social-icon" style="background: rgba(255,255,255,0.1); color: white; border: 1px solid rgba(255,255,255,0.3);"><i class="fab fa-facebook-f"></i></a>
            <a href="#" class="social-icon" style="background: rgba(255,255,255,0.1); color: white; border: 1px solid rgba(255,255,255,0.3);"><i class="fab fa-google-plus-g"></i></a>
            <a href="#" class="social-icon" style="background: rgba(255,255,255,0.1); color: white; border: 1px solid rgba(255,255,255,0.3);"><i class="fab fa-linkedin-in"></i></a>
        </div>

        <p class="or-text" style="color: rgba(255,255,255,0.8);">or use your account:</p>

        <form id="loginForm" class="signup-form sign-in-form" action="${pageContext.request.contextPath}/agentsignin" method="post">
            <div class="input-group">
                <span class="input-icon" style="color: rgba(255,255,255,0.8);"><i class="fas fa-envelope"></i></span>
                <input type="email" name="email" id="email" placeholder="Email" required style="background: rgba(255,255,255,0.1); border: 1px solid rgba(255,255,255,0.3); color: white;">
            </div>

            <div class="input-group">
                <span class="input-icon" style="color: rgba(255,255,255,0.8);"><i class="fas fa-lock"></i></span>
                <input type="password" name="password" id="password" placeholder="Password" required style="background: rgba(255,255,255,0.1); border: 1px solid rgba(255,255,255,0.3); color: white;">
            </div>

            <div class="remember-me">
                <input type="checkbox" id="remember" name="remember">
                <label for="remember" style="color: white;">Remember me</label>
                <div class="forgot-password">
                    <a href="#" style="color: rgba(255,255,255,0.8);">Forgot Password?</a>
                </div>
            </div>

            <button type="submit" class="sign-up-btn" style="background: white; color: #00a99d; box-shadow: 0 5px 15px rgba(255, 255, 255, 0.2);">SIGN IN</button>
        </form>
    </div>
</div>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        // Check for URL parameters that might indicate login status
        const urlParams = new URLSearchParams(window.location.search);
        const errorMsg = urlParams.get('error');
        const successMsg = urlParams.get('success');
        const warningMsg = urlParams.get('warning');

        if (errorMsg) {
            showAlert('error', decodeURIComponent(errorMsg));
        } else if (successMsg) {
            showAlert('success', decodeURIComponent(successMsg));
        } else if (warningMsg) {
            showAlert('warning', decodeURIComponent(warningMsg));
        }

        // Add client-side validation
        const loginForm = document.getElementById('loginForm');
        if (loginForm) {
            loginForm.addEventListener('submit', function(e) {
                const email = document.getElementById('email').value;
                const password = document.getElementById('password').value;

                if (!email || !password) {
                    e.preventDefault();
                    showAlert('error', 'Please fill in all required fields');
                    return false;
                }

                // Basic email validation
                const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                if (!emailPattern.test(email)) {
                    e.preventDefault();
                    showAlert('error', 'Please enter a valid email address');
                    return false;
                }

                // Password length check
                if (password.length < 6) {
                    e.preventDefault();
                    showAlert('warning', 'Password should be at least 6 characters');
                    return false;
                }

                return true;
            });
        }
    });

    // Function to show alert message
    function showAlert(type, message) {
        const alertContainer = document.getElementById('alertContainer');
        const alertMessage = document.getElementById('alertMessage');
        const alertIcon = document.querySelector('.alert-icon i');

        if (alertContainer && alertMessage) {
            // Set message
            alertMessage.textContent = message;

            // Set alert type
            alertContainer.className = 'alert';
            if (type === 'error') {
                alertContainer.classList.add('alert-error');
                alertIcon.className = 'fas fa-exclamation-circle';
            } else if (type === 'success') {
                alertContainer.classList.add('alert-success');
                alertIcon.className = 'fas fa-check-circle';
            } else if (type === 'warning') {
                alertContainer.classList.add('alert-warning');
                alertIcon.className = 'fas fa-exclamation-triangle';
            }

            // Show alert
            alertContainer.style.display = 'block';

            // Auto-hide after 5 seconds
            setTimeout(function() {
                alertContainer.style.display = 'none';
            }, 5000);
        }
    }

    // Function to close alert
    function closeAlert() {
        const alertContainer = document.getElementById('alertContainer');
        if (alertContainer) {
            alertContainer.style.display = 'none';
        }
    }

    // For demo purposes, you can test different alerts
    // Example: showAlert('error', 'Invalid username or password');
    // Example: showAlert('success', 'Login successful!');
    // Example: showAlert('warning', 'Your account will be deactivated soon');
</script>
</body>
</html>