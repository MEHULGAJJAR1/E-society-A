<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New State</title>
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

/* Form Styles */

form-container {
  max-width: 500px;
  margin: 40px auto;
  padding: 20px;
  background-color: #fff;
  border: 1px solid #ddd;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

form-container label {
  display: block;
  margin-bottom: 10px;
}

form-container input[type="text"] {
  width: 100%;
  height: 40px;
  margin-bottom: 20px;
  padding: 10px;
  border: 1px solid #ccc;
}

form-container select {
  width: 100%;
  height: 40px;
  margin-bottom: 20px;
  padding: 10px;
  border: 1px solid #ccc;
}

form-container button[type="submit"] {
  width: 100%;
  height: 40px;
  background-color: #333;
  color: #fff;
  padding: 10px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

form-container button[type="submit"]:hover {
  background-color: #555;
}

/* State Information Styles */

state-info {
  margin-top: 20px;
}

state-info label {
  font-weight: bold;
  margin-bottom: 5px;
}

state-info p {
  margin-bottom: 10px;
}
</style>
</head>
<body>
	<form action="savestate" method="post">
	
		StateName : <input type="text" name="stateName"/><br><Br> 
		<input type="submit" value="Save State"/>
	
	</form>
</body>
</html>