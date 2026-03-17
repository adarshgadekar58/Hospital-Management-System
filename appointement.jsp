<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<title>Book Appointment</title>

<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">

<style>

body{
background:#5992c6;
font-family: Arial;
}

.main-card{
max-width:600px;
margin:auto;
margin-top:60px;
border-radius:12px;
box-shadow:0px 6px 20px rgba(0,0,0,0.2);
}

.card-header{
background:#0a2a92;
color:white;
font-weight:bold;
text-align:center;
font-size:22px;
}

.form-label{
font-weight:bold;
color:#31241f;
}

.book-btn{
background:#0a2a92;
border:none;
padding:10px;
font-size:18px;
transition:0.3s;
}

.book-btn:hover{
background:#31241f;
transform:scale(1.05);
}

.success-box{
background:#e9b8c9;
padding:10px;
border-radius:6px;
text-align:center;
font-weight:bold;
color:#31241f;
margin-bottom:15px;
}

</style>

</head>

<body>

<div class="container">

<div class="card main-card">

<div class="card-header">
Hospital Appointment Booking
</div>

<div class="card-body">

<%
String msg = request.getParameter("msg");

if("success".equals(msg)){
%>

<div class="success-box">
✔ Appointment Booked Successfully
</div>

<%
}
%>

<form action="BookAppointmentServlet" method="post">

<div class="mb-3">
<label class="form-label">Appointment ID</label>
<input type="number" name="appointmentId"
class="form-control" required>
</div>

<div class="mb-3">
<label class="form-label">Patient Name</label>
<input type="text" name="patientName"
class="form-control" required>
</div>

<div class="mb-3">
<label class="form-label">Doctor</label>

<select name="doctorName" class="form-control">

<option value="Dr Sharma">Dr Sharma</option>
<option value="Dr Rao">Dr Rao</option>
<option value="Dr Reddy">Dr Reddy</option>

</select>
</div>

<div class="mb-3">
<label class="form-label">Appointment Date</label>
<input type="date" name="appointmentDate"
class="form-control" required>
</div>

<div class="mb-3">
<label class="form-label">Appointment Time</label>
<input type="time" name="appointmentTime"
class="form-control" required>
</div>

<div class="mb-3">
<label class="form-label">Status</label>

<select name="status" class="form-control">

<option value="Pending">Pending</option>
<option value="Confirmed">Confirmed</option>

</select>

</div>

<button type="submit" class="btn book-btn w-100">
Book Appointment
</button>

</form>

</div>

</div>

</div>

</body>
</html>