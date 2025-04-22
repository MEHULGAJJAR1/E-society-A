<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-Society Gate Management System</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        :root {
            --primary-color: #2c3e50;
            --secondary-color: #3498db;
            --accent-color: #e74c3c;
        }
        
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-image: url('https://images.unsplash.com/photo-1560518883-ce09059eeffa?ixlib=rb-4.0.3&auto=format&fit=crop&w=2073&q=80');
            background-size: cover;
            background-attachment: fixed;
            background-position: center;
            position: relative;
        }
        
        body::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.7);
            z-index: -1;
        }
        
        .navbar {
            background-color: var(--primary-color) !important;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
        }
        
        .navbar-brand {
            font-weight: 700;
            font-size: 1.8rem;
        }
        
        .nav-link {
            color: white !important;
            font-weight: 500;
            margin: 0 10px;
            transition: all 0.3s;
        }
        
        .nav-link:hover {
            color: var(--secondary-color) !important;
        }
        
        .btn-login {
            background-color: var(--secondary-color);
            color: white;
            border-radius: 50px;
            padding: 8px 20px;
            font-weight: 600;
            transition: all 0.3s;
        }
        
        .btn-login:hover {
            background-color: #2980b9;
            transform: translateY(-2px);
        }
        
        .main-container {
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            margin-top: 30px;
            margin-bottom: 30px;
            padding: 30px;
        }
        
        .section-title {
            color: var(--primary-color);
            font-weight: 700;
            margin-bottom: 25px;
            position: relative;
            padding-bottom: 10px;
        }
        
        .section-title::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 60px;
            height: 3px;
            background-color: var(--secondary-color);
        }
        
        .form-label {
            font-weight: 600;
            color: var(--primary-color);
        }
        
        .form-control, .form-select {
            border-radius: 5px;
            padding: 10px 15px;
            border: 1px solid #ced4da;
            transition: all 0.3s;
        }
        
        .form-control:focus, .form-select:focus {
            border-color: var(--secondary-color);
            box-shadow: 0 0 0 0.25rem rgba(52, 152, 219, 0.25);
        }
        
        .btn-submit {
            background-color: var(--secondary-color);
            color: white;
            font-weight: 600;
            padding: 10px 25px;
            border-radius: 5px;
            transition: all 0.3s;
        }
        
        .btn-submit:hover {
            background-color: #2980b9;
            transform: translateY(-2px);
        }
        
        .card {
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
            transition: all 0.3s;
            margin-bottom: 20px;
            border: none;
        }
        
        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        }
        
        .card-header {
            background-color: var(--primary-color);
            color: white;
            font-weight: 600;
            border-radius: 10px 10px 0 0 !important;
        }
        
        .table th {
            background-color: var(--primary-color);
            color: white;
        }
        
        .badge-entry {
            background-color: #2ecc71;
        }
        
        .badge-exit {
            background-color: #e74c3c;
        }
        
        footer {
            background-color: var(--primary-color);
            color: white;
            padding: 30px 0;
            margin-top: 50px;
        }
        
        .footer-heading {
            font-weight: 700;
            margin-bottom: 20px;
            font-size: 1.2rem;
        }
        
        .footer-link {
            color: #bdc3c7;
            text-decoration: none;
            transition: all 0.3s;
            display: block;
            margin-bottom: 10px;
        }
        
        .footer-link:hover {
            color: white;
            text-decoration: none;
            transform: translateX(5px);
        }
        
        .social-icon {
            display: inline-block;
            width: 40px;
            height: 40px;
            background-color: rgba(255, 255, 255, 0.1);
            border-radius: 50%;
            text-align: center;
            line-height: 40px;
            margin-right: 10px;
            transition: all 0.3s;
        }
        
        .social-icon:hover {
            background-color: var(--secondary-color);
            transform: translateY(-3px);
        }
        
        .copyright {
            border-top: 1px solid rgba(255, 255, 255, 0.1);
            padding-top: 20px;
            margin-top: 20px;
        }
        
        .nav-tabs .nav-link {
            color: var(--primary-color) !important;
            font-weight: 600;
            border: none;
            padding: 12px 20px;
        }
        
        .nav-tabs .nav-link.active {
            color: var(--secondary-color) !important;
            border-bottom: 3px solid var(--secondary-color);
            background-color: transparent;
        }
        
        .tab-content {
            padding: 20px 0;
        }
    </style>
</head>
<body>
    <!-- Header/Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="#">
                <i class="fas fa-building me-2"></i>E-Society Gate
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#"><i class="fas fa-home me-1"></i> Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#services"><i class="fas fa-concierge-bell me-1"></i> Services</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#visitor-entry"><i class="fas fa-user-friends me-1"></i> Visitor Entry</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#vehicle-entry"><i class="fas fa-car me-1"></i> Vehicle Entry</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="visitorlist"><i class="fas fa-user-friends me-1"></i> Visitor Details</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="vehiclelist"><i class="fas fa-car me-1"></i> Vehicle Details</a>
                    </li>
                    
                    <li class="nav-item">
                        <a class="nav-link btn-login" href="login"><i class="fas fa-sign-in-alt me-1"></i> Login</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container main-container">
        <!-- Services Section -->
        <section id="services" class="mb-5">
            <h2 class="section-title">Our Services</h2>
            <div class="row">
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body text-center">
                            <i class="fas fa-car-alt fa-3x mb-3" style="color: var(--secondary-color);"></i>
                            <h5 class="card-title">Vehicle Management</h5>
                            <p class="card-text">Efficient tracking of all vehicle entries and exits with detailed records.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body text-center">
                            <i class="fas fa-user-shield fa-3x mb-3" style="color: var(--secondary-color);"></i>
                            <h5 class="card-title">Visitor Management</h5>
                            <p class="card-text">Comprehensive visitor tracking with ID verification and purpose recording.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body text-center">
                            <i class="fas fa-chart-line fa-3x mb-3" style="color: var(--secondary-color);"></i>
                            <h5 class="card-title">Real-time Reports</h5>
                            <p class="card-text">Generate detailed reports of all entries and exits with filtering options.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

      
        
        
       
         <section id="visitor-entry" class="mb-5">
            <h2 class="section-title">Visitor Entry Form</h2>
            <form action="savevisitor" method="post" id="visitorForm">
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="visitorName" class="form-label">Visitor Name</label>
                        <input type="text" class="form-control" id="visitorName" name="visiterName"required>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="visitorContact" class="form-label">Contact Number</label>
                        <input type="tel" class="form-control" id="visitorContact" name="contactNum"required>
                    </div>
                    
                    <!-- <div class="col-md-6 mb-3">
                        <label for="idType" class="form-label">Vehicle Type</label>
                        <select class="form-select" id="idType" name="vehicleType"required>
                            <option value="">Select Vehicle Type</option>
                            <option value="car">Car</option>
                            <option value="bike">Bike</option>
                            <option value="truck">Truck</option>
                            
                            <option value="other">Other</option>
                        </select>
                    </div> -->
                </div>
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="idType" class="form-label">ID Proof Type</label>
                        <select class="form-select" id="idType" name="idProof"required>
                            <option value="">Select ID Type</option>
                            <option value="aadhar">Aadhar Card</option>
                            <option value="pan">PAN Card</option>
                            <option value="voter">Voter ID</option>
                            <option value="driving">Driving License</option>
                            <option value="other">Other</option>
                        </select>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="idNumber" class="form-label">ID Number</label>
                        <input type="text" class="form-control" id="idNumber" name="idProofNum"required>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="flatNumber" class="form-label">Flat Number Visiting</label>
                        <input type="text" class="form-control" id="flatNumber" name="flatNum"required>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="purpose" class="form-label">Purpose of Visit</label>
                        <input type="text" class="form-control" id="purpose" name="purpose"required>
                    </div>
                    
                    <div class="col-md-6 mb-3">
                        <label for="purpose" class="form-label">Number of Visitor</label>
                        <input type="text" class="form-control" id="purpose" required name="numVisitor">
                    </div>
                </div>
                <div class="mb-3">
                    <label for="remarks" class="form-label">Remarks</label>
                    <textarea class="form-control" id="remarks" name="remark" required rows="2"></textarea>
                </div>
                <button type="submit" class="btn btn-submit">Submit Visitor Entry</button>
            </form>
        </section>
        
        
        

        <!-- Vehicle Entry Section -->
         <section id="vehicle-entry" class="mb-5">
            <h2 class="section-title">Vehicle Entry Form</h2>
            <form action="savevehicle" method="post" id="vehicleForm">
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="vehicleNum" class="form-label">Vehicle Number</label>
                        <input type="text" class="form-control" name="vehicleNum" id="vehicleNumber" required>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="vehicleType" class="form-label">Vehicle Type</label>
                        <select class="form-select" id="vehicleType" name="vehicleType"required>
                            <option value="">Select Vehicle Type</option>
                            <option value="car">Car</option>
                            <option value="bike">Bike</option>
                            <option value="scooter">Scooter</option>
                            <option value="truck">Truck</option>
                            <option value="other">Other</option>
                        </select>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="driverName" class="form-label">Driver Name</label>
                        <input type="text" class="form-control" id="driverName" name="driverName"required>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="driverContact" class="form-label">Driver Contact</label>
                        <input type="tel" class="form-control" id="driverContact"name="contactNum"required>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="flatNumberVehicle" class="form-label">Flat Number</label>
                        <input type="text" class="form-control" id="flatNumberVehicle" name="flatNum" required>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="purposeVehicle" class="form-label">Purpose</label>
                        <input type="text" class="form-control" id="purposeVehicle" name="purpose"required>
                    </div>
                </div>
                <div class="mb-3">
                    <label for="remarksVehicle" class="form-label">Remarks</label>
                    <textarea class="form-control" id="remarksVehicle" name="remark"rows="2"required></textarea>
                </div>
                <button type="submit" class="btn btn-submit">Submit Vehicle Entry</button>
            </form>
        </section> 

        <!-- Recent Entries Section -->
       

        <!-- Contact Section -->
        <section id="contact">
            <h2 class="section-title">Contact Us</h2>
            <div class="row">
                <div class="col-md-6 mb-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title"><i class="fas fa-map-marker-alt me-2"></i> Address</h5>
                            <p class="card-text">Greenfield Society<br>Main Road, Andheri East<br>Mumbai - 400069</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 mb-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title"><i class="fas fa-phone-alt me-2"></i> Contact</h5>
                            <p class="card-text">Security: +91 9876543210<br>Office: +91 9876543211<br>Email: office@greenfieldsociety.com</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title mb-4">Send us a Message</h5>
                    <form action="savecontactus" method="post" id="contactForm">
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <input type="text" name="yourName" class="form-control" placeholder="Your Name" required>
                            </div>
                            <div class="col-md-6 mb-3">
                                <input type="email" name="email"class="form-control" placeholder="Your Email" required>
                            </div>
                        </div>
                        <div class="mb-3">
                            <input type="text" name="subject" class="form-control" placeholder="Subject">
                        </div>
                        <div class="mb-3">
                            <textarea class="form-control" name="message" rows="4" placeholder="Your Message" required></textarea>
                        </div>
                        <button type="submit" class="btn btn-submit">Send Message</button>
                    </form>
                </div>
            </div>
        </section>
    </div>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-4 mb-4">
                    <h3 class="footer-heading">About Society</h3>
                    <p>Greenfield Society is a premium residential complex with world-class amenities and 24/7 security services.</p>
                    <div class="mt-3">
                        <a href="#" class="social-icon"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" class="social-icon"><i class="fab fa-twitter"></i></a>
                        <a href="#" class="social-icon"><i class="fab fa-instagram"></i></a>
                        <a href="#" class="social-icon"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                </div>
                <div class="col-lg-2 col-md-6 mb-4">
                    <h3 class="footer-heading">Quick Links</h3>
                    <a href="#" class="footer-link">Home</a>
                    <a href="#services" class="footer-link">Services</a>
                    <a href="#visitor-entry" class="footer-link">Visitor Entry</a>
                    <a href="#vehicle-entry" class="footer-link">Vehicle Entry</a>
                    <a href="#contact" class="footer-link">Contact</a>
                </div>
                <div class="col-lg-3 col-md-6 mb-4">
                    <h3 class="footer-heading">Important Links</h3>
                    <a href="#" class="footer-link">Society Rules</a>
                    <a href="#" class="footer-link">Maintenance</a>
                    <a href="#" class="footer-link">Complaints</a>
                    <a href="#" class="footer-link">Events</a>
                    <a href="#" class="footer-link">Notice Board</a>
                </div>
                <div class="col-lg-3 col-md-6 mb-4">
                    <h3 class="footer-heading">Newsletter</h3>
                    <p>Subscribe to our newsletter for updates and announcements.</p>
                    <div class="input-group mb-3">
                        <input type="email" class="form-control" placeholder="Your Email">
                        <button class="btn btn-primary" type="button">Subscribe</button>
                    </div>
                </div>
            </div>
            <div class="copyright text-center">
                <p class="mb-0">&copy; 2023 Greenfield Society. All Rights Reserved.</p>
            </div>
        </div>
    </footer>

    <!-- Bootstrap JS Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    
    <!-- Custom JavaScript -->
  <!--   <script>
        // Form submission handling
        document.getElementById('visitorForm').addEventListener('submit', function(e) {
            e.preventDefault();
            alert('Visitor entry submitted successfully!');
            this.reset();
        });
        
        document.getElementById('vehicleForm').addEventListener('submit', function(e) {
            e.preventDefault();
            alert('Vehicle entry submitted successfully!');
            this.reset();
        });
        
        document.getElementById('contactForm').addEventListener('submit', function(e) {
            e.preventDefault();
            alert('Your message has been sent successfully!');
            this.reset();
        });
        
        // Smooth scrolling for anchor links
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();
                document.querySelector(this.getAttribute('href')).scrollIntoView({
                    behavior: 'smooth'
                });
            });
        });
    </script> -->
</body>
</html>