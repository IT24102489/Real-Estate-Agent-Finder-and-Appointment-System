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
    <div class="left-panel">

        <div class="welcome-content">
            <h1>Welcome Agent Log in!</h1>
            <p>To keep connected with us please log in with your personal info</p>
            <a href="AgentSignIn.jsp" class="sign-in-btn">SIGN IN</a>
        </div>
    </div>

    <div class="right-panel">
        <h2 class="create-account">Create Account</h2>

        <!-- Alert Message Container -->
        <div id="alertContainer" class="alert" role="alert">
            <span class="alert-icon"><i class="fas fa-exclamation-circle"></i></span>
            <span id="alertMessage"></span>
            <span class="close-alert" onclick="closeAlert()">&times;</span>
        </div>

        <div class="social-login">
            <a href="#" class="social-icon"><i class="fab fa-facebook-f"></i></a>
            <a href="#" class="social-icon"><i class="fab fa-google-plus-g"></i></a>
            <a href="#" class="social-icon"><i class="fab fa-linkedin-in"></i></a>
        </div>

        <p class="or-text">or use your email for registration:</p>

        <%-- Check for and display error message from servlet --%>
        <% String errorMessage = (String) request.getAttribute("errorMessage"); %>
        <% if (errorMessage != null) { %>
            <script type="text/javascript">
                document.addEventListener('DOMContentLoaded', function() {
                    showAlert('error', '<%= errorMessage %>');
                });
            </script>
        <% } %>

        <form id="signupForm" class="signup-form" action="${pageContext.request.contextPath}/agentregister" method="post">
            <div class="input-group">
                <span class="input-icon"><i class="fas fa-user"></i></span>
                <input type="text" name="name" id="name" placeholder="Name" required>
            </div>

            <div class="input-group">
                <span class="input-icon"><i class="fas fa-envelope"></i></span>
                <input type="email" name="email" id="email" placeholder="Email" required>
            </div>

            <div class="input-group">
                <span class="input-icon"><i class="fas fa-building"></i></span>
                <input type="text" name="businessname" id="businessname" placeholder="Business Name">
            </div>

            <div class="input-group">
                <span class="input-icon"><i class="fas fa-lock"></i></span>
                <input type="password" name="password" id="password" placeholder="Password" required>
            </div>

            <div class="input-group">
                <span class="input-icon"><i class="fas fa-lock"></i></span>
                <input type="password" name="confirmPassword" id="confirmPassword" placeholder="Re-enter Password" required>
            </div>

            <button type="submit" class="sign-up-btn">SIGN UP</button>
        </form>
    </div>
</div>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        // Check for URL parameters that might indicate registration status
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

        // Add client-side validation for the signup form
        const signupForm = document.getElementById('signupForm');
        if (signupForm) {
            signupForm.addEventListener('submit', function(e) {
                const name = document.getElementById('name').value;
                const email = document.getElementById('email').value;
                const password = document.getElementById('password').value;
                const confirmPassword = document.getElementById('confirmPassword').value;

                // Check if required fields are filled
                if (!name || !email || !password || !confirmPassword) {
                    e.preventDefault();
                    showAlert('error', 'Please fill in all required fields');
                    return false;
                }

                // Email validation
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

                // Password match check
                if (password !== confirmPassword) {
                    e.preventDefault();
                    showAlert('error', 'Passwords do not match');
                    return false;
                }

                return true;
            });
        }

        // Make sure the welcome content section is properly sized
        const welcomeContent = document.querySelector('.welcome-content');
        const leftPanel = document.querySelector('.left-panel');
        const rightPanel = document.querySelector('.right-panel');

        // Ensure there's enough space for the button
        if (window.innerWidth <= 900) {
            leftPanel.style.minHeight = '300px';
        }

        // Force repaint to ensure button visibility
        const signInBtn = document.querySelector('.sign-in-btn');
        if (signInBtn) {
            signInBtn.style.display = 'inline-block';
            signInBtn.style.opacity = '0.99';
            setTimeout(() => {
                signInBtn.style.opacity = '1';
            }, 10);
        }

        // Add some padding to the bottom of the form to ensure scrollability
        const form = document.querySelector('.signup-form');
        if (form) {
            form.style.paddingBottom = '20px';
        }

        // Focus handling for form inputs
        const formInputs = document.querySelectorAll('.signup-form input');
        formInputs.forEach(input => {
            input.addEventListener('focus', function() {
                // Ensure the input is visible when focused (for mobile)
                if (window.innerWidth <= 900) {
                    setTimeout(() => {
                        this.scrollIntoView({ behavior: 'smooth', block: 'center' });
                    }, 300);
                }
            });
        });
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
    // Example: showAlert('error', 'Email address already exists');
    // Example: showAlert('success', 'Account created successfully!');
    // Example: showAlert('warning', 'Please use a stronger password');
</script>
</body>
</html>