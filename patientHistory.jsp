<%@ page import="java.util.*,Patient.Patient" %>
<%@ page import="dao.PatientDAO" %>

<!DOCTYPE html>
<html>
<head>
<title>Patient History</title>

<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">

<style>

body{
background:linear-gradient(120deg,#5992c6,#e9b8c9);
font-family:Arial;
}

/* Card */

.main-card{
margin-top:40px;
border-radius:12px;
box-shadow:0px 6px 20px rgba(0,0,0,0.2);
}

/* Header */

.header{
background:#0a2a92;
color:white;
padding:15px;
border-radius:10px 10px 0 0;
font-size:22px;
font-weight:bold;
}

/* Table hover */

.table-hover tbody tr:hover{
background:#e9b8c9;
transform:scale(1.01);
transition:0.2s;
}

/* Buttons */

.btn-delete{
background:#31241f;
color:white;
}

.btn-delete:hover{
background:#0a2a92;
transform:scale(1.1);
}

.btn-return{
background:#5992c6;
color:white;
}

.btn-return:hover{
background:#0a2a92;
}

/* Search box */

.search-box{
max-width:300px;
}

</style>

</head>

<body>

<div class="container">

<div class="card main-card">

<div class="header">
Patient History
</div>

<div class="card-body">

<%
PatientDAO dao = new PatientDAO();
List<Patient> list = dao.getAllPatients();
%>

<!-- Statistics -->

<h5>Total Registered Patients :
<span class="badge bg-primary"><%=list.size()%></span>
</h5>

<hr>

<!-- Search -->

<input type="text" id="searchInput"
class="form-control search-box mb-3"
placeholder="Search patient by name...">

<!-- Table -->

<table class="table table-hover table-bordered">

<thead class="table-dark">

<tr>
<th>ID</th>
<th>Name</th>
<th>Age</th>
<th>Gender</th>
<th>Phone</th>
<th>Action</th>
</tr>

</thead>

<tbody id="patientTable">

<%
for(Patient p:list){
%>

<tr>

<td><%=p.getPatientId()%></td>
<td><%=p.getName()%></td>
<td><%=p.getAge()%></td>
<td><%=p.getGender()%></td>
<td><%=p.getPhone()%></td>

<td>

<a href="DeletePatientServlet?id=<%=p.getPatientId()%>">
<button class="btn btn-delete btn-sm">
Delete
</button>
</a>

</td>

</tr>

<%
}
%>

</tbody>

</table>

<!-- Return Button -->

<a href="patientDashboard.jsp">
<button class="btn btn-return">
Return Dashboard
</button>
</a>

</div>

</div>

</div>

<!-- Search Script -->

<script>

document.getElementById("searchInput")
.addEventListener("keyup", function(){

var value = this.value.toLowerCase();

var rows = document.querySelectorAll("#patientTable tr");

rows.forEach(function(row){

var name = row.children[1].textContent.toLowerCase();

row.style.display =
name.includes(value) ? "" : "none";

});

});

</script>

</body>
</html>