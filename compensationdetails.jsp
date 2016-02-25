<%@ page import="java.sql.*"%>
<%
	
	String user_name=request.getParameter("user");
	try
	{
		Class.forName("oracle.jdbc.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hrms","hrms");
		
		//Connection con=DbConnection.getConnection();
		Statement st = con.createStatement();
		String sq = "select * from compensation where username='"+user_name+"'";
		ResultSet rs=st.executeQuery(sq);
		rs.next();
%>
<body bgcolor=cyan>
<center>

<table border="0">
<pre>		<tr><th>User Name			:</th><td><%=rs.getString(1)%></td></tr>	
		<tr><th>Salary range			:</th><td><%=rs.getString(2)%></td></tr>
		<tr><th>Annual Income			:</th><td><%=rs.getString(3)%></td></tr>
		<tr><th>Tax of Income			:</th><td><%=rs.getString(4)%></td></tr>
		<tr><th>Loans					:</th><td><%=rs.getString(5)%></td></tr>
		<tr><th>Present Annual Income	:</th><td><%=rs.getString(6)%></td></tr>
		<tr><th>Facilities				:</th><td><%=rs.getString(7)%></td></tr>			
		<tr><th>Insurance				:</th><td><%=rs.getString(8)%></td></tr>
</body>	
<%				
	}				
	catch(Exception e){
		out.println(e);
	}
%>