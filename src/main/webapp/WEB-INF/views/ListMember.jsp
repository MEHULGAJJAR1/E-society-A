<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Admin | List Members</title>

<jsp:include page="AdminCss.jsp"></jsp:include>

<!-- Enhanced DataTables CSS -->
<link href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap5.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>

<style>
    /* Custom Styles */
    .card {
        border-radius: 15px;
        box-shadow: 0 6px 15px rgba(0,0,0,0.1);
        transition: transform 0.3s ease;
    }
    
    .card:hover {
        transform: translateY(-5px);
    }
    
    .card-title {
        color: #2c3e50;
        font-weight: 600;
    }
    
    .card-title span {
        color: #7f8c8d;
        font-size: 0.9rem;
    }
    
    table.dataTable {
        border-collapse: collapse !important;
    }
    
    .table th {
        background-color: #3498db;
        color: white;
        font-weight: 500;
    }
    
    .table td {
        vertical-align: middle;
    }
    
    .profile-img {
        width: 40px;
        height: 40px;
        border-radius: 50%;
        object-fit: cover;
        border: 2px solid #e0e0e0;
    }
    
    .action-btns a {
        margin: 0 5px;
        padding: 5px 10px;
        border-radius: 4px;
        text-decoration: none;
        transition: all 0.3s;
    }
    
    .edit-btn {
        color: #2980b9;
        border: 1px solid #2980b9;
    }
    
    .edit-btn:hover {
        background-color: #2980b9;
        color: white;
    }
    
    .delete-btn {
        color: #e74c3c;
        border: 1px solid #e74c3c;
    }
    
    .delete-btn:hover {
        background-color: #e74c3c;
        color: white;
    }
    
    .view-btn {
        color: #27ae60;
        border: 1px solid #27ae60;
    }
    
    .view-btn:hover {
        background-color: #27ae60;
        color: white;
    }
    
    .member-name {
        font-weight: 500;
        color: #2c3e50;
    }
    
    .dataTables_wrapper .dataTables_paginate .paginate_button {
        padding: 0.3em 0.8em;
        border-radius: 4px;
        margin: 0 2px;
    }
    
    .dataTables_wrapper .dataTables_paginate .paginate_button.current {
        background: #3498db;
        color: white !important;
        border: 1px solid #3498db;
    }
    
    .dataTables_wrapper .dataTables_paginate .paginate_button:hover {
        background: #2980b9;
        color: white !important;
        border: 1px solid #2980b9;
    }
    
    .dataTables_wrapper .dataTables_filter input {
        border: 1px solid #ddd;
        border-radius: 4px;
        padding: 5px 10px;
    }
    
    .dataTables_wrapper .dataTables_length select {
        border: 1px solid #ddd;
        border-radius: 4px;
        padding: 5px;
    }
    
    /* Animation for table rows */
    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(10px); }
        to { opacity: 1; transform: translateY(0); }
    }
    
    #myTable tbody tr {
        animation: fadeIn 0.5s ease forwards;
    }
    
    #myTable tbody tr:nth-child(1) { animation-delay: 0.1s; }
    #myTable tbody tr:nth-child(2) { animation-delay: 0.2s; }
    #myTable tbody tr:nth-child(3) { animation-delay: 0.3s; }
    #myTable tbody tr:nth-child(4) { animation-delay: 0.4s; }
    /* Continue as needed... */
    
    /* Responsive adjustments */
    @media (max-width: 768px) {
        .action-btns a {
            display: block;
            margin: 5px 0;
        }
    }
</style>

</head>
<body>
    <jsp:include page="AdminHeader.jsp"></jsp:include>
    <jsp:include page="AdminSidebar.jsp"></jsp:include>

    <main id="main" class="main">
        <div class="pagetitle animate__animated animate__fadeIn">
            <h1>Member Management</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="admindashboard"><i class="bi bi-house-door"></i> Home</a></li>
                    <li class="breadcrumb-item active">All Members</li>
                </ol>
            </nav>
        </div>
        <!-- End Page Title -->

        <section class="section dashboard">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-12">
                            <div class="card animate__animated animate__fadeInUp">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between align-items-center mb-4">
                                        <h5 class="card-title m-0">
                                            <i class="bi bi-people-fill me-2"></i>Member Directory
                                        </h5>
                                        <a href="#" class="btn btn-primary btn-sm">
                                            <i class="bi bi-plus-circle"></i> Add New Member
                                        </a>
                                    </div>

                                    <div class="table-responsive">
                                        <table class="table table-striped table-hover" id="myTable">
                                            <thead class="thead-dark">
                                                <tr>
                                                    <th>#</th>
                                                    <th>Member</th>
                                                    <th>Age</th>
                                                    <th>Profile</th>
                                                    <th>Status</th>
                                                    <th>Actions</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${memberList}" var="m" varStatus="loop">
                                                    <tr>
                                                        <td>${loop.index + 1}</td>
                                                        <td>
                                                            <span class="member-name">${m.memberName}</span><br>
                                                            <small class="text-muted">ID: ${m.memberId}</small>
                                                        </td>
                                                        <td>${m.age}</td>
                                                        <td>
                                                            <c:choose>
                                                                <c:when test="${not empty m.profilePhoto}">
                                                                    <img src="${m.profilePhoto}" alt="Profile" class="profile-img">
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <img src="https://via.placeholder.com/40" alt="Profile" class="profile-img">
                                                                </c:otherwise>
                                                            </c:choose>
                                                        </td>
                                                        <td>
                                                            <span class="badge bg-success">Active</span>
                                                        </td>
                                                        <td class="action-btns">
                                                            <a href="#" class="edit-btn" title="Edit">
                                                                <i class="bi bi-pencil-square"></i>
                                                            </a>
                                                            <a href="deleteuser?userId=${u.userId}" class="delete-btn" title="Delete" onclick="return confirm('Are you sure you want to delete this member?')">
                                                                <i class="bi bi-trash"></i>
                                                            </a>
                                                            <a href="viewuser?userId=${u.userId}" class="view-btn" title="View">
                                                                <i class="bi bi-eye"></i>
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

    <!-- Enhanced DataTables JS -->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap5.min.js"></script>
    
    <!-- SweetAlert for confirmation dialogs -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <script>
    $(document).ready(function() {
        // Initialize DataTable with enhanced options
        let table = $('#myTable').DataTable({
            responsive: true,
            language: {
                search: "_INPUT_",
                searchPlaceholder: "Search members...",
                lengthMenu: "Show _MENU_ members per page",
                info: "Showing _START_ to _END_ of _TOTAL_ members",
                infoEmpty: "No members available",
                infoFiltered: "(filtered from _MAX_ total members)",
                paginate: {
                    first: "First",
                    last: "Last",
                    next: "Next",
                    previous: "Previous"
                }
            },
            dom: '<"top"lf>rt<"bottom"ip><"clear">',
            initComplete: function() {
                // Add animation when table is loaded
                $('.dataTables_wrapper').addClass('animate__animated animate__fadeIn');
            }
        });
        
        // Add hover effect to rows
        $('#myTable tbody').on('mouseenter', 'tr', function() {
            $(this).css('background-color', 'rgba(52, 152, 219, 0.1)');
        }).on('mouseleave', 'tr', function() {
            $(this).css('background-color', '');
        });
        
        // Enhanced delete confirmation
        $('.delete-btn').on('click', function(e) {
            e.preventDefault();
            var deleteUrl = $(this).attr('href');
            
            Swal.fire({
                title: 'Are you sure?',
                text: "You won't be able to revert this!",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, delete it!'
            }).then((result) => {
                if (result.isConfirmed) {
                    window.location.href = deleteUrl;
                }
            });
        });
        
        // Add tooltips
        $('[title]').tooltip({
            trigger: 'hover',
            placement: 'top'
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

<title>Admin | List Members</title>

<jsp:include page="AdminCss.jsp"></jsp:include>

<!-- Enhanced DataTables CSS -->
<link href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap5.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
<link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;500;600;700&family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<style>
    :root {
        --primary-color: #6c5ce7;
        --primary-light: #8579e6;
        --secondary-color: #a29bfe;
        --accent-color: #00cec9;
        --dark-color: #121212;
        --darker-color: #0a0a0a;
        --light-color: #f5f6fa;
        --text-color: #e0e0e0;
        --text-muted: #b0b0b0;
        --card-bg: rgba(30, 30, 30, 0.9);
        --border-color: rgba(255, 255, 255, 0.1);
        --glow-color: rgba(108, 92, 231, 0.3);
        --success-color: #00b894;
        --danger-color: #d63031;
        --warning-color: #fdcb6e;
    }

    body {
        background-color: var(--darker-color);
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
        text-shadow: 0 2px 10px var(--glow-color);
        font-family: 'Orbitron', sans-serif;
        letter-spacing: 1px;
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
        background: linear-gradient(90deg, var(--primary-color), transparent);
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
        font-size: 0.9rem;
    }

    .breadcrumb-item a:hover {
        color: var(--accent-color);
        text-decoration: underline;
    }

    .breadcrumb-item.active {
        color: var(--light-color);
        font-size: 0.9rem;
    }

    /* Card Styles */
    .card {
        border-radius: 15px;
        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.5),
                    0 0 0 1px rgba(108, 92, 231, 0.1),
                    0 0 30px rgba(108, 92, 231, 0.1) inset;
        backdrop-filter: blur(10px);
        border: 1px solid var(--border-color);
        background: var(--card-bg);
        transition: transform 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
        overflow: hidden;
        position: relative;
    }

    .card::before {
        content: '';
        position: absolute;
        top: -50%;
        left: -50%;
        width: 200%;
        height: 200%;
        background: radial-gradient(circle, rgba(108, 92, 231, 0.1) 0%, transparent 70%);
        animation: rotate 20s linear infinite;
        z-index: -1;
    }

    @keyframes rotate {
        0% { transform: rotate(0deg); }
        100% { transform: rotate(360deg); }
    }

    .card:hover {
        transform: translateY(-10px) scale(1.02);
        box-shadow: 0 15px 35px rgba(0, 0, 0, 0.6),
                    0 0 0 1px rgba(108, 92, 231, 0.2),
                    0 0 40px rgba(108, 92, 231, 0.2) inset;
    }

    .card-title {
        color: var(--primary-color);
        font-weight: 600;
        font-family: 'Orbitron', sans-serif;
        letter-spacing: 1px;
    }

    /* Table Styles */
    .table-responsive {
        border-radius: 10px;
        overflow: hidden;
    }

    .table {
        margin-bottom: 0;
        color: var(--text-color);
    }

    .table th {
        background-color: var(--primary-color);
        color: white;
        font-weight: 500;
        text-transform: uppercase;
        letter-spacing: 1px;
        font-size: 0.8rem;
        border: none;
        padding: 15px 10px;
    }

    .table td {
        vertical-align: middle;
        padding: 12px 10px;
        border-bottom: 1px solid var(--border-color);
        background-color: rgba(40, 40, 40, 0.7);
        transition: all 0.3s;
    }

    .table tr:hover td {
        background-color: rgba(50, 50, 50, 0.9);
    }

    /* Profile Image */
    .profile-img {
        width: 40px;
        height: 40px;
        border-radius: 50%;
        object-fit: cover;
        border: 2px solid var(--primary-color);
        transition: all 0.3s;
        box-shadow: 0 0 10px var(--glow-color);
    }

    .profile-img:hover {
        transform: scale(1.2);
        box-shadow: 0 0 15px var(--primary-color);
    }

    /* Action Buttons */
    .action-btns a {
        margin: 0 5px;
        padding: 6px 12px;
        border-radius: 6px;
        text-decoration: none;
        transition: all 0.3s;
        display: inline-flex;
        align-items: center;
        justify-content: center;
        width: 32px;
        height: 32px;
    }

    .edit-btn {
        color: var(--accent-color);
        border: 1px solid var(--accent-color);
    }

    .edit-btn:hover {
        background-color: var(--accent-color);
        color: var(--dark-color);
        transform: rotate(10deg);
    }

    .delete-btn {
        color: var(--danger-color);
        border: 1px solid var(--danger-color);
    }

    .delete-btn:hover {
        background-color: var(--danger-color);
        color: white;
        transform: rotate(-10deg);
    }

    .view-btn {
        color: var(--success-color);
        border: 1px solid var(--success-color);
    }

    .view-btn:hover {
        background-color: var(--success-color);
        color: var(--dark-color);
        transform: scale(1.1);
    }

    /* Member Info */
    .member-name {
        font-weight: 600;
        color: var(--text-color);
    }

    .text-muted {
        color: var(--text-muted) !important;
    }

    /* Badges */
    .badge {
        padding: 6px 10px;
        font-weight: 500;
        letter-spacing: 0.5px;
        font-size: 0.75rem;
        border-radius: 4px;
    }

    .bg-success {
        background-color: var(--success-color) !important;
    }

    /* DataTables Customization */
    .dataTables_wrapper .dataTables_paginate .paginate_button {
        padding: 0.5em 1em;
        border-radius: 6px;
        margin: 0 3px;
        border: 1px solid var(--border-color);
        color: var(--text-color) !important;
        transition: all 0.3s;
    }

    .dataTables_wrapper .dataTables_paginate .paginate_button.current,
    .dataTables_wrapper .dataTables_paginate .paginate_button.current:hover {
        background: linear-gradient(135deg, var(--primary-color), var(--accent-color)) !important;
        color: white !important;
        border: 1px solid var(--primary-color);
    }

    .dataTables_wrapper .dataTables_paginate .paginate_button:hover {
        background: var(--primary-color) !important;
        color: white !important;
        border: 1px solid var(--primary-color);
    }

    .dataTables_wrapper .dataTables_filter input {
        border: 1px solid var(--border-color);
        border-radius: 6px;
        padding: 6px 12px;
        background-color: rgba(255, 255, 255, 0.1);
        color: var(--text-color);
    }

    .dataTables_wrapper .dataTables_filter input:focus {
        border-color: var(--primary-color);
        box-shadow: 0 0 0 3px var(--glow-color);
    }

    .dataTables_wrapper .dataTables_length select {
        border: 1px solid var(--border-color);
        border-radius: 6px;
        padding: 6px;
        background-color: rgba(255, 255, 255, 0.1);
        color: var(--text-color);
    }

    /* Animation for table rows */
    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(20px); }
        to { opacity: 1; transform: translateY(0); }
    }

    #myTable tbody tr {
        animation: fadeIn 0.6s ease forwards;
        opacity: 0;
    }

    #myTable tbody tr:nth-child(1) { animation-delay: 0.1s; }
    #myTable tbody tr:nth-child(2) { animation-delay: 0.2s; }
    #myTable tbody tr:nth-child(3) { animation-delay: 0.3s; }
    #myTable tbody tr:nth-child(4) { animation-delay: 0.4s; }
    #myTable tbody tr:nth-child(5) { animation-delay: 0.5s; }
    #myTable tbody tr:nth-child(6) { animation-delay: 0.6s; }
    #myTable tbody tr:nth-child(7) { animation-delay: 0.7s; }
    #myTable tbody tr:nth-child(8) { animation-delay: 0.8s; }
    #myTable tbody tr:nth-child(9) { animation-delay: 0.9s; }
    #myTable tbody tr:nth-child(10) { animation-delay: 1.0s; }

    /* Primary Button */
    .btn-primary {
        background: linear-gradient(135deg, var(--primary-color), var(--accent-dark));
        border: none;
        border-radius: 8px;
        padding: 8px 16px;
        font-weight: 600;
        letter-spacing: 0.5px;
        text-transform: uppercase;
        font-size: 0.8rem;
        transition: all 0.3s;
        box-shadow: 0 4px 15px rgba(108, 92, 231, 0.4);
        position: relative;
        overflow: hidden;
    }

    .btn-primary:hover {
        transform: translateY(-3px);
        box-shadow: 0 8px 25px rgba(108, 92, 231, 0.6);
        background: linear-gradient(135deg, var(--primary-light), var(--accent-color));
    }

    .btn-primary:active {
        transform: translateY(1px);
    }

    .btn-primary::after {
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

    .btn-primary:hover::after {
        left: 100%;
    }

    /* Custom scrollbar */
    ::-webkit-scrollbar {
        width: 10px;
        height: 10px;
    }

    ::-webkit-scrollbar-track {
        background: var(--darker-color);
    }

    ::-webkit-scrollbar-thumb {
        background: var(--primary-color);
        border-radius: 5px;
    }

    ::-webkit-scrollbar-thumb:hover {
        background: var(--primary-light);
    }

    /* Responsive adjustments */
    @media (max-width: 992px) {
        #main {
            margin-left: 0;
        }
    }

    @media (max-width: 768px) {
        #main {
            padding: 15px;
        }
        
        .card-title {
            font-size: 1.2rem;
        }
        
        .table th, .table td {
            padding: 8px 5px;
            font-size: 0.85rem;
        }
        
        .action-btns a {
            margin: 2px;
            padding: 4px 8px;
            width: 28px;
            height: 28px;
        }
        
        .profile-img {
            width: 30px;
            height: 30px;
        }
    }
</style>
</head>
<body>
    <jsp:include page="AdminHeader.jsp"></jsp:include>
    <jsp:include page="AdminSidebar.jsp"></jsp:include>

    <main id="main" class="main">
        <div class="pagetitle animate__animated animate__fadeIn">
            <h1>Member Management</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="admindashboard"><i class="bi bi-house-door"></i> Home</a></li>
                    <li class="breadcrumb-item active">All Members</li>
                </ol>
            </nav>
        </div>
        <!-- End Page Title -->

        <section class="section dashboard">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-12">
                            <div class="card animate__animated animate__fadeInUp">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between align-items-center mb-4">
                                        <h5 class="card-title m-0">
                                            <i class="bi bi-people-fill me-2"></i>Member Directory
                                            <span class="d-block text-muted mt-1" style="font-size:0.8rem;font-family:'Poppins'">
                                                Showing all registered members
                                            </span>
                                        </h5>
                                        <a href="#" class="btn btn-primary">
                                            <i class="bi bi-plus-circle me-1"></i> Add New
                                        </a>
                                    </div>

                                    <div class="table-responsive">
                                        <table class="table table-striped table-hover" id="myTable">
                                            <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>Member</th>
                                                    <th>Age</th>
                                                    <th>Profile</th>
                                                    <th>Status</th>
                                                    <th>Actions</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${memberList}" var="m" varStatus="loop">
                                                    <tr>
                                                        <td>${loop.index + 1}</td>
                                                        <td>
                                                            <span class="member-name">${m.memberName}</span><br>
                                                            <small class="text-muted">ID: ${m.memberId}</small>
                                                        </td>
                                                        <td>${m.age}</td>
                                                        <td>
                                                            <c:choose>
                                                                <c:when test="${not empty m.profilePhoto}">
                                                                    <img src="${m.profilePhoto}" alt="Profile" class="profile-img">
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <img src="https://ui-avatars.com/api/?name=${m.memberName}&background=6c5ce7&color=fff" alt="Profile" class="profile-img">
                                                                </c:otherwise>
                                                            </c:choose>
                                                        </td>
                                                        <td>
                                                            <span class="badge bg-success">Active</span>
                                                        </td>
                                                        <td class="action-btns">
                                                            <a href="#" class="edit-btn" title="Edit">
                                                                <i class="bi bi-pencil-square"></i>
                                                            </a>
                                                            <a href="deleteuser?userId=${u.userId}" class="delete-btn" title="Delete" onclick="return confirmDelete(event)">
                                                                <i class="bi bi-trash"></i>
                                                            </a>
                                                            <a href="viewuser?userId=${u.userId}" class="view-btn" title="View">
                                                                <i class="bi bi-eye"></i>
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

    <!-- Enhanced DataTables JS -->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap5.min.js"></script>
    
    <!-- SweetAlert for confirmation dialogs -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <script>
    $(document).ready(function() {
        // Initialize DataTable with enhanced options
        let table = $('#myTable').DataTable({
            responsive: true,
            language: {
                search: "_INPUT_",
                searchPlaceholder: "Search members...",
                lengthMenu: "Show _MENU_ members per page",
                info: "Showing _START_ to _END_ of _TOTAL_ members",
                infoEmpty: "No members available",
                infoFiltered: "(filtered from _MAX_ total members)",
                paginate: {
                    first: "<i class='bi bi-chevron-double-left'></i>",
                    last: "<i class='bi bi-chevron-double-right'></i>",
                    next: "<i class='bi bi-chevron-right'></i>",
                    previous: "<i class='bi bi-chevron-left'></i>"
                }
            },
            dom: '<"top"<"row"<"col-md-6"l><"col-md-6"f>>>rt<"bottom"<"row"<"col-md-6"i><"col-md-6"p>>><"clear">',
            initComplete: function() {
                // Add animation when table is loaded
                $('.dataTables_wrapper').addClass('animate__animated animate__fadeIn');
            },
            drawCallback: function() {
                // Add hover effect to rows
                $('#myTable tbody tr').hover(
                    function() {
                        $(this).css('transform', 'scale(1.01)');
                        $(this).css('box-shadow', '0 5px 15px rgba(108, 92, 231, 0.3)');
                    },
                    function() {
                        $(this).css('transform', 'scale(1)');
                        $(this).css('box-shadow', 'none');
                    }
                );
            }
        });
        
        // Enhanced delete confirmation
        function confirmDelete(e) {
            e.preventDefault();
            var deleteUrl = $(this).attr('href');
            
            Swal.fire({
                title: 'Confirm Deletion',
                text: "Are you sure you want to delete this member? This action cannot be undone.",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#6c5ce7',
                cancelButtonColor: '#d63031',
                confirmButtonText: 'Yes, delete it!',
                cancelButtonText: 'Cancel',
                background: 'rgba(30, 30, 30, 0.96)',
                color: '#e0e0e0',
                backdrop: `
                    rgba(0,0,0,0.8)
                    url("/images/nyan-cat.gif")
                    center top
                    no-repeat
                `,
                width: '500px',
                customClass: {
                    confirmButton: 'btn-confirm',
                    cancelButton: 'btn-cancel'
                }
            }).then((result) => {
                if (result.isConfirmed) {
                    Swal.fire({
                        title: 'Deleting...',
                        html: '<div class="spinner-border text-primary" role="status"><span class="visually-hidden">Loading...</span></div><p class="mt-3">Please wait while we delete the member</p>',
                        allowOutsideClick: false,
                        showConfirmButton: false,
                        background: 'rgba(30, 30, 30, 0.96)',
                        color: '#e0e0e0'
                    });
                    
                    setTimeout(() => {
                        window.location.href = deleteUrl;
                    }, 1500);
                }
            });
        }
        
        // Attach event handler to delete buttons
        $(document).on('click', '.delete-btn', confirmDelete);
        
        // Add tooltips
        $('[title]').tooltip({
            trigger: 'hover',
            placement: 'top',
            delay: { show: 300, hide: 100 }
        });
        
        // Add ripple effect to buttons
        $('.btn-primary').on('click', function(e) {
            const btn = $(this);
            const x = e.pageX - btn.offset().left;
            const y = e.pageY - btn.offset().top;
            
            const ripple = $('<span class="ripple"></span>');
            ripple.css({
                left: x,
                top: y
            });
            
            btn.append(ripple);
            
            setTimeout(() => {
                ripple.remove();
            }, 1000);
        });
    });
    </script>
</body>
</html> --%>

<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> List Member</h2>
	 <table border="1">
	 <tr>
	 	<th>member Name</th>
	 	<th>Age</th>
	 	<th>House No</th>
	 	<th>Action</th>
	 </tr>
	 
	 	<c:forEach items="${memberList }" var="m">
		
			<tr>
				<td>${m.memberName }</td>
				<td>${m.age }</td>
				<td>${m.houseId }</td>
				<td><a href="editmember?memberId=${m.memberId }">Edit</a>    |   <a href="viewmember?memberId=${m.memberId }">View</a>    |    <a href="deletemembers?memberId=${m.memberId } ">Delete</a></td>
			</tr>
		
		</c:forEach> 

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
										Member<span>/all</span>
									</h5>

                                    <div class="table-responsive">
                                        <table class="table table-hover" id="myTable">
                                            <thead>
    <tr>
        <th class="text-center">Member Name</th>
        <th class="text-center">House No</th>
        <th class="text-center">Age</th>
        <th class="text-center">Action</th>
    </tr>
</thead>
<tbody>
    <c:forEach items="${memberList}" var="m">
        <tr>
            <td class="text-center">${m.memberName}</td>
            <td class="text-center">${m.houseId}</td>
            <td class="text-center">${m.age}</td>
            <td class="text-center">
                <a href="editmember?memberId=${m.memberId}" class="btn btn-primary action-btn" title="Edit">
                    <i class="fas fa-edit"></i> Edit
                </a>
                <a href="viewmember?memberId=${m.memberId}" class="btn btn-info action-btn" title="View">
                    <i class="fas fa-eye"></i> View
                </a>
                <a href="deletemember?memberId=${m.memberId}" class="btn btn-danger action-btn" title="Delete" onclick="return confirm('Are you sure you want to delete this user?')">
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