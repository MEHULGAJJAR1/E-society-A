 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en" dir="ltr">
   <head>
      <meta charset="utf-8">
      <title>Change Password</title>
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
     width: 400px;
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
   
   .input-field input {
     height: 100%;
     width: 100%;
     border: 1px solid silver;
     padding-left: 15px;
     outline: none;
     font-size: 19px;
     transition: .4s;
     background-color: white;
     color: #333;
   }
   
   input:focus {
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
   input:valid ~ label {
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

   .forgot-password {
     display: block;
     text-align: right;
     margin-top: 10px;
     font-size: 14px;
     color: #3498db;
     text-decoration: none;
     font-family: 'Noto Sans', sans-serif;
   }

   .forgot-password:hover {
     text-decoration: underline;
   }

   /* Add a subtle animation to the form */
   @keyframes fadeIn {
     from { opacity: 0; transform: translateY(-20px); }
     to { opacity: 1; transform: translateY(0); }
   }

   .container {
     animation: fadeIn 0.8s ease forwards;
   }
   </style>
   
   </head>
   
   <body>
      <div class="container">
         <header>Login</header>
         <form action="updatepassword" method="post">
            <div class="input-field">
               <input type="text" name="email" required>
               <label>Email</label>
            </div>
            
            <div class="input-field">
               <input type="text" name="otp" required>
               <label>OTP</label>
            </div>
            <div class="input-field">
               <input class="pswrd" type="password" name="password" required>
               <span class="show">SHOW</span>
               <label>Password</label>
            </div>
            
            <div class="input-field">
               <input class="pswrd" type="password" name="changePassword" required>
               <span class="show">SHOW</span>
               <label>Change Password</label>
            </div>
            
            <div class="button">
               <div class="inner"></div>
               <button>Update Password</button>
            </div>
         </form>
        
         
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
      </script>
   </body>
</html>