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
        .form-control {
            font-size: 14px;
            padding: 6px;
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
			<h1>List Member</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
					<li class="breadcrumb-item active">List Member</li>
				</ol>
			</nav>
		</div>
		 <div class="container">
        <div class="edit-container">
            <h4 class="text-center mb-3">Edit Member</h4>

            <form action="updatemember" method="post">
                <input type="hidden" name="memberId" value="${member.memberId}" />

                <div class="mb-2">
                    <label class="form-label">Name</label>
                    <input type="text" class="form-control" name="memberName" value="${member.memberName}" required>
                </div>

                <div class="mb-2">
                    <label class="form-label">Age</label>
                    <input type="number" class="form-control" name="age" value="${member.age}" required>
                </div>

                <div class="mb-2">
                    <label class="form-label">House No</label>
                    <input type="text" class="form-control" name="HouseId" value="${member.houseId}" required>
                </div>

                <button type="submit" class="btn btn-primary btn-custom">Update</button>
                <a href="listmembers" class="btn btn-secondary btn-custom mt-1">Cancel</a>
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