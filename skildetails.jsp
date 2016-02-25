<%@ page import="java.sql.*"%>
<%
	
	String user_name=request.getParameter("user");
	try
	{
		
		Class.forName("oracle.jdbc.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hrms","hrms");
		//Connection con=DbConnection.getConnection();
		Statement st = con.createStatement();
		String sq = "select * from skill_report45 where user_name='"+user_name+"'";
		
		ResultSet rs=st.executeQuery(sq);
		rs.next();
%>
<body bgcolor=cyan>
<center>

<table border="0">
<pre>			
		
		<tr><th>First Name	:</th><td><%=rs.getString(2)%></td></tr>
		<tr><th>Qualification	:</th><td><%=rs.getString(3)%></td></tr>
		<tr><th>Department	:</th><td><%=rs.getString(4)%></td></tr>
		<tr><th>Project Handled	:</th><td><%=rs.getString(5)%></td></tr>			
		<tr><th>Current Project	:</th><td><%=rs.getString(6)%></td></tr>
		<tr><th>Experience	:</th><td><%=rs.getString(7)%></td></tr>
		<tr><th>skills		:</th><td><%=rs.getString(8)%></td></tr>
		
</body>
<%				

	}				
	catch(Exception e){
		out.println(e);
	}
%>