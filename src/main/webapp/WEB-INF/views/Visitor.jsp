<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Visitor</title>
</head>
<body>

<h2>Visitor</h2>
	<form action="savevisitor" method="post">

		visitorcategoryId : <input type="text" name="visitorcategoryId" /><Br>
		houseId : <input type="text" name="houseId" /><Br>
		purpose : <input type="text" name="purpose" /><Br>
		date : <input type="text" name="date" /><Br>
		allowed : <input type="text" name="allowed" /><Br>
		visitorName : <input type="text" name="visitorName" /><Br>
		moblieNumber : <input type="text" name="moblieNumber" /><Br>
		profilePhoto : <input type="text" name="profilePhoto" /><Br>
		entryTime : <input type="text" name="entryTime" /><Br>
		exitTime : <input type="text" name="exitTime" /><Br>
		
		<br> <input type="submit" value="Save Visitor" />

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

  	<title>New User</title>
  	<meta content="" name="description">
  	<meta content="" name="keywords">
<jsp:include page="AdminCss.jsp"></jsp:include>


<link  href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>
  	<!-- Favicons -->
  	<link href="assets/img/favicon.png" rel="icon">
  	<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  	<!-- Google Fonts -->	
  	<link href="https://fonts.gstatic.com" rel="preconnect">
  	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  	<!-- Vendor CSS Files -->
  	<link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  	<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  	<link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  	<link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
  	<link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  	<link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  	<link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">
	
  	<!-- Template Main CSS File -->
  	<link href="assets/css/style.css" rel="stylesheet">
	
  	<!-- =======================================================
  	* Template Name: NiceAdmin
  	* Updated: Jan 29 2024 with Bootstrap v5.3.2
  	* Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  	* Author: BootstrapMade.com
  	* License: https://bootstrapmade.com/license/
  	======================================================== -->
</head>

<body>

	<jsp:include page="AdminHeader.jsp"></jsp:include>

	<jsp:include page="AdminSidebar.jsp"></jsp:include>
  	<!-- End Sidebar-->

  	<main id="main" class="main">
       <div class="nen">
    	<div class="pagetitle">
      		<h1>New Role</h1>
      		<nav>
        		<ol class="breadcrumb">
          			<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
          			<li class="breadcrumb-item active">Add User</li>
        		</ol>
      		</nav>
    	</div><!-- End Page Title -->

    	<section class="section dashboard" style="color:black;">
		<form action="savevisitor" method="post">

		houseId : <input type="text" name="houseId" /><br><br>
		purpose : <input type="text" name="purpose" /><br><br>
		date : <input type="date" name="date" /><br><br>
		allowed : <input type="text" name="allowed" /><br><br>
		visitorName : <input type="text" name="visitorName" /><br><br>
		moblieNumber : <input type="text" name="moblieNumber" /><br><br>
		profilePhoto : <input type="text" name="profilePhoto" /><br><br>
		entryTime : <input type="text" name="entryTime" /><br><br>
		exitTime : <input type="text" name="exitTime" /><br><br>
		
		<br> <input type="submit" value="Save Visitor" />

	</form>
    	</section>
 </div>

  	</main><!-- End #main -->

  	<!-- ======= Footer ======= -->
	<jsp:include page="AdminFooter.jsp"></jsp:include>

	<jsp:include page="AdminJs.jsp"></jsp:include>
  	<!-- End Footer -->

  	<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  	<!-- Vendor JS Files -->
  	<script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
  	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  	<script src="assets/vendor/chart.js/chart.umd.js"></script>
  	<script src="assets/vendor/echarts/echarts.min.js"></script>
  	<script src="assets/vendor/quill/quill.min.js"></script>
  	<script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
  	<script src="assets/vendor/tinymce/tinymce.min.js"></script>
  	<script src="assets/vendor/php-email-form/validate.js"></script>

  	<!-- Template Main JS File -->
  	<script src="assets/js/main.js"></script>
  	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

 	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.bootstrap5.min.js"></script>
  
 
 

	<script type="text/javascript">

	$( document ).ready(function() {
		let table = new DataTable('#myTable',{
			 
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

  	<title>Add Visitor | Admin Panel</title>
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
  	    .visitor-form-container {
  	        background: #ffffff;
  	        border-radius: 10px;
  	        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
  	        padding: 30px;
  	        margin-top: 20px;
  	        transition: all 0.3s ease;
  	    }
  	    
  	    .visitor-form-container:hover {
  	        box-shadow: 0 15px 35px rgba(0, 0, 0, 0.15);
  	    }
  	    
  	    .form-header {
  	        border-bottom: 2px solid #4154f1;
  	        padding-bottom: 15px;
  	        margin-bottom: 30px;
  	    }
  	    
  	    .form-header h2 {
  	        color: #4154f1;
  	        font-weight: 700;
  	    }
  	    
  	    .form-row {
  	        display: flex;
  	        flex-wrap: wrap;
  	        margin: 0 -15px;
  	    }
  	    
  	    .form-col {
  	        flex: 0 0 50%;
  	        padding: 0 15px;
  	        margin-bottom: 20px;
  	    }
  	    
  	    .form-group {
  	        margin-bottom: 20px;
  	    }
  	    
  	    .form-label {
  	        display: block;
  	        margin-bottom: 8px;
  	        font-weight: 600;
  	        color: #4154f1;
  	    }
  	    
  	    .form-control {
  	        width: 100%;
  	        padding: 12px 15px;
  	        border: 1px solid #ddd;
  	        border-radius: 5px;
  	        font-size: 15px;
  	        transition: all 0.3s;
  	    }
  	    
  	    .form-control:focus {
  	        border-color: #4154f1;
  	        box-shadow: 0 0 0 0.25rem rgba(65, 84, 241, 0.25);
  	        outline: none;
  	    }
  	    
  	    .btn-submit {
  	        background: linear-gradient(135deg, #4154f1, #717ff5);
  	        color: white;
  	        border: none;
  	        padding: 12px 30px;
  	        font-weight: 600;
  	        border-radius: 5px;
  	        cursor: pointer;
  	        transition: all 0.3s;
  	        box-shadow: 0 4px 15px rgba(65, 84, 241, 0.3);
  	        display: inline-flex;
  	        align-items: center;
  	        justify-content: center;
  	        margin-top: 20px;
  	    }
  	    
  	    .btn-submit:hover {
  	        background: linear-gradient(135deg, #2a3ac7, #5a68e0);
  	        transform: translateY(-2px);
  	        box-shadow: 0 6px 20px rgba(65, 84, 241, 0.4);
  	    }
  	    
  	    .btn-submit i {
  	        margin-right: 8px;
  	    }
  	    
  	    .form-icon {
  	        position: absolute;
  	        right: 15px;
  	        top: 38px;
  	        color: #4154f1;
  	        font-size: 18px;
  	    }
  	    
  	    .input-wrapper {
  	        position: relative;
  	    }
  	    
  	    .pagetitle {
  	        animation: fadeInDown 0.5s ease;
  	    }
  	    
  	    @keyframes fadeInDown {
  	        from {
  	            opacity: 0;
  	            transform: translateY(-20px);
  	        }
  	        to {
  	            opacity: 1;
  	            transform: translateY(0);
  	        }
  	    }
  	</style>
</head>

<body>

	<jsp:include page="AdminHeader.jsp"></jsp:include>
	<jsp:include page="AdminSidebar.jsp"></jsp:include>

  	<main id="main" class="main">
       <div class="nen">
    	<div class="pagetitle animate__animated animate__fadeIn">
      		<h1><i class="fas fa-user-plus me-2"></i>Add New Visitor</h1>
      		<nav>
        		<ol class="breadcrumb">
          			<li class="breadcrumb-item"><a href="admindashboard"><i class="fas fa-home"></i> Home</a></li>
          			<li class="breadcrumb-item active"><i class="fas fa-user-tag"></i> Add Visitor</li>
        		</ol>
      		</nav>
    	</div><!-- End Page Title -->

        <div class="row justify-content-center animate__animated animate__fadeInUp">
            <div class="col-lg-10">
                <div class="visitor-form-container">
                    <div class="form-header">
                        <h2 class="animate__animated animate__fadeInDown"><i class="fas fa-user-edit me-2"></i>Visitor Registration Form</h2>
                    </div>
                    
                    <form action="savevisitor" method="post" id="visitorForm">
                        <div class="form-row">
                            <div class="form-col">
                                <div class="form-group">
                                    <label for="houseId" class="form-label">House ID</label>
                                    <div class="input-wrapper">
                                        <input type="text" class="form-control" id="houseId" name="houseId" placeholder="Enter house ID" required>
                                        <i class="fas fa-home form-icon"></i>
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label for="visitorName" class="form-label">Visitor Name</label>
                                    <div class="input-wrapper">
                                        <input type="text" class="form-control" id="visitorName" name="visitorName" placeholder="Enter visitor name" required>
                                        <i class="fas fa-user form-icon"></i>
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label for="date" class="form-label">Date</label>
                                    <div class="input-wrapper">
                                        <input type="date" class="form-control" id="date" name="date" required>
                                        <i class="fas fa-calendar-alt form-icon"></i>
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label for="entryTime" class="form-label">Entry Time</label>
                                    <div class="input-wrapper">
                                        <input type="time" class="form-control" id="entryTime" name="entryTime" required>
                                        <i class="fas fa-clock form-icon"></i>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="form-col">
                                <div class="form-group">
                                    <label for="purpose" class="form-label">Purpose</label>
                                    <div class="input-wrapper">
                                        <input type="text" class="form-control" id="purpose" name="purpose" placeholder="Enter visit purpose" required>
                                        <i class="fas fa-bullseye form-icon"></i>
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label for="moblieNumber" class="form-label">Mobile Number</label>
                                    <div class="input-wrapper">
                                        <input type="tel" class="form-control" id="moblieNumber" name="moblieNumber" placeholder="Enter mobile number" required>
                                        <i class="fas fa-mobile-alt form-icon"></i>
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label for="allowed" class="form-label">Allowed</label>
                                    <div class="input-wrapper">
                                        <select class="form-control" id="allowed" name="allowed" required>
                                            <option value="">Select status</option>
                                            <option value="Yes">Yes</option>
                                            <option value="No">No</option>
                                        </select>
                                        <i class="fas fa-check-circle form-icon"></i>
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label for="exitTime" class="form-label">Exit Time</label>
                                    <div class="input-wrapper">
                                        <input type="time" class="form-control" id="exitTime" name="exitTime">
                                        <i class="fas fa-clock form-icon"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label for="profilePhoto" class="form-label">Profile Photo URL</label>
                            <div class="input-wrapper">
                                <input type="text" class="form-control" id="profilePhoto" name="profilePhoto" placeholder="Enter photo URL">
                                <i class="fas fa-camera form-icon"></i>
                            </div>
                        </div>
                        
                        <div class="text-center">
                            <button type="submit" class="btn-submit animate__animated animate__pulse animate__infinite animate__slower">
                                <i class="fas fa-save"></i> Save Visitor
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

  	</main><!-- End #main -->

  	<jsp:include page="AdminFooter.jsp"></jsp:include>
  	<jsp:include page="AdminJs.jsp"></jsp:include>

  	<!-- SweetAlert2 JS -->
  	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
  	
  	<script>
  	$(document).ready(function() {
  	    // Add animation to form elements on focus
  	    $('input, select').focus(function() {
  	        $(this).parent().addClass('animate__animated animate__pulse');
  	    }).blur(function() {
  	        $(this).parent().removeClass('animate__animated animate__pulse');
  	    });
  	    
  	    // Form submission handling
  	    $('#visitorForm').submit(function(e) {
  	        e.preventDefault();
  	        
  	        // Show loading animation
  	        Swal.fire({
  	            title: 'Processing',
  	            html: 'Saving visitor details...',
  	            timerProgressBar: true,
  	            didOpen: () => {
  	                Swal.showLoading()
  	            },
  	            allowOutsideClick: false
  	        });
  	        
  	        // Simulate form submission (replace with actual AJAX call)
  	        setTimeout(() => {
  	            Swal.fire({
  	                title: 'Success!',
  	                text: 'Visitor details have been saved successfully',
  	                icon: 'success',
  	                confirmButtonText: 'OK',
  	                showConfirmButton: true
  	            }).then((result) => {
  	                if (result.isConfirmed) {
  	                    // Submit the form after success
  	                    this.submit();
  	                }
  	            });
  	        }, 1500);
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

  	<title>Add Visitor | Admin Panel</title>
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
  	        --darker-color: #0a0a0a;
  	        --light-color: #f5f6fa;
  	        --text-color: #e0e0e0;
  	        --card-bg: rgba(30, 30, 30, 0.9);
  	        --border-color: rgba(255, 255, 255, 0.15);
  	        --glow-color: rgba(108, 92, 231, 0.6);
  	    }

  	    body {
  	        background-color: var(--darker-color);
  	        color: var(--text-color);
  	        font-family: 'Poppins', sans-serif;
  	        background-image: 
  	            radial-gradient(circle at 25% 25%, rgba(108, 92, 231, 0.15) 0%, transparent 50%),
  	            radial-gradient(circle at 75% 75%, rgba(0, 206, 201, 0.15) 0%, transparent 50%);
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
  	        padding: 30px;
  	        transition: all 0.4s;
  	        min-height: 100vh;
  	    }

  	    .pagetitle h1 {
  	        font-size: 2.5rem;
  	        font-weight: 700;
  	        color: var(--text-color);
  	        text-shadow: 0 0 10px var(--glow-color);
  	        position: relative;
  	        display: inline-block;
  	    }

  	    .pagetitle h1::after {
  	        content: '';
  	        position: absolute;
  	        bottom: -10px;
  	        left: 0;
  	        width: 100%;
  	        height: 3px;
  	        background: linear-gradient(90deg, var(--primary-color), var(--accent-color));
  	        border-radius: 3px;
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
  	        text-shadow: 0 0 8px var(--glow-color);
  	    }

  	    .breadcrumb-item.active {
  	        color: var(--light-color);
  	    }

  	    /* Form Container */
  	    .visitor-form-container {
  	        background: var(--card-bg);
  	        border-radius: 15px;
  	        padding: 40px;
  	        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.5);
  	        margin-bottom: 30px;
  	        animation: fadeIn 0.8s ease-out;
  	        border: 1px solid var(--border-color);
  	        position: relative;
  	        overflow: hidden;
  	        backdrop-filter: blur(10px);
  	    }

  	    .visitor-form-container::before {
  	        content: '';
  	        position: absolute;
  	        top: -50%;
  	        left: -50%;
  	        width: 200%;
  	        height: 200%;
  	        background: linear-gradient(
  	            to bottom right,
  	            transparent 0%,
  	            transparent 45%,
  	            rgba(108, 92, 231, 0.1) 50%,
  	            transparent 55%,
  	            transparent 100%
  	        );
  	        animation: shine 8s infinite;
  	        transform: rotate(30deg);
  	    }

  	    @keyframes shine {
  	        0% { transform: rotate(30deg) translate(-30%, -30%); }
  	        100% { transform: rotate(30deg) translate(30%, 30%); }
  	    }

  	    @keyframes fadeIn {
  	        from { opacity: 0; transform: translateY(30px); }
  	        to { opacity: 1; transform: translateY(0); }
  	    }

  	    .form-header {
  	        text-align: center;
  	        margin-bottom: 40px;
  	        position: relative;
  	    }

  	    .form-header h2 {
  	        color: var(--primary-color);
  	        font-weight: 700;
  	        font-size: 2rem;
  	        position: relative;
  	        display: inline-block;
  	        text-shadow: 0 0 15px var(--glow-color);
  	        background: linear-gradient(135deg, var(--primary-color), var(--accent-color));
  	        -webkit-background-clip: text;
  	        -webkit-text-fill-color: transparent;
  	    }

  	    .form-header h2::after {
  	        content: '';
  	        position: absolute;
  	        bottom: -15px;
  	        left: 50%;
  	        transform: translateX(-50%);
  	        width: 80px;
  	        height: 4px;
  	        background: linear-gradient(90deg, var(--primary-color), var(--accent-color));
  	        border-radius: 4px;
  	    }

  	    /* Form Elements */
  	    .form-row {
  	        display: flex;
  	        flex-wrap: wrap;
  	        margin: 0 -15px;
  	    }

  	    .form-col {
  	        flex: 0 0 50%;
  	        padding: 0 15px;
  	        margin-bottom: 25px;
  	    }

  	    .form-group {
  	        margin-bottom: 25px;
  	        position: relative;
  	        transition: all 0.4s ease;
  	    }

  	    .form-label {
  	        display: block;
  	        margin-bottom: 12px;
  	        font-weight: 600;
  	        color: var(--secondary-color);
  	        font-size: 1.1rem;
  	        transition: all 0.3s;
  	    }

  	    .form-control {
  	        width: 100%;
  	        padding: 15px 20px;
  	        border: 2px solid var(--border-color);
  	        border-radius: 10px;
  	        font-size: 16px;
  	        transition: all 0.4s;
  	        background-color: rgba(10, 10, 10, 0.7);
  	        color: var(--text-color);
  	        box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.3);
  	    }

  	    .form-control:focus {
  	        border-color: var(--primary-color);
  	        box-shadow: 0 0 0 3px var(--glow-color), inset 0 1px 3px rgba(0, 0, 0, 0.3);
  	        outline: none;
  	        background-color: rgba(15, 15, 15, 0.8);
  	    }

  	    select.form-control {
  	        appearance: none;
  	        -webkit-appearance: none;
  	        -moz-appearance: none;
  	        background-image: url("data:image/svg+xml;charset=UTF-8,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24' fill='%23a29bfe'%3e%3cpath d='M7 10l5 5 5-5z'/%3e%3c/svg%3e");
  	        background-repeat: no-repeat;
  	        background-position: right 15px center;
  	        background-size: 20px;
  	    }

  	    /* Form Icons */
  	    .form-icon {
  	        position: absolute;
  	        right: 20px;
  	        top: 50px;
  	        color: var(--secondary-color);
  	        font-size: 1.2rem;
  	        transition: all 0.4s;
  	        z-index: 2;
  	    }

  	    .form-control:focus + .form-icon {
  	        color: var(--primary-color);
  	        transform: scale(1.3) translateY(-2px);
  	        text-shadow: 0 0 10px var(--glow-color);
  	    }

  	    /* Submit Button */
  	    .btn-submit {
  	        background: linear-gradient(135deg, var(--primary-color), var(--accent-color));
  	        color: white;
  	        border: none;
  	        padding: 16px 40px;
  	        font-size: 1.1rem;
  	        font-weight: 600;
  	        border-radius: 50px;
  	        cursor: pointer;
  	        display: block;
  	        width: 100%;
  	        transition: all 0.5s;
  	        box-shadow: 0 5px 20px rgba(108, 92, 231, 0.5);
  	        text-transform: uppercase;
  	        letter-spacing: 1.5px;
  	        position: relative;
  	        overflow: hidden;
  	        margin-top: 40px;
  	    }

  	    .btn-submit:hover {
  	        transform: translateY(-5px);
  	        box-shadow: 0 10px 30px rgba(108, 92, 231, 0.7);
  	        letter-spacing: 2px;
  	    }

  	    .btn-submit:active {
  	        transform: translateY(-2px);
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
  	            rgba(255, 255, 255, 0.3),
  	            transparent
  	        );
  	        transition: all 0.8s ease;
  	    }

  	    .btn-submit:hover::after {
  	        left: 100%;
  	    }

  	    /* Floating animation for form */
  	    @keyframes float {
  	        0% { transform: translateY(0px); }
  	        50% { transform: translateY(-15px); }
  	        100% { transform: translateY(0px); }
  	    }

  	    .visitor-form-container {
  	        animation: float 8s ease-in-out infinite;
  	    }

  	    /* Particle background */
  	    .particles {
  	        position: fixed;
  	        top: 0;
  	        left: 0;
  	        width: 100%;
  	        height: 100%;
  	        z-index: -1;
  	        pointer-events: none;
  	    }

  	    /* Responsive adjustments */
  	    @media (max-width: 992px) {
  	        #main {
  	            margin-left: 0;
  	        }
  	    }

  	    @media (max-width: 768px) {
  	        .visitor-form-container {
  	            padding: 30px 20px;
  	        }
  	        
  	        .form-col {
  	            flex: 0 0 100%;
  	        }
  	        
  	        .form-control {
  	            padding: 12px 15px;
  	        }
  	        
  	        .pagetitle h1 {
  	            font-size: 2rem;
  	        }
  	        
  	        .btn-submit {
  	            padding: 14px 30px;
  	            font-size: 1rem;
  	        }
  	    }

  	    /* Input field animations */
  	    .form-group:focus-within {
  	        transform: translateX(10px);
  	    }

  	    /* Floating label */
  	    .floating-label {
  	        position: absolute;
  	        pointer-events: none;
  	        left: 20px;
  	        top: 15px;
  	        transition: 0.2s ease all;
  	        color: #b2b2b2;
  	        font-size: 1rem;
  	        background: transparent;
  	        padding: 0 5px;
  	    }

  	    .form-control:focus ~ .floating-label,
  	    .form-control:not(:placeholder-shown) ~ .floating-label {
  	        top: -10px;
  	        left: 15px;
  	        font-size: 0.8rem;
  	        color: var(--primary-color);
  	        background: var(--card-bg);
  	        padding: 0 5px;
  	        text-shadow: 0 0 5px var(--glow-color);
  	    }
  	</style>
</head>

<body>
    <!-- Particle background -->
    <div class="particles" id="particles-js"></div>
    
	<jsp:include page="AdminHeader.jsp"></jsp:include>
	<jsp:include page="AdminSidebar.jsp"></jsp:include>

  	<main id="main" class="main">
       <div class="nen animate__animated animate__fadeIn">
    	<div class="pagetitle">
      		<h1><i class="fas fa-user-plus me-2"></i>Add New Visitor</h1>
      		<nav>
        		<ol class="breadcrumb">
          			<li class="breadcrumb-item"><a href="admindashboard"><i class="fas fa-home"></i> Home</a></li>
          			<li class="breadcrumb-item active"><i class="fas fa-user-tag"></i> Add Visitor</li>
        		</ol>
      		</nav>
    	</div><!-- End Page Title -->

        <div class="row justify-content-center animate__animated animate__fadeInUp">
            <div class="col-lg-10">
                <div class="visitor-form-container">
                    <div class="form-header">
                        <h2 class="animate__animated animate__fadeInDown"><i class="fas fa-user-edit me-2"></i>Visitor Registration Form</h2>
                    </div>
                    
                    <form action="savevisitor" method="post" id="visitorForm">
                        <div class="form-row">
                            <div class="form-col">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="houseId" name="houseId" placeholder=" " required>
                                    <label for="houseId" class="floating-label">House ID</label>
                                    <i class="fas fa-home form-icon"></i>
                                </div>
                                
                                <div class="form-group">
                                    <input type="text" class="form-control" id="visitorName" name="visitorName" placeholder=" " required>
                                    <label for="visitorName" class="floating-label">Visitor Name</label>
                                    <i class="fas fa-user form-icon"></i>
                                </div>
                                
                                <div class="form-group">
                                    <input type="date" class="form-control" id="date" name="date" required>
                                    <label for="date" class="floating-label">Date</label>
                                    <i class="fas fa-calendar-alt form-icon"></i>
                                </div>
                                
                                <div class="form-group">
                                    <input type="time" class="form-control" id="entryTime" name="entryTime" required>
                                    <label for="entryTime" class="floating-label">Entry Time</label>
                                    <i class="fas fa-clock form-icon"></i>
                                </div>
                            </div>
                            
                            <div class="form-col">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="purpose" name="purpose" placeholder=" " required>
                                    <label for="purpose" class="floating-label">Purpose</label>
                                    <i class="fas fa-bullseye form-icon"></i>
                                </div>
                                
                                <div class="form-group">
                                    <input type="tel" class="form-control" id="moblieNumber" name="moblieNumber" placeholder=" " required>
                                    <label for="moblieNumber" class="floating-label">Mobile Number</label>
                                    <i class="fas fa-mobile-alt form-icon"></i>
                                </div>
                                
                                <div class="form-group">
                                    <select class="form-control" id="allowed" name="allowed" required>
                                        <option value="" selected disabled></option>
                                        <option value="Yes">Yes</option>
                                        <option value="No">No</option>
                                    </select>
                                    <label for="allowed" class="floating-label">Allowed</label>
                                    <i class="fas fa-check-circle form-icon"></i>
                                </div>
                                
                                <div class="form-group">
                                    <input type="time" class="form-control" id="exitTime" name="exitTime">
                                    <label for="exitTime" class="floating-label">Exit Time</label>
                                    <i class="fas fa-clock form-icon"></i>
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <input type="text" class="form-control" id="profilePhoto" name="profilePhoto" placeholder=" ">
                            <label for="profilePhoto" class="floating-label">Profile Photo URL</label>
                            <i class="fas fa-camera form-icon"></i>
                        </div>
                        
                        <div class="text-center">
                            <button type="submit" class="btn-submit animate__animated animate__pulse animate__infinite animate__slower">
                                <i class="fas fa-save"></i> Save Visitor
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
       </div>
  	</main><!-- End #main -->

  	<jsp:include page="AdminFooter.jsp"></jsp:include>
  	<jsp:include page="AdminJs.jsp"></jsp:include>

  	<!-- SweetAlert2 JS -->
  	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
  	
  	<script>
  	$(document).ready(function() {
  	    // Create floating particles
  	    const particlesContainer = document.getElementById('particles-js');
  	    if (particlesContainer) {
  	        const particleCount = window.innerWidth < 768 ? 20 : 40;
  	        for (let i = 0; i < particleCount; i++) {
  	            const particle = document.createElement('div');
  	            particle.classList.add('particle');
  	            
  	            // Random size between 1px and 3px
  	            const size = Math.random() * 2 + 1;
  	            particle.style.width = `${size}px`;
  	            particle.style.height = `${size}px`;
  	            
  	            // Random position
  	            particle.style.left = `${Math.random() * 100}%`;
  	            particle.style.top = `${Math.random() * 100}%`;
  	            
  	            // Random animation
  	            const duration = Math.random() * 20 + 10;
  	            const delay = Math.random() * 5;
  	            particle.style.animation = `float ${duration}s ease-in-out ${delay}s infinite`;
  	            
  	            particlesContainer.appendChild(particle);
  	        }
  	    }
  	    
  	    // Form submission handling
  	    $('#visitorForm').submit(function(e) {
  	        e.preventDefault();
  	        
  	        // Show loading animation
  	        Swal.fire({
  	            title: 'Processing',
  	            html: 'Saving visitor details...',
  	            allowOutsideClick: false,
  	            background: 'rgba(20, 20, 20, 0.95)',
  	            color: '#e0e0e0',
  	            didOpen: () => {
  	                Swal.showLoading();
  	                
  	                const timerInterval = setInterval(() => {
  	                    const content = Swal.getHtmlContainer();
  	                    if (content) {
  	                        const dots = content.querySelector('.dots') || document.createElement('span');
  	                        dots.className = 'dots';
  	                        dots.textContent = (dots.textContent.length >= 3) ? '' : dots.textContent + '.';
  	                        if (!content.contains(dots)) content.appendChild(dots);
  	                    }
  	                }, 500);
  	                
  	                Swal.getTimerLeft = () => timerInterval;
  	            },
  	            willClose: () => {
  	                clearInterval(Swal.getTimerLeft());
  	            }
  	        });
  	        
  	        // Simulate form submission (replace with actual form submission)
  	        setTimeout(() => {
  	            Swal.fire({
  	                title: 'Success!',
  	                text: 'Visitor details have been saved successfully',
  	                icon: 'success',
  	                confirmButtonColor: '#6c5ce7',
  	                confirmButtonText: 'OK',
  	                background: 'rgba(20, 20, 20, 0.95)',
  	                color: '#e0e0e0',
  	                iconColor: '#00cec9'
  	            }).then((result) => {
  	                if (result.isConfirmed) {
  	                    // Submit the form after success
  	                    this.submit();
  	                }
  	            });
  	        }, 1500);
  	    });
  	});
  	</script>
</body>
</html> --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
          			<li class="breadcrumb-item active">New Vehicle</li>
        		</ol>
      		</nav>
    	</div>

    	<section class="section dashboard">
    	   <div class="row">
    	       <div class="col-lg-8 mx-auto">
    	           <div class="card">
    	               <div class="card-body">
    	                   <h5 class="card-title section-title">Vehicle Information</h5>
    	                   
    	                   <form action="savevisitor" method="post"  class="row g-3 needs-validation" >
    	                       <div class="col-md-6">
    	                           <label for="VisiterName" class="form-label">Visiter Name</label>
    	                           <input type="text" class="form-control" id="VisiterName" name="visiterName" >
    	                           <div class="invalid-feedback">
    	                               Please enter first name.
    	                           </div>
    	                       </div>
    	                       <div class="col-md-6">
    	                           <label for="Idproof" class="form-label">Id Proof Type</label>
    	                           <select class="form-select" id="Idproof" name="idProof" >
                                       <option value="" selected disabled>Id Proof Type</option>
                                       <option value="adharcard"><i class="fas fa-mars gender-icon"></i> Aadhar Card</option>
                                       <option value="pancard"><i class="fas fa-venus gender-icon"></i> PAN Card</option>
                                       <option value="drivinglicence"><i class="fas fa-transgender gender-icon"></i> Driving License</option>
                                       <option value="voterid"><i class="fas fa-genderless gender-icon"></i> Voter ID</option>
                                       <option value="passwort"><i class="fas fa-genderless gender-icon"></i> Passport</option>
                                   </select>
                                   <div class="invalid-feedback">
                                       Please select gender.
                                   </div>
    	                       </div>
    	                       
    	                       <div class="col-md-6">
    	                           <label for="idproofNum" class="form-label">Id proof Number</label>
    	                           <input type="text" class="form-control" id="idProofNum" name="idProofNum" >
    	                           <div class="invalid-feedback">
    	                               Please enter last name.
    	                           </div>
    	                       </div>
    	                        <div class="col-md-6">
    	                           <label for="purpose" class="form-label">Purpose of Visit</label>
    	                           <select class="form-select" id="purpose" name="purpose" >
                                       <option value="" selected disabled>Select Vehicle Type</option>
                                       <option value="resident"><i class="fas fa-mars gender-icon"></i>Resident</option>
                                       <option value="delivery"><i class="fas fa-venus gender-icon"></i> Delivery</option>
                                       <option value="maintenance"><i class="fas fa-transgender gender-icon"></i> Maintenance</option>
                                       <option value="guest"><i class="fas fa-genderless gender-icon"></i> Guest</option>
                                       <option value="other"><i class="fas fa-genderless gender-icon"></i> Other</option>
                                   </select>
                                   <div class="invalid-feedback">
                                       Please select gender.
                                   </div>
    	                       </div>
    	                       <div class="col-md-6">
    	                           <label for="flatNum" class="form-label">Flat Number</label>
    	                           <input type="text" class="form-control" id="flatNum" name="flatNum" >
    	                           <div class="invalid-feedback">
    	                               Please enter last name.
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
    	                           <label for="Numofvisiter" class="form-label">Number of visitor</label>
    	                           <input type="text" class="form-control" id="numVisitor" name="numVisitor" >
    	                           <div class="invalid-feedback">
    	                               Please enter contact number.
    	                           </div>
    	                       </div>
    	                       
    	                       <div class="col-md-6">
    	                           <label for="remark" class="form-label">Remarks</label>
    	                           <input type="text" class="form-control" id="remark" name="remark" >
    	                           <div class="invalid-feedback">
    	                               Please enter last name.
    	                           </div>
    	                       </div>
    	                       
    	                       
    	                       
    	                       

    	                       
    	                       <div class="col-12 text-center mt-4">
    	                           <button class="btn btn-submit" type="submit">Register Vehicle</button>
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
    <title>visiter</title>
    
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
            <h2 class="text-center">Add New visiter</h2>
            <form action="addvisitor" method="post" class="row g-3">
                <div class="col-12">
                    <label class="form-label">Visiter Name</label>
                    <input type="text" name="visiterName" class="form-control" >
                </div>
                
                
                
                <div class="col-12">
    				<label class="form-label">Id Proof</label>
    					<select name="idProof" class="form-select">
      						  <option value="" disabled selected>Id Proof Type</option>
      						  <option value="adharcard">AdharCard</option>
     						   <option value="pancard">PanCard</option>
        					<option value="drivingliance">Driving Licence</option>
        					<option value="voterid">Voter Id</option>
        					<option value="password">Password</option>
    					</select>
				</div>

                
                
                
                <div class="col-12">
    				<label class="form-label">Purpose of Visit</label>
    					<select name="purpose" class="form-select">
      						  <option value="" disabled selected>Select Purpose</option>
      						  <option value="resident">Resident</option>
     						   <option value="maintance">Maintance</option>
        					<option value="guest">Guest</option>
        					<option value="other">Other</option>
    					</select>
				</div>
                
                <div class="col-12">
                    <label class="form-label">Flat Num</label>
                    <input type="text" name="flatNum" class="form-control">
                </div>
                
                <div class="col-12">
                    <label class="form-label">Contact Num</label>
                    <input type="text" name="contactNum" class="form-control">
                </div>
                
                <div class="col-12">
                    <label class="form-label">Number Of visitor</label>
                    <input type="text" name="numVisitor" class="form-control">
                </div>
                
                <div class="col-12">
                    <label class="form-label">Remort</label>
                    <input type="text" name="remort" class="form-control">
                </div>
                
                
                <div class="col-12">
                    <button type="submit" class="btn btn-primary">Visiter</button>
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