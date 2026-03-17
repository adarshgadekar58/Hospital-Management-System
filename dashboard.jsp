<%@ page language="java" %>
<html>
<head>
<title>Admin Dashboard</title>

<style>

body{
font-family:Arial;
background:#f5f7fb;
padding:40px;
}

/* HEADER */
.header{
display:flex;
justify-content:space-between;
align-items:center;
margin-bottom:30px;
}

/* BUTTON */
.logout-btn{
background:#ef4444;
color:white;
border:none;
padding:10px 18px;
border-radius:6px;
cursor:pointer;
transition:0.3s;
}

.logout-btn:hover{
background:#dc2626;
}

/* CARDS */
.cards{
display:flex;
gap:20px;
}

.card{
background:white;
padding:30px;
border-radius:10px;
box-shadow:0 5px 20px rgba(0,0,0,0.1);
width:220px;
text-align:center;
}

.card h2{
color:#0ea5a4;
}

</style>

</head>

<body>

<div class="header">
<h1>Welcome Admin </h1>

<!-- 🔥 LOGOUT BUTTON -->
<div>
<form action="admin-login.html">
<button class="logout-btn">Admin Pannel</button>
</form>

<form action="index.html">
<button class="logout-btn">Logout</button>
</form>
</div>

</div>

<div class="cards">

<div class="card">
<h3>Total Patients</h3>
<h2><%= request.getAttribute("patientCount") %></h2>
</div>

<div class="card">
<h3>Total Doctors</h3>
<h2><%= request.getAttribute("doctorCount") %></h2>
</div>

</div>

</body>
</html>