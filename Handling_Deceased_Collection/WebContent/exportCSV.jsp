<%@ page import="java.io.*,java.sql.*"%>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="//fonts.googleapis.com/css?family=Roboto" />
<style>
h1 {
	font-family: "Roboto";
	font-size: 24px;
	font-style: normal;
	font-variant: normal;
	font-weight: 700;
	line-height: 26.4px;
}

h3 {
	font-family: "Roboto";
	font-size: 14px;
	font-style: normal;
	font-variant: normal;
	font-weight: 700;
	line-height: 15.4px;
}

p, a {
	font-family: "Roboto";
	font-size: 14px;
	font-style: normal;
	font-variant: normal;
	font-weight: 400;
	line-height: 20px;
}

blockquote {
	font-family: "Roboto";
	font-size: 21px;
	font-style: normal;
	font-variant: normal;
	font-weight: 400;
	line-height: 30px;
}

pre {
	font-family: "Roboto";
	font-size: 13px;
	font-style: normal;
	font-variant: normal;
	font-weight: 400;
	line-height: 18.5714px;
}

body {
	margin: 0;
	font-family: Roboto, Helvetica, sans-serif;
	background: #4CA1AF; /* fallback for old browsers */
	background: -webkit-linear-gradient(to right, #C4E0E5, #4CA1AF);
	/* Chrome 10-25, Safari 5.1-6 */
	background: linear-gradient(to down, #C4E0E5, #4CA1AF);
	/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
}

.panel-footer {
	display: flex;
	padding: 3% 10%;
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
	background-color: black;
	color: white;
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
</style>
<title>Export CSV Page</title>
</head>
<body>
	<%@ include file="header.jsp"%>
	<div class="panel-footer">
		<%
			String filename = "C:\\Users\\sunny\\Desktop\\test.csv";
		Connection conn = null;
		String url = "jdbc:mysql://localhost:3306/";
		String dbName = "handling_deceased_collection";
		String driver = "com.mysql.jdbc.Driver";
		String userName = "root";
		String password = "sunil";
		Statement stmt;
		try {
			FileWriter fw = new FileWriter(filename);
			fw.append("cid");
			fw.append(',');
			fw.append("lid");
			fw.append(',');
			fw.append("aid");
			fw.append(',');
			fw.append("selling_price");
			fw.append(',');
			fw.append("collateral_info");
			fw.append(',');
			fw.append("amount");
			fw.append('\n');
			Class.forName(driver).newInstance();
			conn = DriverManager.getConnection(url + dbName, userName, password);
			String query = "select * from report";
			stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			while (rs.next()) {
				fw.append(rs.getString(1));
				fw.append(',');
				fw.append(rs.getString(2));
				fw.append(',');
				fw.append(rs.getString(3));
				fw.append(',');
				fw.append(rs.getString(4));
				fw.append(',');
				fw.append(rs.getString(5));
				fw.append(',');
				fw.append(rs.getString(6));
				fw.append('\n');
			}
			fw.flush();
			fw.close();
			conn.close();
			request.setAttribute("message", "Successfully Created CSV file.");
		} catch (Exception e) {
			request.setAttribute("message", "Oops! Error.");
			e.printStackTrace();
		}
		%>
	</div>
	<p style="margin-left: 10%; font-weight: bold; font-size: 1rem">${message}</p>
	<div class="footer"><%@ include file="footer.jsp"%></div>
</body>
</html>