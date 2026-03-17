<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patient Register</title>

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">

<!-- Font Awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<style>

/* RESET */
*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Poppins', sans-serif;
}

/* BACKGROUND */
body{
height:100vh;
display:flex;
justify-content:center;
align-items:center;
background:linear-gradient(135deg,#3b82f6,#06b6d4);
}

/* FORM CONTAINER */
.form-container{
width:360px;
padding:35px;
border-radius:20px;
background:rgba(255,255,255,0.15);
backdrop-filter:blur(15px);
box-shadow:0 10px 30px rgba(0,0,0,0.2);
color:white;
animation:fadeIn 0.8s ease;
}

/* TITLE */
.form-container h2{
text-align:center;
margin-bottom:25px;
font-weight:600;
}

/* INPUT GROUP */
.input-group{
position:relative;
margin-bottom:18px;
}

/* ICON */
.input-group i{
position:absolute;
top:50%;
left:12px;
transform:translateY(-50%);
color:#e0f2fe;
}

/* INPUT + SELECT */
.input-group input,
.input-group select{
width:100%;
padding:12px 12px 12px 40px;
border:none;
border-radius:12px;
outline:none;
background:rgba(255,255,255,0.25);
color:white;
transition:0.3s;
}

/* PLACEHOLDER */
::placeholder{
color:#e0f2fe;
}

/* SELECT TEXT COLOR FIX */
.input-group select option{
color:black;
}

/* FOCUS EFFECT */
.input-group input:focus,
.input-group select:focus{
background:rgba(255,255,255,0.35);
transform:scale(1.03);
}

/* BUTTON */
button{
width:100%;
padding:12px;
border:none;
border-radius:12px;
background:white;
color:#2563eb;
font-weight:600;
cursor:pointer;
transition:0.3s;
margin-top:10px;
}

button:hover{
transform:scale(1.05);
background:#e0f2fe;
}

/* ANIMATION */
@keyframes fadeIn{
from{
opacity:0;
transform:translateY(20px);
}
to{
opacity:1;
transform:translateY(0);
}
}
/* POPUP BACKGROUND */
.popup{
position:fixed;
top:0;
left:0;
width:100%;
height:100%;
background:rgba(0,0,0,0.5);
display:flex;
justify-content:center;
align-items:center;
visibility:hidden;
opacity:0;
transition:0.3s;
z-index:1000;
}

/* SHOW POPUP */
.popup.show{
visibility:visible;
opacity:1;
}

/* POPUP BOX */
.popup-content{
background:white;
padding:30px;
border-radius:15px;
text-align:center;
animation:popupAnim 0.5s ease;
}

/* ICON */
.popup-content i{
font-size:50px;
color:#22c55e;
margin-bottom:10px;
}

/* ANIMATION */
@keyframes popupAnim{
from{
transform:scale(0.7);
opacity:0;
}
to{
transform:scale(1);
opacity:1;
}
}

</style>

</head>

<body>

<div class="form-container">

<h2>Patient Register</h2>

<form action="patientServlet" method="post">

<div class="input-group">
<i class="fa fa-id-card"></i>
<input type="number" name="patientid" placeholder="Patient ID" required>
</div>

<div class="input-group">
<i class="fa fa-user"></i>
<input type="text" name="name" placeholder="Full Name" required>
</div>

<div class="input-group">
<i class="fa fa-user-clock"></i>
<input type="number" name="age" placeholder="Age" required>
</div>

<div class="input-group">
<i class="fa fa-venus-mars"></i>
<select name="gender" required>
<option value="">Select Gender</option>
<option>Male</option>
<option>Female</option>
<option>Other</option>
</select>
</div>

<div class="input-group">
<i class="fa fa-phone"></i>
<input type="text" name="phone" placeholder="Phone Number" required>
</div>

<div class="input-group">
<i class="fa fa-lock"></i>
<input type="password" name="password" placeholder="Password" required>
</div>

<button type="submit">Register</button>

</form>
<div class="popup" id="successPopup">
    <div class="popup-content">
        <i class="fa fa-check-circle"></i>
        <h3>Success!</h3>
        <p>Patient Registered Successfully</p>
    </div>
</div>

</div>

  <!-- JAVASCRIPT -->
<script>

const form = document.getElementById("patientForm");
const popup = document.getElementById("successPopup");

form.addEventListener("submit", function(e){

    e.preventDefault(); // stop form

    popup.classList.add("show");

    setTimeout(() => {
        form.submit(); // send to servlet
    }, 2000);

});

</script>

</body>
</html>