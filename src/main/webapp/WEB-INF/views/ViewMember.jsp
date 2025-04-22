<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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

/* Member Information Styles */

member-info {
  max-width: 800px;
  margin: 40px auto;
  padding: 20px;
  background-color: #fff;
  border: 1px solid #ddd;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

member-info h2 {
  font-size: 24px;
  margin-bottom: 10px;
}

member-info p {
  margin-bottom: 20px;
}

member-info label {
  font-weight: bold;
  margin-bottom: 5px;
}

member-info span {
  font-size: 18px;
  color: #666;
}

/* Member Details Table Styles */

member-details-table {
  width: 100%;
  border-collapse: collapse;
  margin-bottom: 20px;
}

member-details-table th, .member-details-table td {
  border: 1px solid #ddd;
  padding: 10px;
  text-align: left;
}

member-details-table th {
  background-color: #f0f0f0;
}

/* Buttons Styles */

buttons {
  text-align: center;
  margin-top: 20px;
}

buttons button {
  width: 150px;
  height: 40px;
  background-color: #333;
  color: #fff;
  padding: 10px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  margin: 0 10px;
}

buttons button:hover {
  background-color: #555;
}
</style>

</head>
<body>
<h2>View Member</h2>
 <table border="1">
 
 	<tr>
 		<th>MemberName<th>
 		<th>Age<th>
 		<th>ProfilePhoto<th>
 		<th>HouseId<th>
 	</tr>


MemberName : ${member.memberName }<br>
Age :  ${member.age }<br>
Profile :  ${member.profilePhoto }<br>
House Id:  ${member.houseId }<br>

	<tr>
		<td>${member.memberName }<td>
		<td>${member.age }<td>
		<td>${member.profilePhoto }<td>
		<td>${member.houseId }<td>
	</tr>

 </table>
</body>
</html> --%>



<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Member Details</title>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
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
  --border-color: rgba(255, 255, 255, 0.1);
  --glow-color: rgba(108, 92, 231, 0.6);
}

* {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

body {
  font-family: 'Poppins', sans-serif;
  background-color: var(--darker-color);
  color: var(--text-color);
  background-image: 
    radial-gradient(circle at 25% 25%, rgba(108, 92, 231, 0.08) 0%, transparent 50%),
    radial-gradient(circle at 75% 75%, rgba(0, 206, 201, 0.08) 0%, transparent 50%);
  background-size: 200% 200%;
  animation: gradientBG 15s ease infinite;
  min-height: 100vh;
  padding: 40px 20px;
}

@keyframes gradientBG {
  0% { background-position: 0% 0%; }
  50% { background-position: 100% 100%; }
  100% { background-position: 0% 0%; }
}

/* Header Styles */
.header {
  text-align: center;
  margin-bottom: 40px;
  position: relative;
}

.header h2 {
  font-size: 2.5rem;
  color: var(--light-color);
  text-shadow: 0 0 10px var(--glow-color);
  position: relative;
  display: inline-block;
}

.header h2::after {
  content: '';
  position: absolute;
  bottom: -10px;
  left: 50%;
  transform: translateX(-50%);
  width: 80px;
  height: 3px;
  background: linear-gradient(90deg, var(--primary-color), var(--accent-color));
  border-radius: 3px;
}

/* Member Card Styles */
.member-card {
  max-width: 800px;
  margin: 0 auto;
  padding: 30px;
  background: var(--card-bg);
  border-radius: 15px;
  box-shadow: 0 10px 30px rgba(0, 0, 0, 0.5);
  border: 1px solid var(--border-color);
  backdrop-filter: blur(10px);
  position: relative;
  overflow: hidden;
  animation: fadeIn 0.8s ease-out;
}

.member-card::before {
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
.member-table {
  width: 100%;
  border-collapse: separate;
  border-spacing: 0 15px;
  margin: 30px 0;
}

.member-table th {
  background-color: var(--primary-color);
  color: white;
  font-weight: 500;
  padding: 15px;
  text-align: left;
  border: none;
  position: sticky;
  top: 0;
  z-index: 10;
}

.member-table td {
  padding: 15px;
  background-color: rgba(40, 40, 40, 0.7);
  border-top: 1px solid var(--border-color);
  border-bottom: 1px solid var(--border-color);
  position: relative;
}

.member-table td:first-child {
  border-left: 1px solid var(--border-color);
  border-radius: 10px 0 0 10px;
}

.member-table td:last-child {
  border-right: 1px solid var(--border-color);
  border-radius: 0 10px 10px 0;
}

.member-table tr:hover td {
  background-color: rgba(108, 92, 231, 0.1);
  border-color: rgba(108, 92, 231, 0.3);
}

.profile-photo {
  width: 60px;
  height: 60px;
  border-radius: 50%;
  object-fit: cover;
  border: 2px solid var(--primary-color);
  box-shadow: 0 0 15px var(--glow-color);
  transition: transform 0.3s ease;
}

.profile-photo:hover {
  transform: scale(1.1);
}

/* Button Styles */
.action-buttons {
  text-align: center;
  margin-top: 30px;
}

.btn {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  padding: 12px 25px;
  border-radius: 50px;
  font-weight: 500;
  text-decoration: none;
  transition: all 0.5s;
  margin: 0 10px;
  min-width: 150px;
  position: relative;
  overflow: hidden;
}

.btn i {
  margin-right: 8px;
}

.btn-primary {
  background: linear-gradient(135deg, var(--primary-color), var(--accent-color));
  color: white;
  border: none;
  box-shadow: 0 5px 20px rgba(108, 92, 231, 0.5);
}

.btn-primary:hover {
  transform: translateY(-3px);
  box-shadow: 0 8px 25px rgba(108, 92, 231, 0.7);
  letter-spacing: 1px;
}

.btn-outline {
  background: transparent;
  color: var(--secondary-color);
  border: 1px solid var(--secondary-color);
}

.btn-outline:hover {
  background: var(--secondary-color);
  color: white;
  box-shadow: 0 0 15px var(--glow-color);
}

.btn::after {
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
  transition: all 0.8s ease;
}

.btn:hover::after {
  left: 100%;
}

/* Responsive adjustments */
@media (max-width: 768px) {
  .member-table {
    display: block;
    overflow-x: auto;
  }
  
  .action-buttons {
    display: flex;
    flex-direction: column;
    gap: 15px;
  }
  
  .btn {
    width: 100%;
    margin: 5px 0;
  }
}
</style>
</head>
<body>
<div class="member-card">
  <div class="header">
    <h2><i class="fas fa-user-circle"></i> Member Details</h2>
  </div>

  <table class="member-table">
    <thead>
      <tr>
        <th><i class="fas fa-signature"></i> Member Name</th>
        <th><i class="fas fa-birthday-cake"></i> Age</th>
        <th><i class="fas fa-camera"></i> Profile Photo</th>
        <th><i class="fas fa-home"></i> House ID</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>
          <span class="member-name">${member.memberName}</span>
        </td>
        <td>${member.age}</td>
        <td>
          
        </td>
        <td>${member.houseId}</td>
      </tr>
    </tbody>
  </table>

  <div class="action-buttons">
    <a href="editmember" class="btn btn-primary">
      <i class="fas fa-edit"></i> Edit Member
    </a>
    <a href="listmembers" class="btn btn-outline">
      <i class="fas fa-arrow-left"></i> Back to List
    </a>
  </div>
</div>

<!-- Particle background -->
<div class="particles" id="particles-js"></div>

<script>
// Create floating particles
document.addEventListener('DOMContentLoaded', function() {
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
});

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
</script>
</body>
</html>