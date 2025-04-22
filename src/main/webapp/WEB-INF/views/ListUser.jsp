<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

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
		<!-- End Page Title -->

		<section class="section dashboard">
			<div class="row" style="min-height: 500px;">

				<!-- Left side columns -->
				<div class="col-lg-12">
					<div class="row">
						<!-- Reports -->
						<div class="col-12">
							<div class="card">


								<div class="card-body">
									<h5 class="card-title">
										Users<span>/all</span>
									</h5>


									<table class="table datatable datatable-table table-hover" id="myTable">
										<thead>
											<tr>
												<th>FirstName</th>
												<th>LastName</th>
												<th>Email</th>
												<th>Gender</th>
												<!-- <th>City</th> -->
												<th>ContactNum</th>
												<th>Role</th>
												<th>Action</th>
											</tr>
										</thead>

										<tbody>
											<c:forEach items="${users }" var="u">
												<tr>
													<td>${u.firstName}</td>
													<td>${u.lastName}</td>
													<td>${u.email}</td>
													<td>${u.gender}</td>
													<td>${u.city}</td>
													<td>${u.contactNum}</td>
													<td>${u.role}</td>
													<td>| <a href="edituser?userId=${u.userId }">Edit</a>   | |<a href="deleteuser?userId=${u.userId}">Delete</a>|
													 |<a href="viewuser?userId=${u.userId}">View</a>  |
													 </td>
												</tr>
											</c:forEach>
										</tbody>

									</table>



								</div>

							</div>
						</div>
						<!-- End Reports -->

					</div>
				</div>
				<!-- End Left side columns -->

				<!-- Right side columns -->
				<!-- End Right side columns -->

			</div>
		</section>

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
</html> --%>

<%-- 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Admin | List User</title>

<jsp:include page="AdminCss.jsp"></jsp:include>

<link href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>

<style>
    /* Custom CSS Enhancements */
    .card {
        border-radius: 15px;
        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        transition: all 0.3s ease;
        border: none;
    }
    
    .card:hover {
        transform: translateY(-5px);
        box-shadow: 0 15px 35px rgba(0, 0, 0, 0.15);
    }
    
    .card-title span {
        color: #6c757d;
        font-size: 0.9rem;
    }
    
    .table-container {
        overflow: hidden;
        border-radius: 10px;
    }
    
    table.dataTable {
        margin-top: 0 !important;
        border-collapse: separate;
        border-spacing: 0;
    }
    
    table.dataTable thead th {
        background-color: #4e73df;
        color: white;
        border: none;
        padding: 15px 10px;
        position: sticky;
        top: 0;
    }
    
    table.dataTable tbody tr {
        transition: all 0.2s ease;
    }
    
    table.dataTable tbody tr:hover {
        background-color: rgba(78, 115, 223, 0.05);
        transform: scale(1.01);
    }
    
    table.dataTable tbody td {
        padding: 12px 10px;
        vertical-align: middle;
        border-bottom: 1px solid #e3e6f0;
    }
    
    .action-links a {
        color: #4e73df;
        margin: 0 5px;
        padding: 5px 8px;
        border-radius: 4px;
        transition: all 0.2s ease;
        text-decoration: none;
        display: inline-block;
    }
    
    .action-links a:hover {
        background-color: rgba(78, 115, 223, 0.1);
        transform: translateY(-2px);
    }
    
    .action-links a i {
        margin-right: 5px;
    }
    
    /* Badge for roles */
    .role-badge {
        padding: 5px 10px;
        border-radius: 20px;
        font-size: 0.75rem;
        font-weight: 600;
        text-transform: uppercase;
    }
    
    .role-admin {
        background-color: #f8e1e4;
        color: #d32f2f;
    }
    
    .role-user {
        background-color: #e1f5fe;
        color: #0288d1;
    }
    
    /* Gender icons */
    .gender-male {
        color: #1976d2;
    }
    
    .gender-female {
        color: #c2185b;
    }
    
    /* Loading animation */
    .loading-table {
        position: relative;
        min-height: 200px;
    }
    
    .loading-table::before {
        content: "";
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background: rgba(255, 255, 255, 0.8);
        z-index: 10;
        display: flex;
        align-items: center;
        justify-content: center;
    }
    
    .loading-table::after {
        content: "";
        width: 40px;
        height: 40px;
        border: 4px solid #f3f3f3;
        border-top: 4px solid #4e73df;
        border-radius: 50%;
        animation: spin 1s linear infinite;
        position: absolute;
        top: 50%;
        left: 50%;
        margin-left: -20px;
        margin-top: -20px;
        z-index: 11;
    }
    
    @keyframes spin {
        0% { transform: rotate(0deg); }
        100% { transform: rotate(360deg); }
    }
    
    /* Responsive adjustments */
    @media (max-width: 768px) {
        .card-body {
            padding: 1rem;
        }
        
        table.dataTable thead th {
            padding: 10px 5px;
            font-size: 0.8rem;
        }
        
        table.dataTable tbody td {
            padding: 8px 5px;
            font-size: 0.8rem;
        }
        
        .action-links a {
            margin: 0 2px;
            padding: 3px 5px;
            font-size: 0.8rem;
        }
    }
</style>

</head>
<body>
    <jsp:include page="AdminHeader.jsp"></jsp:include>

    <jsp:include page="AdminSidebar.jsp"></jsp:include>

    <main id="main" class="main">

        <div class="pagetitle animate__animated animate__fadeIn">
            <h1>User Management</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="admindashboard"><i class="fas fa-home"></i> Home</a></li>
                    <li class="breadcrumb-item active">All Users</li>
                </ol>
            </nav>
        </div>
        <!-- End Page Title -->

        <section class="section dashboard animate__animated animate__fadeInUp">
            <div class="row">

                <!-- Left side columns -->
                <div class="col-lg-12">
                    <div class="row">
                        <!-- Reports -->
                        <div class="col-12">
                            <div class="card">

                                <div class="card-body">
                                    <div class="d-flex justify-content-between align-items-center mb-4">
                                        <h5 class="card-title m-0">
                                            <i class="fas fa-users me-2"></i>User List
                                        </h5>
                                        <a href="adduser" class="btn btn-primary">
                                            <i class="fas fa-plus me-2"></i>Add New User
                                        </a>
                                    </div>

                                    <div class="table-container">
                                        <table class="table table-striped table-hover" id="userTable">
                                            <thead>
                                                <tr>
                                                    <th>Name</th>
                                                    <th>Email</th>
                                                    <th>Gender</th>
                                                    <th>Contact</th>
                                                    <th>Role</th>
                                                    <th>Actions</th>
                                                </tr>
                                            </thead>

                                            <tbody>
                                                <c:forEach items="${users}" var="u">
                                                    <tr>
                                                        <td>${u.firstName} ${u.lastName}</td>
                                                        <td>${u.email}</td>
                                                        <td>
                                                            <c:choose>
                                                                <c:when test="${u.gender eq 'Male'}">
                                                                    <i class="fas fa-mars gender-male me-2"></i>${u.gender}
                                                                </c:when>
                                                                <c:when test="${u.gender eq 'Female'}">
                                                                    <i class="fas fa-venus gender-female me-2"></i>${u.gender}
                                                                </c:when>
                                                                <c:otherwise>
                                                                    ${u.gender}
                                                                </c:otherwise>
                                                            </c:choose>
                                                        </td>
                                                        <td>${u.contactNum}</td>
                                                        <td>
                                                            <span class="role-badge role-${u.role eq 'Admin' ? 'admin' : 'user'}">
                                                                ${u.role}
                                                            </span>
                                                        </td>
                                                        <td class="action-links">
                                                            <a href="viewuser?userId=${u.userId}" class="text-info" title="View">
                                                                <i class="fas fa-eye"></i>
                                                            </a>
                                                            <a href="edituser?userId=${u.userId}" class="text-warning" title="Edit">
                                                                <i class="fas fa-edit"></i>
                                                            </a>
                                                            <a href="deleteuser?userId=${u.userId}" class="text-danger" title="Delete" onclick="return confirm('Are you sure you want to delete this user?')">
                                                                <i class="fas fa-trash-alt"></i>
                                                            </a>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>

                                </div>

                            </div>
                        </div>
                        <!-- End Reports -->
                    </div>
                </div>
                <!-- End Left side columns -->
            </div>
        </section>

    </main>
    <!-- main content end  -->

    <jsp:include page="AdminFooter.jsp"></jsp:include>

    <jsp:include page="AdminJs.jsp"></jsp:include>
    
    <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap5.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <script type="text/javascript">
    $(document).ready(function() {
        // Initialize DataTable with enhanced options
        var table = $('#userTable').DataTable({
            "dom": '<"top"lf>rt<"bottom"ip><"clear">',
            "language": {
                "search": "<i class='fas fa-search'></i>",
                "searchPlaceholder": "Search users...",
                "lengthMenu": "Show _MENU_ users per page",
                "info": "Showing _START_ to _END_ of _TOTAL_ users",
                "infoEmpty": "No users available",
                "infoFiltered": "(filtered from _MAX_ total users)",
                "paginate": {
                    "first": "<i class='fas fa-angle-double-left'></i>",
                    "last": "<i class='fas fa-angle-double-right'></i>",
                    "next": "<i class='fas fa-angle-right'></i>",
                    "previous": "<i class='fas fa-angle-left'></i>"
                }
            },
            "initComplete": function() {
                // Add custom filter for roles
                this.api().columns([4]).every(function() {
                    var column = this;
                    var select = $('<select class="form-select form-select-sm ms-2" style="width: 120px;"><option value="">All Roles</option><option value="Admin">Admin</option><option value="User">User</option></select>')
                        .appendTo($('.dataTables_filter'))
                        .on('change', function() {
                            var val = $.fn.dataTable.util.escapeRegex(
                                $(this).val()
                            );
                            column.search(val ? '^' + val + '$' : '', true, false).draw();
                        });
                });
            },
            "drawCallback": function() {
                // Add animation to rows
                $('tbody tr').each(function(i) {
                    $(this).css('opacity', '0').delay(i * 100).animate({'opacity': '1'}, 200);
                });
            }
        });
        
        // Add success message display if there's a message in the URL
        const urlParams = new URLSearchParams(window.location.search);
        const successMessage = urlParams.get('success');
        
        if(successMessage) {
            Swal.fire({
                icon: 'success',
                title: 'Success!',
                text: decodeURIComponent(successMessage),
                timer: 3000,
                showConfirmButton: false,
                position: 'top-end',
                toast: true
            });
            
            // Clean the URL
            window.history.replaceState({}, document.title, window.location.pathname);
        }
    });
    </script>

</body>
</html> --%>

<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Admin | List User</title>

<jsp:include page="AdminCss.jsp"></jsp:include>

<!-- Font Awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<!-- DataTables CSS -->
<link href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>

<!-- Animate.css -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>

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

/* Table Styles */
.table-container {
    overflow: hidden;
    border-radius: 10px;
}

table.dataTable {
    width: 100% !important;
    margin: 0 !important;
    border-collapse: separate;
    border-spacing: 0;
    color: var(--text-color);
}

table.dataTable thead th {
    background: linear-gradient(135deg, var(--primary-color), var(--accent-color));
    color: white;
    border: none;
    padding: 15px 10px;
    position: sticky;
    top: 0;
    font-weight: 600;
    text-transform: uppercase;
    letter-spacing: 0.5px;
}

table.dataTable tbody tr {
    background-color: rgba(255, 255, 255, 0.02);
    transition: all 0.3s ease;
}

table.dataTable tbody tr:hover {
    background-color: rgba(108, 92, 231, 0.1);
    transform: scale(1.01);
}

table.dataTable tbody td {
    padding: 12px 10px;
    vertical-align: middle;
    border-bottom: 1px solid var(--border-color);
}

/* Action Links */
.action-links a {
    color: var(--text-color);
    margin: 0 5px;
    padding: 5px 10px;
    border-radius: 50%;
    transition: all 0.3s ease;
    text-decoration: none;
    display: inline-flex;
    align-items: center;
    justify-content: center;
    width: 32px;
    height: 32px;
}

.action-links a.view {
    background-color: rgba(0, 206, 201, 0.1);
    color: var(--accent-color);
}

.action-links a.edit {
    background-color: rgba(255, 193, 7, 0.1);
    color: #ffc107;
}

.action-links a.delete {
    background-color: rgba(220, 53, 69, 0.1);
    color: #dc3545;
}

.action-links a:hover {
    transform: translateY(-3px);
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
}

/* Badge for roles */
.role-badge {
    padding: 5px 12px;
    border-radius: 20px;
    font-size: 0.75rem;
    font-weight: 600;
    text-transform: uppercase;
    display: inline-block;
}

.role-admin {
    background-color: rgba(244, 67, 54, 0.2);
    color: #f44336;
}

.role-user {
    background-color: rgba(33, 150, 243, 0.2);
    color: #2196f3;
}

/* Gender icons */
.gender-male {
    color: #64b5f6;
}

.gender-female {
    color: #f06292;
}

/* Buttons */
.btn-primary {
    background: linear-gradient(135deg, var(--primary-color), var(--accent-color));
    border: none;
    padding: 10px 20px;
    border-radius: 50px;
    font-weight: 600;
    letter-spacing: 0.5px;
    transition: all 0.4s ease;
    box-shadow: 0 5px 15px rgba(108, 92, 231, 0.4);
}

.btn-primary:hover {
    background: linear-gradient(135deg, var(--accent-color), var(--primary-color));
    transform: translateY(-3px);
    box-shadow: 0 8px 20px rgba(108, 92, 231, 0.6);
}

/* DataTables Custom Styles */
.dataTables_wrapper .dataTables_filter input {
    background-color: rgba(255, 255, 255, 0.1);
    border: 1px solid var(--border-color);
    color: var(--text-color);
    border-radius: 50px;
    padding: 8px 15px;
}

.dataTables_wrapper .dataTables_length select {
    background-color: rgba(255, 255, 255, 0.1);
    border: 1px solid var(--border-color);
    color: var(--text-color);
    border-radius: 8px;
    padding: 5px;
}

.dataTables_wrapper .dataTables_paginate .paginate_button {
    color: var(--text-color) !important;
    border: 1px solid var(--border-color);
    margin: 0 3px;
    border-radius: 8px !important;
    transition: all 0.3s ease;
}

.dataTables_wrapper .dataTables_paginate .paginate_button:hover {
    background: linear-gradient(135deg, var(--primary-color), var(--accent-color)) !important;
    color: white !important;
    border-color: transparent !important;
}

.dataTables_wrapper .dataTables_paginate .paginate_button.current {
    background: linear-gradient(135deg, var(--primary-color), var(--accent-color)) !important;
    color: white !important;
    border-color: transparent !important;
}

/* Loading animation */
.loading-table {
    position: relative;
    min-height: 200px;
}

.loading-table::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: rgba(0, 0, 0, 0.5);
    z-index: 10;
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 10px;
}

.loading-table::after {
    content: "";
    width: 40px;
    height: 40px;
    border: 4px solid rgba(255, 255, 255, 0.1);
    border-top: 4px solid var(--primary-color);
    border-radius: 50%;
    animation: spin 1s linear infinite;
    position: absolute;
    top: 50%;
    left: 50%;
    margin-left: -20px;
    margin-top: -20px;
    z-index: 11;
}

@keyframes spin {
    0% { transform: rotate(0deg); }
    100% { transform: rotate(360deg); }
}

/* Responsive adjustments */
@media (max-width: 1199px) {
    #main {
        margin-left: 0;
    }
}

@media (max-width: 768px) {
    .card-body {
        padding: 1rem;
    }
    
    table.dataTable thead th {
        padding: 10px 5px;
        font-size: 0.8rem;
    }
    
    table.dataTable tbody td {
        padding: 8px 5px;
        font-size: 0.8rem;
    }
    
    .action-links a {
        margin: 0 2px;
        padding: 3px 5px;
        font-size: 0.8rem;
    }
    
    .btn-primary {
        padding: 8px 15px;
        font-size: 0.8rem;
    }
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
        <div class="pagetitle animate__animated animate__fadeIn">
            <h1>List User</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="admindashboard"><i class="fas fa-home"></i> Home</a></li>
                    <li class="breadcrumb-item active">All Users</li>
                </ol>
            </nav>
        </div>

        <section class="section dashboard animate__animated animate__fadeInUp">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between align-items-center mb-4">
                                        <h5 class="card-title m-0">
                                            <i class="fas fa-users me-2"></i>User List
                                        </h5>
                                        <a href="adduser" class="btn btn-primary">
                                            <i class="fas fa-plus me-2"></i>Add New User
                                        </a>
                                    </div>

                                    <div class="table-container">
                                        <table class="table table-striped table-hover" id="userTable">
                                            <thead>
                                                <tr>
                                                    <th>FirstName</th>
                                                    <th>LastName</th>
                                                    <th>Email</th>
                                                    <th>Gender</th>
                                                    <th>Contact</th>
                                                    <th>Actions</th>
                                                </tr>
                                            </thead>

                                            <tbody>
                                                <c:forEach items="${users}" var="u">
                                                    <tr>
                                                        <td>${u.firstName}</td>
                                                        <td> ${u.lastName}</td>
                                                        <td>${u.email}</td>
                                                        <td>
                                                            <c:choose>
                                                                <c:when test="${u.gender eq 'Male'}">
                                                                    <i class="fas fa-mars gender-male me-2"></i>${u.gender}
                                                                </c:when>
                                                                <c:when test="${u.gender eq 'Female'}">
                                                                    <i class="fas fa-venus gender-female me-2"></i>${u.gender}
                                                                </c:when>
                                                                <c:otherwise>
                                                                    ${u.gender}
                                                                </c:otherwise>
                                                            </c:choose>
                                                        </td>
                                                        <td>${u.contactNum}</td>
                                                        
                                                        <td class="action-links">
                                                            <a href="viewuser?userId=${u.userId}" class="view" title="View">
                                                                <i class="fas fa-eye"></i>
                                                            </a>
                                                            <a href="edituser?userId=${u.userId}" class="edit" title="Edit">
                                                                <i class="fas fa-edit"></i>
                                                            </a>
                                                            <a href="deleteuser?userId=${u.userId}" class="delete" title="Delete" onclick="return confirm('Are you sure you want to delete this user?')">
                                                                <i class="fas fa-trash-alt"></i>
                                                            </a>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <jsp:include page="AdminFooter.jsp"></jsp:include>
    <jsp:include page="AdminJs.jsp"></jsp:include>
    
    <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap5.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <script type="text/javascript">
    $(document).ready(function() {
        var table = $('#userTable').DataTable({
            "dom": '<"top"<"d-flex justify-content-between align-items-center"lf>><"table-responsive"tr><"bottom"ip><"clear">',
            "pageLength": 10,  // Show 10 users per page
            "language": {
                "search": "<i class='fas fa-search'></i>",
                "searchPlaceholder": "Search users...",
                "lengthMenu": "Show _MENU_ users per page",
                "info": "Showing _START_ to _END_ of _TOTAL_ users",
                "infoEmpty": "No users available",
                "infoFiltered": "(filtered from _MAX_ total users)",
                "paginate": {
                    "first": "<i class='fas fa-angle-double-left'></i>",
                    "last": "<i class='fas fa-angle-double-right'></i>",
                    "next": "<i class='fas fa-angle-right'></i>",
                    "previous": "<i class='fas fa-angle-left'></i>"
                }
            },
            
            "drawCallback": function() {
                $('tbody tr').each(function(i) {
                    $(this).css('opacity', '0').delay(i * 100).animate({'opacity': '1'}, 200);
                });
            }
        });

        // Dark Mode Styling for Search Box and Select Dropdown
        $('.dataTables_filter input, .dataTables_length select').css({
            "background-color": "rgba(255, 255, 255, 0.1)",
            "border": "1px solid var(--border-color)",
            "color": "var(--text-color)",
            "border-radius": "8px",
            "padding": "8px 15px"
        });

        // Add hover effect to table rows
        $('#userTable tbody').on('mouseenter', 'tr', function() {
            $(this).css('transform', 'scale(1.01)');
        }).on('mouseleave', 'tr', function() {
            $(this).css('transform', 'scale(1)');
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

<title>Admin | List User</title>

<jsp:include page="AdminCss.jsp"></jsp:include>

<!-- DataTables CSS -->
<link href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>
<!-- Font Awesome for icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
  .action-btn {
    padding: 4px 8px;
    margin: 0 2px;
    font-size: 13px;
  }
  .pagination .page-link {
    padding: 0.375rem 0.75rem;
  }
  .dataTables_info, .dataTables_length, .dataTables_filter {
    margin-bottom: 15px;
  }
  .dataTables_length select {
    padding: 0.375rem 2.25rem 0.375rem 0.75rem;
    font-size: 0.875rem;
    border-radius: 0.25rem;
  }
  .dataTables_filter input {
    padding: 0.375rem 0.75rem;
    font-size: 0.875rem;
    border-radius: 0.25rem;
    margin-left: 5px;
  }
  .table-responsive {
    overflow-x: auto;
  }
</style>

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
		<!-- End Page Title -->

		<section class="section dashboard">
			<div class="row" style="min-height: 500px;">

				<!-- Left side columns -->
				<div class="col-lg-12">
					<div class="row">
						<!-- Reports -->
						<div class="col-12">
							<div class="card">
								<div class="card-body">
									<h5 class="card-title">
										Users<span>/all</span>
									</h5>

                                    <div class="table-responsive">
                                        <table class="table table-hover" id="myTable">
                                            <thead>
                                                <tr>
                                                    <th>First Name</th>
                                                    <th>Last Name</th>
                                                    <th>Gender</th>
                                                    <th>Email</th>
                                                    <th>Contact Num</th>
                                                   
                                                    <th>Action</th>
                                                </tr>
                                            </thead>

                                            <tbody>
                                                <c:forEach items="${users}" var="u">
                                                    <tr>
                                                        <td>${u.firstName}</td>
                                                        <td>${u.lastName}</td>
                                                        <td>${u.gender}</td>
                                                        <td>${u.email}</td>
                                                        <td>${u.contactNum}</td>
                                                        
                                                        <td>
                                                            <a href="edituser?userId=${u.userId}" class="btn btn-primary action-btn" title="Edit">
                                                                <i class="fas fa-edit"></i> Edit
                                                            </a>
                                                            <a href="viewuser?userId=${u.userId}" class="btn btn-info action-btn" title="View">
                                                                <i class="fas fa-eye"></i> View
                                                            </a>
                                                            <a href="deleteuser?userId=${u.userId}" class="btn btn-danger action-btn" title="Delete" onclick="return confirm('Are you sure you want to delete this user?')">
                                                                <i class="fas fa-trash"></i> Delete
                                                            </a>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
								</div>
							</div>
						</div>
						<!-- End Reports -->
					</div>
				</div>
				<!-- End Left side columns -->
			</div>
		</section>
	</main>
	<!-- main content end  -->

	<jsp:include page="AdminFooter.jsp"></jsp:include>

	<jsp:include page="AdminJs.jsp"></jsp:include>
	
	<!-- jQuery -->
	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

 	<!-- DataTables JS -->
 	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.bootstrap5.min.js"></script>
  
	<script type="text/javascript">
	$(document).ready(function() {
		let table = new DataTable('#myTable', {
			pagingType: "full_numbers",
			lengthMenu: [[5, 10, 25, 50, 100, -1], [5, 10, 25, 50, 100, "All"]],
			pageLength: 10,
			language: {
				paginate: {
					first: '<i class="fas fa-angle-double-left"></i>',
					previous: '<i class="fas fa-angle-left"></i>',
					next: '<i class="fas fa-angle-right"></i>',
					last: '<i class="fas fa-angle-double-right"></i>'
				},
				info: "Showing START to END of TOTAL entries",
				lengthMenu: "Show MENU entries per page",
				search: "Search:",
				zeroRecords: "No matching records found",
				infoEmpty: "Showing 0 to 0 of 0 entries",
				infoFiltered: "(filtered from MAX total entries)"
			},
			responsive: true,
			dom: '<"row"<"col-sm-6"l><"col-sm-6"f>>' +
				'<"row"<"col-sm-12"tr>>' +
				'<"row"<"col-sm-5"i><"col-sm-7"p>>',
			stateSave: true
		});
		
		// Make the table responsive
		$(window).resize(function() {
			table.columns.adjust().responsive.recalc();
		});
	});
	</script>

</body>
</html>