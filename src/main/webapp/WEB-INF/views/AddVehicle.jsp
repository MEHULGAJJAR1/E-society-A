<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
  	<meta charset="utf-8">
	<meta content="width=device-width, initial-scale=1.0" name="viewport">

  	<title>Vehicle List | Parking Management</title>
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
  	        --success-color: #2ecc71;
  	        --danger-color: #ff7675;
  	        --warning-color: #fdcb6e;
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
    text-decoration: none; 
    text-shadow: 0 0 8px var(--glow-color);
}
  	    .breadcrumb-item.active {
  	        color: var(--light-color);
  	    }

  	    /* Table Container */
  	    .vehicle-table-container {
  	        background: var(--card-bg);
  	        border-radius: 15px;
  	        padding: 30px;
  	        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.5);
  	        margin-top: 30px;
  	        animation: fadeIn 0.8s ease-out;
  	        border: 1px solid var(--border-color);
  	        position: relative;
  	        overflow: hidden;
  	        backdrop-filter: blur(10px);
  	    }

  	    .vehicle-table-container::before {
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

  	    /* Table Styles */
  	    .vehicle-table {
  	        width: 100%;
  	        border-collapse: separate;
  	        border-spacing: 0 10px;
  	        color: var(--text-color);
  	    }

  	    .vehicle-table thead th {
  	        background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
  	        color: white;
  	        padding: 15px;
  	        font-weight: 600;
  	        text-transform: uppercase;
  	        font-size: 0.85rem;
  	        letter-spacing: 0.5px;
  	        position: sticky;
  	        top: 0;
  	        z-index: 10;
  	        border: none;
  	        text-shadow: 0 0 5px rgba(0, 0, 0, 0.3);
  	    }

  	    .vehicle-table tbody tr {
  	        background-color: rgba(40, 40, 40, 0.7);
  	        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
  	        transition: all 0.3s ease;
  	        border-radius: 10px;
  	        animation: fadeIn 0.5s ease forwards;
  	        opacity: 0;
  	    }

  	    .vehicle-table tbody tr:hover {
  	        transform: translateX(5px);
  	        box-shadow: 0 5px 15px rgba(108, 92, 231, 0.3);
  	        background-color: rgba(108, 92, 231, 0.1);
  	    }

  	    .vehicle-table tbody td {
  	        padding: 15px;
  	        vertical-align: middle;
  	        border-top: 1px solid var(--border-color);
  	        border-bottom: 1px solid var(--border-color);
  	    }

  	    .vehicle-table tbody td:first-child {
  	        border-left: 1px solid var(--border-color);
  	        border-radius: 10px 0 0 10px;
  	    }

  	    .vehicle-table tbody td:last-child {
  	        border-right: 1px solid var(--border-color);
  	        border-radius: 0 10px 10px 0;
  	    }

  	    /* Vehicle Type Badges */
  	    .vehicle-type-badge {
  	        display: inline-flex;
  	        align-items: center;
  	        padding: 8px 15px;
  	        border-radius: 50px;
  	        font-weight: 500;
  	        font-size: 0.85rem;
  	        transition: all 0.3s ease;
  	    }

  	    .vehicle-type-badge.car {
  	        background-color: rgba(108, 92, 231, 0.2);
  	        color: var(--secondary-color);
  	        box-shadow: 0 0 10px rgba(108, 92, 231, 0.2);
  	    }

  	    .vehicle-type-badge.bike {
  	        background-color: rgba(46, 204, 113, 0.2);
  	        color: var(--success-color);
  	        box-shadow: 0 0 10px rgba(46, 204, 113, 0.2);
  	    }

  	    .vehicle-type-badge.truck {
  	        background-color: rgba(253, 203, 110, 0.2);
  	        color: var(--warning-color);
  	        box-shadow: 0 0 10px rgba(253, 203, 110, 0.2);
  	    }

  	    .vehicle-type-badge i {
  	        margin-right: 8px;
  	        font-size: 0.9rem;
  	    }

  	    /* Action Links */
  	    .action-link {
    color: white;
    text-decoration: none; /* यह लाइन जोड़ें */
    padding: 10px;
    border-radius: 8px;
    /* ... अन्य स्टाइल्स ... */
}

  	    .action-link {
  	        color: white;
  	        text-decoration: none;
  	        padding: 10px;
  	        border-radius: 8px;
  	        width: 40px;
  	        height: 40px;
  	        display: flex;
  	        align-items: center;
  	        justify-content: center;
  	        transition: all 0.3s ease;
  	        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
  	        position: relative;
  	        overflow: hidden;
  	    }

  	    .action-link::after {
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

  	    .action-link:hover::after {
  	        left: 100%;
  	    }

  	    .action-link.view {
  	        background: var(--primary-color);
  	    }

  	    .action-link.edit {
  	        background: var(--warning-color);
  	    }

  	    .action-link.delete {
  	        background: var(--danger-color);
  	    }

  	    .action-link:hover {
  	        transform: translateY(-3px);
  	        box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
  	    }

  	    /* Add New Button */
  	    .add-new-btn {
  	        position: fixed;
  	        bottom: 30px;
  	        right: 30px;
  	        width: 70px;
  	        height: 70px;
  	        border-radius: 50%;
  	        background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
  	        color: white;
  	        display: flex;
  	        align-items: center;
  	        justify-content: center;
  	        font-size: 1.8rem;
  	        box-shadow: 0 5px 25px rgba(108, 92, 231, 0.5);
  	        z-index: 100;
  	        transition: all 0.5s ease;
  	        animation: pulse 2s infinite;
  	    }

  	    .add-new-btn:hover {
  	        transform: scale(1.1) rotate(90deg);
  	        box-shadow: 0 10px 30px rgba(108, 92, 231, 0.7);
  	        animation: none;
  	    }
  	    
  	    

  	    @keyframes pulse {
  	        0% { box-shadow: 0 0 0 0 rgba(108, 92, 231, 0.7); }
  	        70% { box-shadow: 0 0 0 15px rgba(108, 92, 231, 0); }
  	        100% { box-shadow: 0 0 0 0 rgba(108, 92, 231, 0); }
  	    }

  	    /* Responsive Adjustments */
  	    @media (max-width: 992px) {
  	        #main {
  	            margin-left: 0;
  	        }
  	    }

  	    @media (max-width: 768px) {
  	        .vehicle-table-container {
  	            padding: 20px;
  	        }
  	        
  	        .vehicle-table thead {
  	            display: none;
  	        }
  	        
  	        .vehicle-table tbody tr {
  	            display: block;
  	            margin-bottom: 20px;
  	            border-radius: 10px;
  	        }
  	        
  	        .vehicle-table tbody td {
  	            display: flex;
  	            justify-content: space-between;
  	            align-items: center;
  	            padding: 12px 15px;
  	            border: none;
  	            border-bottom: 1px solid var(--border-color);
  	        }
  	        
  	        .vehicle-table tbody td:before {
  	            content: attr(data-label);
  	            font-weight: 600;
  	            color: var(--secondary-color);
  	            margin-right: 15px;
  	        }
  	        
  	        .vehicle-table tbody td:first-child {
  	            border-radius: 10px 10px 0 0;
  	        }
  	        
  	        .vehicle-table tbody td:last-child {
  	            border-bottom: none;
  	            border-radius: 0 0 10px 10px;
  	        }
  	        
  	        .add-new-btn {
  	            width: 60px;
  	            height: 60px;
  	            font-size: 1.5rem;
  	            bottom: 20px;
  	            right: 20px;
  	        }
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
      		<h1><i class="fas fa-car me-2"></i>Vehicle Management</h1>
      		<nav>
        		<ol class="breadcrumb">
          			<li class="breadcrumb-item"><a href="admindashboard"><i class="fas fa-home"></i> Home</a></li>
          			<li class="breadcrumb-item active"><i class="fas fa-list"></i> Vehicle List</li>
        		</ol>
      		</nav>
    	</div><!-- End Page Title -->

        <div class="vehicle-table-container animate__animated animate__fadeInUp">
            <table class="vehicle-table">
                <thead>
                    <tr>
                        <th>Parking Code</th>
                        <th>Vehicle No</th>
                        <th>Vehicle Type</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listvehicle }" var="v" varStatus="loop">
                        <tr style="animation-delay: ${loop.index * 0.05}s">
                            <td data-label="Parking Code">${v[1]}</td>
                            <td data-label="Vehicle No">${v[3]}</td>
                            <td data-label="Vehicle Type">
                                <c:choose>
                                    <c:when test="${v[4] == 'Car'}">
                                        <span class="vehicle-type-badge car">
                                            <i class="fas fa-car"></i> ${v[4]}
                                        </span>
                                    </c:when>
                                    <c:when test="${v[4] == 'Bike' || v[4] == 'Motorcycle'}">
                                        <span class="vehicle-type-badge bike">
                                            <i class="fas fa-motorcycle"></i> ${v[4]}
                                        </span>
                                    </c:when>
                                    <c:otherwise>
                                        <span class="vehicle-type-badge truck">
                                            <i class="fas fa-truck"></i> ${v[4]}
                                        </span>
                                    </c:otherwise>
                                </c:choose>
                            </td>
                            <td data-label="First Name">${v[5]}</td>
                            <td data-label="Last Name">${v[6]}</td>
                            <td data-label="Actions">
                                <div class="action-links">
                                    <a href="viewvehicle?vehicleId=${v[0]}" class="action-link view" title="View">
                                        <i class="fas fa-eye"></i>
                                    </a>
                                    <a href="editvehicle?vehicleId=${v[0]}" class="action-link edit" title="Edit">
                                        <i class="fas fa-edit"></i>
                                    </a>
                                </div>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

        <!-- Floating Add New Button -->
        <a href="addvehicle" class="add-new-btn animate__animated animate__bounceIn">
            <i class="fas fa-plus"></i>
        </a>
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
  	            particle.style.background = `rgba(108, 92, 231, ${Math.random() * 0.5 + 0.3})`;
  	            
  	            particlesContainer.appendChild(particle);
  	        }
  	    }
  	    
  	    // Add CSS animation for particles
  	    const style = document.createElement('style');
  	    style.textContent = `
  	        .particle {
  	            position: absolute;
  	            border-radius: 50%;
  	            pointer-events: none;
  	            z-index: -1;
  	        }
  	      
  	        @keyframes float {
  	            0% { transform: translateY(0) translateX(0); }
  	            50% { transform: translateY(-20px) translateX(10px); }
  	            100% { transform: translateY(0) translateX(0); }
  	        }
  	    `;
  	    document.head.appendChild(style);
  	    
  	    // Delete confirmation (if you add delete functionality later)
  	    $('.action-link.delete').click(function(e) {
  	        e.preventDefault();
  	        const deleteUrl = $(this).attr('href');
  	        
  	        Swal.fire({
  	            title: 'Confirm Deletion',
  	            text: "Are you sure you want to delete this vehicle record?",
  	            icon: 'warning',
  	            showCancelButton: true,
  	            confirmButtonColor: '#ff7675',
  	            cancelButtonColor: '#6c5ce7',
  	            confirmButtonText: 'Yes, delete it!',
  	            cancelButtonText: 'Cancel',
  	            background: 'var(--card-bg)',
  	            color: 'var(--text-color)',
  	            reverseButtons: true
  	        }).then((result) => {
  	            if (result.isConfirmed) {
  	                window.location.href = deleteUrl;
  	            }
  	        });
  	    });
  	});
  	</script>
</body>
</html>