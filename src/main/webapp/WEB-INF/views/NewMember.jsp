<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Member</title>
<style>
 {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

body {
  font-family: Arial, sans-serif;
  background-color: #f0f0f0;
}

/* Header Styles */

header {
  background-color: #333;
  color: #fff;
  padding: 20px;
  text-align: center;
}

header h1 {
  font-size: 36px;
  margin-bottom: 10px;
}

/* Form Styles */

form-container {
  max-width: 600px;
  margin: 40px auto;
  padding: 20px;
  background-color: #fff;
  border: 1px solid #ddd;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

form-container label {
  display: block;
  margin-bottom: 10px;
}

form-container input[type="text"], .form-container input[type="email"], .form-container input[type="password"] {
  width: 100%;
  height: 40px;
  margin-bottom: 20px;
  padding: 10px;
  border: 1px solid #ccc;
}

form-container button[type="submit"] {
  width: 100%;
  height: 40px;
  background-color: #333;
  color: #fff;
  padding: 10px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

form-container button[type="submit"]:hover {
  background-color: #555;
}

/* Member Information Styles */

member-info {
  margin-top: 20px;
}

member-info label {
  font-weight: bold;
  margin-bottom: 5px;
}

member-info p {
  margin-bottom: 10px;
}
</style>
</head>
<body>

<form action="savemember" method="post">
	Member Name: <input type="text" name="memberName"/><br><br> 
	Age : <input type="text" name="age"/><br><br> 
	ProfilePhot : <input type="file" name="profilePhoto"/><br><br> 
	
	<input type="submit" value="Save Member"/>

</form>

</body>
</html> --%>
<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
  	<meta charset="utf-8">
	<meta content="width=device-width, initial-scale=1.0" name="viewport">

  	<title>New Role | Expense Manager</title>
  	<meta content="" name="description">
  	<meta content="" name="keywords">
  	
  	<jsp:include page="AdminCss.jsp"></jsp:include>
  	
  	<!-- Favicons -->
  	<link href="assets/img/favicon.png" rel="icon">
  	<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  	<!-- Google Fonts -->	
  	<link href="https://fonts.gstatic.com" rel="preconnect">
  	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  	<!-- Font Awesome -->
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  	
  	<!-- Animate.css -->
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
  	
  	<!-- SweetAlert2 -->
  	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">
  	
  	<style>
  	    /* Custom Styles */
  	    .nen {
  	        background-color: #f8f9fa;
  	        border-radius: 15px;
  	        padding: 20px;
  	        box-shadow: 0 5px 15px rgba(0,0,0,0.05);
  	        margin-bottom: 30px;
  	        animation: fadeIn 0.5s ease-out;
  	    }
  	    
  	    @keyframes fadeIn {
  	        from { opacity: 0; transform: translateY(20px); }
  	        to { opacity: 1; transform: translateY(0); }
  	    }
  	    
  	    .member-form {
  	        max-width: 700px;
  	        margin: 0 auto;
  	        padding: 30px;
  	        background: white;
  	        border-radius: 10px;
  	        box-shadow: 0 5px 25px rgba(0,0,0,0.1);
  	    }
  	    
  	    .form-header {
  	        text-align: center;
  	        margin-bottom: 30px;
  	    }
  	    
  	    .form-header h2 {
  	        color: #4154f1;
  	        font-weight: 700;
  	    }
  	    
  	    .form-group {
  	        margin-bottom: 25px;
  	        position: relative;
  	    }
  	    
  	    .form-group label {
  	        display: block;
  	        margin-bottom: 8px;
  	        font-weight: 600;
  	        color: #4154f1;
  	    }
  	    
  	    .form-control {
  	        width: 100%;
  	        padding: 12px 15px;
  	        border: 2px solid #e9ecef;
  	        border-radius: 8px;
  	        font-size: 16px;
  	        transition: all 0.3s;
  	    }
  	    
  	    .form-control:focus {
  	        border-color: #4154f1;
  	        box-shadow: 0 0 0 3px rgba(65, 84, 241, 0.2);
  	        outline: none;
  	    }
  	    
  	    .btn-submit {
  	        background: linear-gradient(135deg, #4154f1, #6576ff);
  	        color: white;
  	        border: none;
  	        padding: 12px 30px;
  	        font-size: 16px;
  	        font-weight: 600;
  	        border-radius: 8px;
  	        cursor: pointer;
  	        display: block;
  	        width: 100%;
  	        transition: all 0.3s;
  	        box-shadow: 0 4px 15px rgba(65, 84, 241, 0.3);
  	        text-transform: uppercase;
  	        letter-spacing: 1px;
  	    }
  	    
  	    .btn-submit:hover {
  	        transform: translateY(-3px);
  	        box-shadow: 0 6px 20px rgba(65, 84, 241, 0.4);
  	    }
  	    
  	    .btn-submit:active {
  	        transform: translateY(1px);
  	    }
  	    
  	    .input-icon {
  	        position: absolute;
  	        right: 15px;
  	        top: 42px;
  	        color: #6c757d;
  	    }
  	    
  	    /* Floating animation for form */
  	    .member-form {
  	        animation: float 6s ease-in-out infinite;
  	    }
  	    
  	    @keyframes float {
  	        0% { transform: translateY(0px); }
  	        50% { transform: translateY(-10px); }
  	        100% { transform: translateY(0px); }
  	    }
  	    
  	    /* Responsive adjustments */
  	    @media (max-width: 768px) {
  	        .member-form {
  	            padding: 20px;
  	        }
  	        
  	        .form-control {
  	            padding: 10px 12px;
  	        }
  	    }
  	</style>
</head>

<body>

	<jsp:include page="AdminHeader.jsp"></jsp:include>
	<jsp:include page="AdminSidebar.jsp"></jsp:include>

  	<main id="main" class="main">
       <div class="nen animate__animated animate__fadeIn">
    	<div class="pagetitle">
      		<h1>New Member</h1>
      		<nav>
        		<ol class="breadcrumb">
          			<li class="breadcrumb-item"><a href="admindashboard"><i class="fas fa-home"></i> Home</a></li>
          			<li class="breadcrumb-item active">Add New Member</li>
        		</ol>
      		</nav>
    	</div><!-- End Page Title -->

    	<section class="section dashboard">
			<div class="member-form">
				<div class="form-header">
					<h2><i class="fas fa-user-plus me-2"></i> Add New Member</h2>
					<p class="text-muted">Fill in the details below to add a new member</p>
				</div>
				
				<form action="saveuser" method="post" id="memberForm">
					<div class="form-group">
						<label for="MemberId"><i class="fas fa-id-card me-2"></i>Member ID</label>
						<input type="text" id="MemberId" name="MemberId" class="form-control" placeholder="Enter member ID" required>
						<i class="fas fa-id-card input-icon"></i>
					</div>
					
					<div class="form-group">
						<label for="MemberName"><i class="fas fa-user me-2"></i>Member Name</label>
						<input type="text" id="MemberName" name="MemberName" class="form-control" placeholder="Enter member name" required>
						<i class="fas fa-user input-icon"></i>
					</div>
					
					<div class="form-group">
						<label for="age"><i class="fas fa-birthday-cake me-2"></i>Age</label>
						<input type="number" id="age" name="age" class="form-control" placeholder="Enter age" min="1" max="120" required>
						<i class="fas fa-birthday-cake input-icon"></i>
					</div>
					
					<div class="form-group">
						<label for="UserId"><i class="fas fa-key me-2"></i>User ID</label>
						<input type="text" id="UserId" name="UserId" class="form-control" placeholder="Enter user ID" required>
						<i class="fas fa-key input-icon"></i>
					</div>
					
					<div class="form-group">
						<label for="HouseId"><i class="fas fa-home me-2"></i>House ID</label>
						<input type="text" id="HouseId" name="HouseId" class="form-control" placeholder="Enter house ID" required>
						<i class="fas fa-home input-icon"></i>
					</div>
					
					<div class="form-group">
						<label for="ProfilePic"><i class="fas fa-camera me-2"></i>Profile Picture URL</label>
						<input type="text" id="ProfilePic" name="ProfilePic" class="form-control" placeholder="Enter profile picture URL">
						<i class="fas fa-camera input-icon"></i>
					</div>
	                
					<button type="submit" class="btn-submit animate__animated animate__pulse animate__infinite">
					    <i class="fas fa-save me-2"></i> Save Member
					</button>
				</form>
			</div>
    	</section>
       </div>
  	</main><!-- End #main -->

  	<jsp:include page="AdminFooter.jsp"></jsp:include>
	<jsp:include page="AdminJs.jsp"></jsp:include>

  	<!-- Vendor JS Files -->
  	<script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
  	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  	<script src="assets/vendor/chart.js/chart.umd.js"></script>
  	<script src="assets/vendor/echarts/echarts.min.js"></script>
  	<script src="assets/vendor/quill/quill.min.js"></script>
  	<script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
  	<script src="assets/vendor/tinymce/tinymce.min.js"></script>
  	<script src="assets/vendor/php-email-form/validate.js"></script>

  	<!-- SweetAlert2 -->
  	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
  	
  	<script>
  	    // Form submission handling
  	    document.getElementById('memberForm').addEventListener('submit', function(e) {
  	        e.preventDefault();
  	        
  	        // Show loading animation
  	        Swal.fire({
  	            title: 'Saving Member',
  	            html: 'Please wait while we save the member details...',
  	            allowOutsideClick: false,
  	            didOpen: () => {
  	                Swal.showLoading();
  	            }
  	        });
  	        
  	        // Simulate form submission (replace with actual form submission)
  	        setTimeout(() => {
  	            // Submit the form after showing loading animation
  	            this.submit();
  	        }, 1500);
  	    });
  	    
  	    // Check for success message in URL
  	    const urlParams = new URLSearchParams(window.location.search);
  	    const success = urlParams.get('success');
  	    
  	    if(success) {
  	        Swal.fire({
  	            icon: 'success',
  	            title: 'Success!',
  	            text: decodeURIComponent(success),
  	            showConfirmButton: false,
  	            timer: 3000,
  	            position: 'top-end',
  	            toast: true
  	        });
  	        
  	        // Clean the URL
  	        window.history.replaceState({}, document.title, window.location.pathname);
  	    }
  	    
  	    // Input field animations
  	    const inputs = document.querySelectorAll('.form-control');
  	    inputs.forEach(input => {
  	        input.addEventListener('focus', function() {
  	            this.parentElement.classList.add('animate__animated', 'animate__pulse');
  	        });
  	        
  	        input.addEventListener('blur', function() {
  	            this.parentElement.classList.remove('animate__animated', 'animate__pulse');
  	        });
  	    });
  	</script>

</body>
</html> --%>

<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
  	<meta charset="utf-8">
	<meta content="width=device-width, initial-scale=1.0" name="viewport">

  	<title>New Member | Admin Panel</title>
  	<meta content="" name="description">
  	<meta content="" name="keywords">
  	
  	<jsp:include page="AdminCss.jsp"></jsp:include>
  	
  	<!-- Favicons -->
  	<link href="assets/img/favicon.png" rel="icon">
  	<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  	<!-- Google Fonts -->
  	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

  	<!-- Font Awesome -->
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  	
  	<!-- Animate.css -->
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
  	
  	<!-- SweetAlert2 -->
  	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">
  	
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

  	/* Form Container */
  	.nen {
  	    background-color: var(--dark-color);
  	    border-radius: 15px;
  	    padding: 20px;
  	    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
  	    margin-bottom: 30px;
  	    animation: fadeIn 0.5s ease-out;
  	    border: 1px solid var(--border-color);
  	}

  	@keyframes fadeIn {
  	    from { opacity: 0; transform: translateY(20px); }
  	    to { opacity: 1; transform: translateY(0); }
  	}

  	.member-form {
  	    max-width: 700px;
  	    margin: 0 auto;
  	    padding: 30px;
  	    background: var(--card-bg);
  	    border-radius: 10px;
  	    box-shadow: 0 5px 25px rgba(0, 0, 0, 0.3);
  	    backdrop-filter: blur(8px);
  	    border: 1px solid var(--border-color);
  	}

  	.form-header {
  	    text-align: center;
  	    margin-bottom: 30px;
  	}

  	.form-header h2 {
  	    color: var(--primary-color);
  	    font-weight: 700;
  	    position: relative;
  	    display: inline-block;
  	}

  	.form-header h2::after {
  	    content: '';
  	    position: absolute;
  	    bottom: -10px;
  	    left: 50%;
  	    transform: translateX(-50%);
  	    width: 50px;
  	    height: 3px;
  	    background: linear-gradient(90deg, var(--primary-color), var(--accent-color));
  	    border-radius: 3px;
  	}

  	.form-header p {
  	    color: var(--secondary-color);
  	}

  	/* Form Elements */
  	.form-group {
  	    margin-bottom: 25px;
  	    position: relative;
  	}

  	.form-group label {
  	    display: block;
  	    margin-bottom: 8px;
  	    font-weight: 600;
  	    color: var(--secondary-color);
  	}

  	.form-control {
  	    width: 100%;
  	    padding: 12px 15px;
  	    border: 2px solid var(--border-color);
  	    border-radius: 8px;
  	    font-size: 16px;
  	    transition: all 0.3s;
  	    background-color: rgba(255, 255, 255, 0.1);
  	    color: var(--text-color);
  	}

  	.form-control:focus {
  	    border-color: var(--primary-color);
  	    box-shadow: 0 0 0 3px rgba(108, 92, 231, 0.3);
  	    outline: none;
  	    background-color: rgba(255, 255, 255, 0.2);
  	}

  	.input-icon {
  	    position: absolute;
  	    right: 15px;
  	    top: 42px;
  	    color: var(--secondary-color);
  	    transition: all 0.3s;
  	}

  	.form-control:focus + .input-icon {
  	    color: var(--primary-color);
  	    transform: scale(1.2);
  	}

  	/* Submit Button */
  	.btn-submit {
  	    background: linear-gradient(135deg, var(--primary-color), var(--accent-color));
  	    color: white;
  	    border: none;
  	    padding: 12px 30px;
  	    font-size: 16px;
  	    font-weight: 600;
  	    border-radius: 8px;
  	    cursor: pointer;
  	    display: block;
  	    width: 100%;
  	    transition: all 0.4s;
  	    box-shadow: 0 4px 15px rgba(108, 92, 231, 0.4);
  	    text-transform: uppercase;
  	    letter-spacing: 1px;
  	    position: relative;
  	    overflow: hidden;
  	}

  	.btn-submit:hover {
  	    transform: translateY(-3px);
  	    box-shadow: 0 8px 20px rgba(108, 92, 231, 0.6);
  	}

  	.btn-submit:active {
  	    transform: translateY(1px);
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

  	/* Floating animation for form */
  	.member-form {
  	    animation: float 6s ease-in-out infinite;
  	}

  	@keyframes float {
  	    0% { transform: translateY(0px); }
  	    50% { transform: translateY(-10px); }
  	    100% { transform: translateY(0px); }
  	}

  	/* Responsive adjustments */
  	@media (max-width: 768px) {
  	    #main {
  	        margin-left: 0;
  	        padding: 15px;
  	    }
  	    
  	    .member-form {
  	        padding: 20px;
  	    }
  	    
  	    .form-control {
  	        padding: 10px 12px;
  	    }
  	    
  	    .pagetitle h1 {
  	        font-size: 2rem;
  	    }
  	}

  	/* Input field animations */
  	.form-group {
  	    transition: all 0.3s ease;
  	}

  	.form-group:focus-within {
  	    transform: translateX(5px);
  	}
  	</style>
</head>

<body>

	<jsp:include page="AdminHeader.jsp"></jsp:include>
	<jsp:include page="AdminSidebar.jsp"></jsp:include>

  	<main id="main" class="main">
       <div class="nen animate__animated animate__fadeIn">
    	<div class="pagetitle">
      		<h1>New Member</h1>
      		<nav>
        		<ol class="breadcrumb">
          			<li class="breadcrumb-item"><a href="admindashboard"><i class="fas fa-home"></i> Home</a></li>
          			<li class="breadcrumb-item active">Add New Member</li>
        		</ol>
      		</nav>
    	</div>

    	<section class="section dashboard">
			<div class="member-form">
				<div class="form-header">
					<h2><i class="fas fa-user-plus me-2"></i> Add New Member</h2>
					<p class="text-muted">Fill in the details below to add a new member</p>
				</div>
				
				<form action="savemember" method="post" id="memberForm">
					
					
					<div class="form-group">
						<label for="MemberName"><i class="fas fa-user me-2"></i>Member Name</label>
						<input type="text" id="MemberName" name="memberName" class="form-control" placeholder="Enter member name" >
						<i class="fas fa-user input-icon"></i>
					</div>
					
					<div class="form-group">
						<label for="age"><i class="fas fa-birthday-cake me-2"></i>Age</label>
						<input type="number" id="age" name="age" class="form-control" placeholder="Enter age" min="1" max="120" >
						<i class="fas fa-birthday-cake input-icon"></i>
					</div>
					
					
					
					<div class="form-group">
						<label for="HouseId"><i class="fas fa-home me-2"></i>House ID</label>
						<input type="text" id="HouseId" name="houseId" class="form-control" placeholder="Enter house ID" >
						<i class="fas fa-home input-icon"></i>
					</div>
					
					
					<button type="submit" class="btn-submit animate__animated animate__pulse animate__infinite">
					    <i class="fas fa-save me-2"></i> Save Member
					</button>
				</form>
			</div>
    	</section>
       </div>
  	</main>

  	<jsp:include page="AdminFooter.jsp"></jsp:include>
	<jsp:include page="AdminJs.jsp"></jsp:include>

  	<!-- SweetAlert2 -->
  	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
  	
  	<!-- <script>
  	    // Form submission handling
  	    document.getElementById('memberForm').addEventListener('submit', function(e) {
  	        e.preventDefault();
  	        
  	        // Show loading animation
  	        Swal.fire({
  	            title: 'Saving Member',
  	            html: 'Please wait while we save the member details...',
  	            allowOutsideClick: false,
  	            background: 'rgba(30, 30, 30, 0.9)',
  	            color: '#e0e0e0',
  	            didOpen: () => {
  	                Swal.showLoading();
  	            }
  	        });
  	        
  	        // Simulate form submission (replace with actual form submission)
  	        setTimeout(() => {
  	            // Submit the form after showing loading animation
  	        	window.location.href = "/listmembers"
  	        }, 1500);
  	    });
  	    
  	    // Check for success message in URL
  	    const urlParams = new URLSearchParams(window.location.search);
  	    const success = urlParams.get('success');
  	    
  	    if(success) {
  	        Swal.fire({
  	            icon: 'success',
  	            title: 'Success!',
  	            text: decodeURIComponent(success),
  	            showConfirmButton: false,
  	            timer: 3000,
  	            position: 'top-end',
  	            toast: true,
  	            background: 'rgba(30, 30, 30, 0.9)',
  	            color: '#e0e0e0'
  	        });
  	        
  	        // Clean the URL
  	        window.history.replaceState({}, document.title, window.location.pathname);
  	    }
  	    
  	    // Input field animations
  	    const inputs = document.querySelectorAll('.form-control');
  	    inputs.forEach(input => {
  	        input.addEventListener('focus', function() {
  	            this.parentElement.style.transform = 'translateX(5px)';
  	        });
  	        
  	        input.addEventListener('blur', function() {
  	            this.parentElement.style.transform = 'translateX(0)';
  	        });
  	    });
  	</script> -->

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
            <h2 class="text-center">Add New Member</h2>
            <form action="savemember" method="post" class="row g-3">
                <div class="col-12">
                    <label class="form-label">Member Name</label>
                    <input type="text" name="memberName" class="form-control" >
                </div>
                
                <div class="col-12">
                    <label class="form-label">Age</label>
                    <input type="number" name="age" class="form-control">
                </div>
                
                <div class="col-12">
                    <label class="form-label">House No</label>
                    <input type="text" name="houseId" class="form-control" >
                    
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