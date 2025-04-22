 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  

<!DOCTYPE html>
<html lang="en" dir="ltr">
   <head>
      <meta charset="utf-8">
      <title>Registration Form</title>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
   <style>
   @import url('https://fonts.googleapis.com/css?family=Montserrat:600|Noto+Sans|Open+Sans:400,700&display=swap');
   
   * {
     margin: 0;
     padding: 0;
     border-radius: 5px;
     box-sizing: border-box;
   }
   
   body {
     height: 100vh;
     display: flex;
     align-items: center;
     text-align: center;
     font-family: sans-serif;
     justify-content: center;
     background: linear-gradient(135deg, #00e5ff, #4d6bff, #b14dff, #ff00ff);
     background-size: 400% 400%;
     animation: gradient 15s ease infinite;
     position: relative;
     overflow: hidden;
   }
   
   /* Animated background */
   @keyframes gradient {
     0% {
       background-position: 0% 50%;
     }
     50% {
       background-position: 100% 50%;
     }
     100% {
       background-position: 0% 50%;
     }
   }
   
   /* Add geometric shapes for extra visual effect */
   body::before, body::after {
     content: "";
     position: absolute;
     width: 50%;
     height: 50%;
     background: rgba(255, 255, 255, 0.1);
     transform: rotate(45deg);
     z-index: -1;
   }
   
   body::before {
     top: -25%;
     left: -25%;
   }
   
   body::after {
     bottom: -25%;
     right: -25%;
   }
   
   .container {
     position: relative;
     width: 700px;
     background: white;
     padding: 60px 40px;
     box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
     backdrop-filter: blur(10px);
   }
   
   header {
     font-size: 40px;
     margin-bottom: 40px;
     font-family: 'Montserrat', sans-serif;
     color: #333;
   }
   
   .input-field, form .button {
     margin: 25px 0;
     position: relative;
     height: 50px;
     width: 100%;
   }
   
   .input-field input, .input-field select {
     height: 100%;
     width: 100%;
     border: 1px solid silver;
     padding-left: 15px;
     outline: none;
     font-size: 19px;
     transition: .4s;
     background-color: white;
     color: #333;
     appearance: none;
   }
   
   .input-field select {
     cursor: pointer;
   }
   
   .select-arrow {
     position: absolute;
     right: 15px;
     top: 50%;
     transform: translateY(-50%);
     pointer-events: none;
     color: #666;
   }
   
   input:focus, select:focus {
     border: 1px solid #1DA1F2;
   }
   
   .input-field label, span.show {
     position: absolute;
     top: 50%;
     transform: translateY(-50%);
   }
   
   .input-field label {
     left: 15px;
     pointer-events: none;
     color: grey;
     font-size: 18px;
     transition: .4s;
   }
   
   span.show {
     right: 20px;
     color: #111;
     font-size: 14px;
     font-weight: bold;
     cursor: pointer;
     user-select: none;
     visibility: hidden;
     font-family: 'Open Sans', sans-serif;
   }
   
   input:valid ~ span.show {
     visibility: visible;
   }
   
   input:focus ~ label,
   input:valid ~ label,
   select:focus ~ label,
   select:valid ~ label {
     transform: translateY(-33px);
     background: white;
     font-size: 16px;
     color: #1DA1F2;
     padding: 0 5px;
   }
   
   form .button {
     margin-top: 30px;
     overflow: hidden;
     z-index: 111;
   }
   
   .button .inner {
     position: absolute;
     height: 100%;
     width: 300%;
     left: -100%;
     z-index: -1;
     transition: all .4s;
     background: -webkit-linear-gradient(right, #00dbde, #fc00ff, #00dbde, #fc00ff);
   }
   
   .button:hover .inner {
     left: 0;
   }
   
   .button button {
     width: 100%;
     height: 100%;
     border: none;
     background: none;
     outline: none;
     color: white;
     font-size: 20px;
     cursor: pointer;
     font-family: 'Montserrat', sans-serif;
   }
   
   .container .auth {
     margin: 35px 0 20px 0;
     font-size: 19px;
     color: grey;
   }
   
   .links {
     display: flex;
     cursor: pointer;
   }
   
   .facebook, .google {
     height: 40px;
     width: 100%;
     border: 1px solid silver;
     border-radius: 3px;
     margin: 0 10px;
     transition: .4s;
     display: flex;
     align-items: center;
     justify-content: center;
   }
   
   .facebook:hover {
     border: 1px solid #4267B2;
   }
   
   .google:hover {
     border: 1px solid #dd4b39;
   }
   
   .facebook i, .facebook span {
     color: #4267B2;
   }
   
   .google i, .google span {
     color: #dd4b39;
   }
   
   .links i {
     font-size: 23px;
     line-height: 40px;
     margin-right: 10px;
   }
   
   .links span {
     font-size: 17px;
     font-weight: bold;
     font-family: 'Open Sans', sans-serif;
   }
   
   .signup {
     margin-top: 30px;
     font-family: 'Noto Sans', sans-serif;
   }
   
   .signup a {
     color: #3498db;
     text-decoration: none;
   }
   
   .signup a:hover {
     text-decoration: underline;
   }

   /* Profile picture upload styles */
   .profile-upload {
     display: flex;
     align-items: center;
     margin: 25px 0;
     position: relative;
     height: 50px;
   }

   .file-input-wrapper {
     position: relative;
     overflow: hidden;
     display: inline-block;
     height: 100%;
   }

   .file-input-wrapper input[type=file] {
     font-size: 100px;
     position: absolute;
     left: 0;
     top: 0;
     opacity: 0;
     cursor: pointer;
     height: 100%;
   }

   .file-input-button {
     display: inline-flex;
     align-items: center;
     justify-content: center;
     height: 100%;
     padding: 0 20px;
     background: linear-gradient(to right, #00dbde, #fc00ff);
     color: white;
     border: none;
     border-radius: 5px;
     font-size: 16px;
     cursor: pointer;
     transition: all 0.3s;
   }

   .file-input-button i {
     margin-right: 8px;
   }

   .file-input-button:hover {
     opacity: 0.9;
   }

   .file-details {
     display: flex;
     align-items: center;
     margin-left: 15px;
   }

   .file-name {
     font-size: 16px;
     color: #666;
     margin-right: 10px;
   }

   .preview-image {
     width: 40px;
     height: 40px;
     object-fit: cover;
     border-radius: 50%;
     border: 2px solid #1DA1F2;
     display: none;
   }

   /* Two column layout for form */
   .form-row {
     display: flex;
     gap: 20px;
   }

   .form-col {
     flex: 1;
   }
   </style>
   
   </head>
   
   <body>
      <div class="container">
         <header>Register Form</header>
         <form action="saveuser" method="post" enctype="multipart/form-data">
            <div class="form-row">
               <div class="form-col">
                  <div class="input-field">
                     <input type="text" name="firstName" required>
                     <label>First Name</label>
                  </div>
                  <div class="input-field">
                     <input type="text" name="contactNum" required>
                     <label>Contact No</label>
                  </div>
                  <div class="input-field">
                     <input class="pswrd" type="password" name="password" required>
                     <span class="show">SHOW</span>
                     <label>Password</label>
                  </div>
                  <div class="input-field">
                     <input class="changepswrd" type="password" name="Changepassword" required>
                     <span class="show">SHOW</span>
                     <label>Confirm Password</label>
                  </div>
               </div>
               <div class="form-col">
                  <div class="input-field">
                     <input type="text" name="lastName" required>
                     <label>Last Name</label>
                  </div>
                  <div class="input-field">
                     <input type="text" name="email" required>
                     <label>Email</label>
                  </div>
                  <div class="input-field">
                     <select name="gender" required>
                        <option value=""></option>
                        <option value="male">Male</option>
                        <option value="female">Female</option>
                        <option value="other">Other</option>
                     </select>
                     <span class="select-arrow"><i class="fas fa-chevron-down"></i></span>
                     <label>Gender</label>
                  </div>
               </div>
            </div>

            <div class="profile-upload">
               <div class="file-input-wrapper">
                  <button class="file-input-button">
                     <i class="fas fa-upload"></i> Upload Profile Pic
                  </button>
                  <input type="file" name="profilePic" id="profilePic" accept="image/*">
               </div>
               <div class="file-details">
                  <span class="file-name" id="fileName">No file chosen</span>
                  <img src="#" alt="Preview" class="preview-image" id="previewImage">
               </div>
            </div>

            <div class="button">
               <div class="inner"></div>
               <button>REGISTER</button>
            </div>
         </form>
        
         <div class="signup">
            Already a member? <a href="login">Login now</a><br>
            
         </div>
      </div>
      <script>
         // Password visibility toggle
         var input = document.querySelector('.pswrd');
         var show = document.querySelector('.show');
         show.addEventListener('click', active);
         function active(){
           if(input.type === "password"){
             input.type = "text";
             show.style.color = "#1DA1F2";
             show.textContent = "HIDE";
           }else{
             input.type = "password";
             show.textContent = "SHOW";
             show.style.color = "#111";
           }
         }

         // Profile picture upload preview
         const profilePic = document.getElementById('profilePic');
         const fileName = document.getElementById('fileName');
         const previewImage = document.getElementById('previewImage');

         profilePic.addEventListener('change', function() {
           const file = this.files[0];
           
           if (file) {
             fileName.textContent = file.name;
             
             const reader = new FileReader();
             
             reader.addEventListener('load', function() {
               previewImage.setAttribute('src', this.result);
               previewImage.style.display = 'block';
             });
             
             reader.readAsDataURL(file);
           } else {
             fileName.textContent = 'No file chosen';
             previewImage.style.display = 'none';
           }
         });

         // Make the button work with the file input
         document.querySelector('.file-input-button').addEventListener('click', function(e) {
           e.preventDefault();
           document.getElementById('profilePic').click();
         });
      </script>
   </body>
</html>