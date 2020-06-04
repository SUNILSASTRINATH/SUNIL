<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="//fonts.googleapis.com/css?family=Roboto" />
<style>
body {
	background: #4CA1AF; /* fallback for old browsers */
	background: -webkit-linear-gradient(to right, #C4E0E5, #4CA1AF);
	/* Chrome 10-25, Safari 5.1-6 */
	background: linear-gradient(to down, #C4E0E5, #4CA1AF);
	/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
}

.panel-footer {
	display: flex;
	padding: 3% 10% 1.5% 10%;
}

.button-panel {
	display: flex;
	display: flex;
	padding: 0% 10%;
	width: 50%;
}

.header-footer-item {
	display: inline-block;
	text-align: right;
	align-self: center;
}

.button-item {
	align-self: center;
	text-align: justify;
}

button {
	background-color: white;
	color: black;
	border: none;
	height: 40px;
	line-height: 40px;
	text-align: center;
	width: 10em;
}

.toast-message {
	text-align: center;
	font-size: 16px;
	position: absolute;
	right: 0;
	bottom: 0;
	margin-right: 10%;
	margin-bottom: 6%;
}

.submit-button {
	position: absolute;
	right: 0;
	bottom: 0;
	margin-right: 10%;
	margin-bottom: 10%;
}

.footer {
	position: fixed;
	left: 0;
	bottom: 0;
	width: 100%;
}

label {
	display: block;
	font-size: 1.5rem;
	margin-right: 5%;
}
</style>
<meta charset="ISO-8859-1">
<title>Generate Report</title>
</head>
<body>
	<%@ include file="header.jsp"%>
	<div class="panel-footer">
		<h2>Welcome Manager</h2>
		<span style="width: 100%;" class="header-footer-item">
			<button type="button">Logout</button>
		</span>
	</div>
	<form action="generateReort" method="post">
		<div class="panel-footer">
			<!-- <label for="start">Select date:</label> <input type="date"
				id="datefield" name="reportDate" value="2020-05-21" min="1990-01-01"
				max=""> -->
			<a href="view.jsp"><button type="button">Upload
					Image</button></a>
		</div>
	</form>
	<div class="footer"><%@ include file="footer.jsp"%>
	</div>
	<!-- 	<script>
		var today = new Date();
		var dd = today.getDate();
		var mm = today.getMonth() + 1; //January is 0!
		var yyyy = today.getFullYear();
		if (dd < 10) {
			dd = '0' + dd
		}
		if (mm < 10) {
			mm = '0' + mm
		}

		today = yyyy + '-' + mm + '-' + dd;
		document.getElementById("datefield").setAttribute("max", today);
	</script> -->
</body>
</html>