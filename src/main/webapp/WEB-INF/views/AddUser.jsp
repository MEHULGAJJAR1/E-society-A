<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
  	<meta charset="utf-8">
	<meta content="width=device-width, initial-scale=1.0" name="viewport">

  	<title>E-society</title>
  	<meta content="" name="description">
  	<meta content="" name="keywords">
  	<jsp:include page="AdminCss.jsp"></jsp:include>

  	<!-- Favicons -->
  	<link href="assets/img/favicon.png" rel="icon">
  	<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  	<!-- Font Awesome -->
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

  	<!-- Google Fonts -->
  	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

  	<!-- Bootstrap CSS -->
  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
	
  	<!-- Template Main CSS File -->
  	<link href="assets/css/style.css" rel="stylesheet">
  	
  	<style>
  	:root {
  	    --primary-color: #6c5ce7;
  	    --secondary-color: #a29bfe;
  	    --accent-color: #00cec9;
  	    --dark-color: #121212;
  	    --light-color: #f5f6fa;
  	    --text-color: #e0e0e0;
  	    --card-bg: rgba(30, 30, 30, 0.8);
  	    --border-color: rgba(255, 255, 255, 0.1);
  	}

  	body {
  	    background-color: #000;
  	    color: var(--text-color);
  	    font-family: 'Poppins', sans-serif;
  	    background-image: 
  	        radial-gradient(circle at 25% 25%, rgba(108, 92, 231, 0.1) 0%, transparent 50%),
  	        radial-gradient(circle at 75% 75%, rgba(0, 206, 201, 0.1) 0%, transparent 50%);
  	    background-size: 200% 200%;
  	    animation: gradientBG 15s ease infinite;
  	}

  	@keyframes gradientBG {
  	    0% { background-position: 0% 0%; }
  	    50% { background-position: 100% 100%; }
  	    100% { background-position: 0% 0%; }
  	}

  	/* Main Content */
  	#main {
  	    margin-left: 300px;
  	    padding: 20px 30px;
  	    transition: all 0.4s;
  	    background-color: rgba(0, 0, 0, 0.7);
  	    min-height: 100vh;
  	}

  	.pagetitle h1 {
  	    font-size: 2.5rem;
  	    font-weight: 700;
  	    color: var(--text-color);
  	    text-shadow: 0 2px 10px rgba(108, 92, 231, 0.3);
  	}

  	.breadcrumb {
  	    background-color: transparent;
  	    padding: 0;
  	}

  	.breadcrumb-item a {
  	    color: var(--secondary-color);
  	    text-decoration: none;
  	    transition: all 0.3s;
  	}

  	.breadcrumb-item a:hover {
  	    color: var(--accent-color);
  	    text-decoration: underline;
  	}

  	.breadcrumb-item.active {
  	    color: var(--light-color);
  	}

  	/* Card Styles */
  	.card {
  	    background: var(--card-bg);
  	    border-radius: 15px;
  	    box-shadow: 0 8px 32px rgba(0, 0, 0, 0.3);
  	    transition: all 0.4s ease;
  	    backdrop-filter: blur(8px);
  	    border: 1px solid var(--border-color);
  	    overflow: hidden;
  	}

  	.card:hover {
  	    transform: translateY(-5px);
  	    box-shadow: 0 12px 40px rgba(0, 0, 0, 0.5);
  	}

  	.card-body {
  	    padding: 30px;
  	}

  	.section-title {
  	    position: relative;
  	    padding-bottom: 15px;
  	    margin-bottom: 30px;
  	    color: var(--primary-color);
  	    font-size: 1.8rem;
  	}

  	.section-title:after {
  	    content: '';
  	    position: absolute;
  	    bottom: 0;
  	    left: 0;
  	    width: 60px;
  	    height: 3px;
  	    background: linear-gradient(135deg, var(--primary-color), var(--accent-color));
  	    border-radius: 3px;
  	}

  	/* Form Styles */
  	.form-control, .form-select {
  	    background-color: rgba(255, 255, 255, 0.1);
  	    border: 1px solid var(--border-color);
  	    color: var(--text-color);
  	    border-radius: 8px;
  	    padding: 12px 15px;
  	    transition: all 0.3s ease;
  	}

  	.form-control:focus, .form-select:focus {
  	    background-color: rgba(255, 255, 255, 0.2);
  	    border-color: var(--primary-color);
  	    box-shadow: 0 0 0 3px rgba(108, 92, 231, 0.3);
  	    color: var(--text-color);
  	}

  	.form-label {
  	    font-weight: 600;
  	    color: var(--secondary-color);
  	    margin-bottom: 8px;
  	}

  	.invalid-feedback {
  	    color: #f72585;
  	}

  	.was-validated .form-control:invalid, 
  	.was-validated .form-select:invalid {
  	    border-color: #f72585;
  	    background-image: none;
  	}

  	.was-validated .form-control:invalid:focus, 
  	.was-validated .form-select:invalid:focus {
  	    box-shadow: 0 0 0 3px rgba(247, 37, 133, 0.25);
  	}

  	/* Button Styles */
  	.btn-submit {
  	    background: linear-gradient(135deg, var(--primary-color), var(--accent-color));
  	    border: none;
  	    padding: 12px 30px;
  	    border-radius: 50px;
  	    font-weight: 600;
  	    letter-spacing: 0.5px;
  	    transition: all 0.4s ease;
  	    position: relative;
  	    overflow: hidden;
  	    box-shadow: 0 5px 15px rgba(108, 92, 231, 0.4);
  	    text-transform: uppercase;
  	}

  	.btn-submit:hover {
  	    background: linear-gradient(135deg, var(--accent-color), var(--primary-color));
  	    transform: translateY(-3px);
  	    box-shadow: 0 8px 20px rgba(108, 92, 231, 0.6);
  	}

  	.btn-submit:active {
  	    transform: translateY(0);
  	}

  	.btn-submit::after {
  	    content: '';
  	    position: absolute;
  	    top: 0;
  	    left: -100%;
  	    width: 100%;
  	    height: 100%;
  	    background: linear-gradient(
  	        90deg,
  	        transparent,
  	        rgba(255, 255, 255, 0.2),
  	        transparent
  	    );
  	    transition: all 0.5s ease;
  	}

  	.btn-submit:hover::after {
  	    left: 100%;
  	}

  	/* Gender Icons */
  	.gender-icon {
  	    margin-right: 8px;
  	    color: var(--primary-color);
  	}

  	/* Back to Top Button */
  	.back-to-top {
  	    position: fixed;
  	    bottom: 20px;
  	    right: 20px;
  	    width: 50px;
  	    height: 50px;
  	    border-radius: 50%;
  	    background: linear-gradient(135deg, var(--primary-color), var(--accent-color));
  	    color: white;
  	    display: flex;
  	    align-items: center;
  	    justify-content: center;
  	    text-decoration: none;
  	    box-shadow: 0 4px 15px rgba(108, 92, 231, 0.4);
  	    transition: all 0.3s;
  	    z-index: 999;
  	    opacity: 0;
  	    visibility: hidden;
  	}

  	.back-to-top.active {
  	    opacity: 1;
  	    visibility: visible;
  	}

  	.back-to-top:hover {
  	    transform: translateY(-3px);
  	    box-shadow: 0 8px 20px rgba(108, 92, 231, 0.6);
  	}

  	/* Responsive Adjustments */
  	@media (max-width: 1199px) {
  	    #main {
  	        margin-left: 0;
  	    }
  	}

  	@media (max-width: 768px) {
  	    .section-title {
  	        font-size: 1.5rem;
  	    }
  	    
  	    .card-body {
  	        padding: 20px;
  	    }
  	}

  	/* Input Animation */
  	@keyframes inputFocus {
  	    0% { transform: scale(1); }
  	    50% { transform: scale(1.02); }
  	    100% { transform: scale(1); }
  	}

  	.form-control:focus, .form-select:focus {
  	    animation: inputFocus 0.3s ease;
  	}

  	/* Floating Animation */
  	@keyframes float {
  	    0% { transform: translateY(0px); }
  	    50% { transform: translateY(-5px); }
  	    100% { transform: translateY(0px); }
  	}

  	.card {
  	    animation: float 6s ease-in-out infinite;
  	}
  	</style>
</head>

<body>

	<jsp:include page="AdminHeader.jsp"></jsp:include>
	<jsp:include page="AdminSidebar.jsp"></jsp:include>

  	<main id="main" class="main">
       <div class="nen">
    	<div class="pagetitle">
      		<h1>New User Registration</h1>
      		<nav>
        		<ol class="breadcrumb">
          			<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
          			<li class="breadcrumb-item active">New User</li>
        		</ol>
      		</nav>
    	</div>

    	<section class="section dashboard">
    	   <div class="row">
    	       <div class="col-lg-8 mx-auto">
    	           <div class="card">
    	               <div class="card-body">
    	                   <h5 class="card-title section-title">Vehicle Information</h5>
    	                   
    	                   <form action="saveuser" method="post" enctype="multipart/form-data" class="row g-3 needs-validation" >
    	                       <div class="col-md-6">
    	                           <label for="firstName" class="form-label">First Name</label>
    	                           <input type="text" class="form-control" id="firstName" name="firstName" >
    	                           <div class="invalid-feedback">
    	                               Please enter first name.
    	                           </div>
    	                       </div>
    	                       
    	                       <div class="col-md-6">
    	                           <label for="lastName" class="form-label">Last Name</label>
    	                           <input type="text" class="form-control" id="lastName" name="lastName" >
    	                           <div class="invalid-feedback">
    	                               Please enter last name.
    	                           </div>
    	                       </div>
    	                       
    	                       <div class="col-md-6">
    	                           <label for="gender" class="form-label">Gender</label>
    	                           <select class="form-select" id="gender" name="gender" >
                                       <option value="" selected disabled>Select Gender</option>
                                       <option value="male"><i class="fas fa-mars gender-icon"></i> Male</option>
                                       <option value="female"><i class="fas fa-venus gender-icon"></i> Female</option>
                                       <option value="trans"><i class="fas fa-transgender gender-icon"></i> Transgender</option>
                                       <option value="other"><i class="fas fa-genderless gender-icon"></i> Other</option>
                                   </select>
                                   <div class="invalid-feedback">
                                       Please select gender.
                                   </div>
    	                       </div>
    	                       
    	               
    	                       
    	                       <div class="col-md-6">
    	                           <label for="email" class="form-label">Email</label>
    	                           <input type="email" class="form-control" id="email" name="email" >
    	                           <div class="invalid-feedback">
    	                               Please enter a valid email.
    	                           </div>
    	                       </div>
    	                       
    	                       <div class="col-md-6">
    	                           <label for="contactNum" class="form-label">Contact Number</label>
    	                           <input type="text" class="form-control" id="contactNum" name="contactNum" >
    	                           <div class="invalid-feedback">
    	                               Please enter contact number.
    	                           </div>
    	                       </div>
    	                       
    	                       <div class="col-md-6">
    	                           <label for="password" class="form-label">Password</label>
    	                           <div class="input-group">
    	                               <input type="password" class="form-control" id="password" name="password" >
    	                               <span class="input-group-text toggle-password" style="cursor: pointer;">
    	                                   <i class="fas fa-eye"></i>
    	                               </span>
    	                           </div>
    	                           <div class="invalid-feedback">
    	                               Please enter password.
    	                           </div>
    	                       </div>
    	                       
    	                       <div class="col-md-6">
    <label for="profilePic" class="form-label">Upload Photo</label>
    <div class="input-group">
        <input type="file" class="form-control" id="profilePic" name="profilePic">
        <span class="input-group-text" style="cursor: pointer;">
            <i class="fas fa-upload"></i>
        </span>
    </div>
    <div class="invalid-feedback">
        Please upload a valid photo.
    </div>
</div>

    	                       
    	                       <div class="col-12 text-center mt-4">
    	                           <button class="btn btn-submit" type="submit">Register Member</button>
    	                       </div>
    	                   </form>
    	               </div>
    	           </div>
    	       </div>
    	   </div>
    	</section>
       </div>
  	</main>

  	<jsp:include page="AdminFooter.jsp"></jsp:include>
	<jsp:include page="AdminJs.jsp"></jsp:include>

  	<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="fas fa-arrow-up"></i></a>

  	<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
  	
  	<script>
  	// Form validation
  	(function () {
  	  'use strict'
  	
  	  // Fetch all the forms we want to apply custom Bootstrap validation styles to
  	  var forms = document.querySelectorAll('.needs-validation')
  	
  	  // Loop over them and prevent submission
  	  Array.prototype.slice.call(forms)
  	    .forEach(function (form) {
  	      form.addEventListener('submit', function (event) {
  	        if (!form.checkValidity()) {
  	          event.preventDefault()
  	          event.stopPropagation()
  	        }
  	        
  	        // Check if passwords match
  	        var password = document.getElementById('password').value;
  	        var confirmPassword = document.getElementById('confirmPassword').value;
  	        
  	        if (password !== confirmPassword) {
  	            document.getElementById('confirmPassword').setCustomValidity("Passwords must match");
  	            event.preventDefault()
  	            event.stopPropagation()
  	        } else {
  	            document.getElementById('confirmPassword').setCustomValidity('');
  	        }
  	        
  	        form.classList.add('was-validated')
  	      }, false)
  	    })
  	})()
  	
  	// Password toggle visibility
  	document.querySelectorAll('.toggle-password').forEach(function(icon) {
  	    icon.addEventListener('click', function() {
  	        const input = this.parentElement.querySelector('input');
  	        if (input.type === 'password') {
  	            input.type = 'text';
  	            this.innerHTML = '<i class="fas fa-eye-slash"></i>';
  	        } else {
  	            input.type = 'password';
  	            this.innerHTML = '<i class="fas fa-eye"></i>';
  	        }
  	    });
  	});
  	
  	// Back to top button
  	window.addEventListener('scroll', function() {
  	    const backToTopButton = document.querySelector('.back-to-top');
  	    if (window.pageYOffset > 300) {
  	        backToTopButton.classList.add('active');
  	    } else {
  	        backToTopButton.classList.remove('active');
  	    }
  	});
  	
  	// Add animation to form elements when focused
  	document.querySelectorAll('.form-control, .form-select').forEach(element => {
  	    element.addEventListener('focus', function() {
  	        this.parentElement.style.transform = 'scale(1.02)';
  	        this.parentElement.style.transition = 'transform 0.3s ease';
  	    });
  	    
  	    element.addEventListener('blur', function() {
  	        this.parentElement.style.transform = 'scale(1)';
  	    });
  	});
  	</script>
</body>
</html> --%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>New Role | Expense Manager</title>
    
    <jsp:include page="AdminCss.jsp"></jsp:include>
    
    <link href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">
    
    <style>
        body {
            background: linear-gradient(135deg, #1e1e2f, #2a2a40);
            color: #fff;
            font-family: 'Poppins', sans-serif;
        }
        .form-container {
            max-width: 600px;
            margin: 50px auto;
            padding: 30px;
            background: rgba(0, 0, 0, 0.8);
            border-radius: 10px;
            box-shadow: 0px 0px 20px rgba(255, 255, 255, 0.2);
        }
        input, button {
            border-radius: 5px;
        }
        .btn-primary {
            width: 100%;
        }
        #photoPreview {
            display: none;
            width: 100px;
            border-radius: 5px;
            margin-top: 10px;
        }
    </style>
</head>

<body>
    <jsp:include page="AdminHeader.jsp"></jsp:include>
    <jsp:include page="AdminSidebar.jsp"></jsp:include>
    
    <main id="main" class="main">
        <div class="form-container">
            <h2 class="text-center">Add New User</h2>
            <form action="addusers" method="post" enctype="multipart/form-data" class="row g-3">
                <div class="col-12">
                    <label class="form-label">First Name</label>
                    <input type="text" name="firstName" class="form-control" >
                </div>
                
                <div class="col-12">
                    <label class="form-label">Last Name</label>
                    <input type="text" name="lastName" class="form-control" >
                </div>
                
                <div class="col-12">
    				<label class="form-label">Gender</label>
    					<select name="gender" class="form-select">
      						  <option value="" disabled selected>Select Gender</option>
      						  <option value="male">Male</option>
     						   <option value="female">Female</option>
        					<option value="other">Other</option>
    					</select>
				</div>

                
               
                <div class="col-12">
                    <label class="form-label">Contect No</label>
                    <input type="tel" name="contactNum" class="form-control">
                </div>
                
                <div class="col-12">
                    <label class="form-label">Email</label>
                    <input type="email" name="email" class="form-control">
                </div>
                
                <div class="col-12">
                    <label class="form-label">Password</label>
                    <input type="password" name="password" class="form-control">
                </div>
                
                <div class="col-12">
                    <label class="form-label">Profile Photo</label>
                    <input type="file" name="profilePic" class="form-control" id="profilePhoto" accept="image/*">
                    <img id="photoPreview"/>
                </div>
                
                <div class="col-12">
                    <button type="submit" class="btn btn-primary">Save Member</button>
                </div>
            </form>
        </div>
    </main>

    <jsp:include page="AdminJs.jsp"></jsp:include>
    
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#profilePhoto').change(function(event) {
                let reader = new FileReader();
                reader.onload = function(e) {
                    $('#photoPreview').attr('src', e.target.result).show();
                }
                reader.readAsDataURL(event.target.files[0]);
            });
        });
    </script>
</body>
</html>