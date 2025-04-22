<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
  	<meta charset="utf-8">
	<meta content="width=device-width, initial-scale=1.0" name="viewport">

  	<title>Edit User</title>
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
          			<li class="breadcrumb-item active"><a href="listuser">List User</a></li>
          			<li class="breadcrumb-item active">Edit User</li>
        		</ol>
      		</nav>
    	</div><!-- End Page Title -->

    	<section class="section dashboard" style="color:black;">
			<form action="updateuser" method="post" enctype="multipart/form-data">
				First Name: <input type="text" name="firstName" value="${user.firstName }"> &emsp;
				Last Name : <input type="text" name="lastName" value="${user.lastName }"/><br><br> 
				Gender : <select name="gender" value="${user.gender }" >
				<option value="male">Male</option>
				<option value="female">Female</option>
				<option value="trans">Transgender</option>
				<option value="other">Other</option>
				</select><br><br>
	            Email : <input type="email" name="email" value="${user.email }"/><br><br>
	            D.O.B. : <input type="date" name="bornYear" value="${user.bornYear }"/><br><br>
	            ContactNo : <input type="text" name="contactNum" value="${user.contactNum }"/><br><br>
	            Upload Photo: <input type = "file" name ="profilePic"> <br> <br>
	            <input type="hidden" name="userId" value="${user.userId }" />
	            <input type="hidden" name="role" value="${user.role }" />
				<input type="submit" value="Save User"> <br><br>
				<a href="listuser">Back</a>
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

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
   <style>
    body {
        background-color: #f8f9fa;
    }
    .edit-container {
        max-width: 450px;
        margin: 10px auto;
        background: #fff;
        padding: 50px;
        border-radius: 8px;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
    }
    .form-label {
        color: black !important;
    }
    h1{
    	color: black !important;
    }
    .form-control {
        font-size: 14px;
        padding: 6px;
        color: black !important;
    }
    .btn-custom {
        width: 100%;
        font-size: 14px;
        padding: 6px;
    }
</style>

<title>Admin | List User</title>

<jsp:include page="AdminCss.jsp"></jsp:include>


<link  href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>


</head>
<body>
	<jsp:include page="AdminHeader.jsp"></jsp:include>

	<jsp:include page="AdminSidebar.jsp"></jsp:include>

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>List User</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
					<li class="breadcrumb-item active">List User</li>
				</ol>
			</nav>
		</div>
		 <div class="container">
        <div class="edit-container">
            <h4 class="text-center mb-3">Edit Member</h4>

            <form action="updateuser" method="post" enctype="multipart/form-data">
                <input type="hidden" name="userId" value="${user.userId}" />

                <div class="mb-2">
                    <label class="form-label">First Name</label>
                    <input type="text" class="form-control" name="firstName" value="${user.firstName}" >
                </div>
                
                <div class="mb-2">
                    <label class="form-label">Last Name</label>
                    <input type="text" class="form-control" name="lastName" value="${user.lastName}" >
                </div>
                
                <div class="mb-2">
                    <label class="form-label">Email</label>
                    <input type="text" class="form-control" name="email" value="${user.email}" >
                </div>

                <%-- <div class="mb-2">
                    <label class="form-label">Born</label>
                    <input type="number" class="form-control" name="born" value="${user.born}" >
                </div> --%>
                
                
                <div class="mb-2">
    				<label class="form-label">Gender</label>
    				<%-- 	 <select name="gender" class="form-select"value="${user.gender}" > 
      						  <option value="" disabled selected>Select Gender</option>
      						  <option value="male">Male</option>
     						   <option value="female">Female</option>
        					<option value="other">Other</option>
    				</select> --%> 
    				 <select name="gender" class="form-select">
   						 <option value="" disabled>Select Gender</option>
 					     <option value="male" ${user.gender == 'male' ? 'selected' : ''}>Male</option>
   						 <option value="female" ${user.gender == 'female' ? 'selected' : ''}>Female</option>
  					     <option value="other" ${user.gender == 'other' ? 'selected' : ''}>Other</option>
					</select>
				</div> 
                
                <div class="mb-2">
                    <label class="form-label">Contact No</label>
                    <input type="number" class="form-control" name="contactNum" value="${user.contactNum}" >
                </div>

                <div class="mb-2">
                    <label class="form-label">Profile Photo URL</label>
                    <input type="file" class="form-control" name="profilePic" required >
                </div>
                
                
                
<%--                 <input type="hidden" name="role" value="${user.role}" />
<input type="hidden" name="password" value="${user.password}" /> --%>
       
               <button type="submit" class="btn btn-primary btn-custom">Update</button>
                <a href="listuser" class="btn btn-secondary btn-custom mt-1">Cancel</a>
            </form>
        </div>
    </div>
		
		

	</main>
	<!-- main content end  -->


	<jsp:include page="AdminFooter.jsp"></jsp:include>

	<jsp:include page="AdminJs.jsp"></jsp:include>
	
	

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
</html>