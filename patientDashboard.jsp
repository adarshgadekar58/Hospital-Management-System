<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Medcare Dashboard</title>

<link rel="stylesheet" href="style.css">

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">

<!-- Font Awesome Icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

</head>

<body>

<div class="container">

<!-- SIDEBAR -->
<div class="sidebar">

<h2 class="logo">Medcare</h2>

<ul>

<a href="dashboard.jsp"><li class="active"><i class="fa fa-home"></i> Dashboard</li></a>

<a href="patientHistory.jsp"><li><i class="fa fa-user-injured"></i> Patients</li></a>

<a href="appointement.jsp"><li><i class="fa fa-calendar-check"></i> Appointment</li></a>

<a href="payments.jsp"><li><i class="fa fa-credit-card"></i> Payments</li></a>

<a href="employee.jsp"><li><i class="fa fa-user-md"></i> Employee</li></a>

<a href="activity.jsp"><li><i class="fa fa-chart-line"></i> Activity</li></a>

<h4>OTHER</h4>

<a href="statistics.jsp"><li><i class="fa fa-chart-pie"></i> Statistic</li></a>

<a href="helpcenter.jsp"><li><i class="fa fa-question-circle"></i> Help Center</li></a>

<a href="setting.jsp"><li><i class="fa fa-cog"></i> Setting</li></a>

<a href="report.jsp"><li><i class="fa fa-file-alt"></i> Report</li></a>

</ul>

</div>


<!-- MAIN CONTENT -->
<div class="main">

<!-- TOPBAR -->
<div class="topbar">

<input type="text" placeholder=" Search patients, reports...">

<a href="patientRegister.jsp">
<button class="add-btn"><i class="fa fa-plus"></i> Add Patient</button>
</a>

</div>


<!-- HEADER -->
<h2>Hello, Admin </h2>
<p class="subtext">Here is the latest update for the last 7 days.</p>


<!-- CARDS -->
<div class="cards">

<div class="card">
<h4><i class="fa fa-calendar"></i> Appointments</h4>
<h2>1,250</h2>
</div>

<div class="card">
<h4><i class="fa fa-phone"></i> Call Consultancy</h4>
<h2>1,002</h2>
</div>

<div class="card">
<h4><i class="fa fa-stethoscope"></i> Surgeries</h4>
<h2>60</h2>
</div>

<div class="card">
<h4><i class="fa fa-users"></i> Total Patients</h4>
<h2>1,835</h2>
</div>

</div>


<!-- GRAPH SECTION -->
<div class="graph-section">

<div class="graph-box">
<h3><i class="fa fa-chart-bar"></i> Patient Statistics</h3>

<div class="graph-placeholder">
 Chart will be displayed here
</div>

</div>


<div class="calendar">

<h3><i class="fa fa-clock"></i> Today</h3>

<ul>
<li> 09:00 Dentist meetup</li>
<li> 12:00 Procedures</li>
<li> 04:00 Patient Follow-up</li>
</ul>

</div>

</div>


<!-- BOTTOM CARDS -->
<div class="bottom">

<div class="balance">
<h3><i class="fa fa-wallet"></i> Balance</h3>
<p>$136,450</p>
</div>

<div class="rooms">
<h3><i class="fa fa-bed"></i> Room Occupancy</h3>
<p>General Room : 124</p>
<p>Private Room : 52</p>
</div>

<div class="reports">
<h3><i class="fa fa-exclamation-triangle"></i> Reports</h3>
<p>Shower broken in room 123</p>
<p>Medical equipment issue</p>
</div>

</div>

</div>

</div>

</body>
</html>