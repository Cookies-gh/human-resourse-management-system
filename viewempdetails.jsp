<%@ page import="java.sql.*"%>
<%
	
	String user_name=(String)session.getAttribute("uname");
	try
	{
	Class.forName("oracle.jdbc.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hrms","hrms");
			//Connection con=DbConnection.getConnection();
		Statement st = con.createStatement();
		
		ResultSet rs=st.executeQuery("select * from add_emp where user_name='"+user_name+"'");
		while(rs.next())
		{
%>
<body bgcolor=cyan>
<center>

<table border="0">
<pre>			
		<tr><th>Employee Id	:</th><td><%=rs.getInt(3)%></td></tr>
		<tr><th>First Name	:</th><td><%=rs.getString(4)%></td></tr>
		<tr><th>Last Name	:</th><td><%=rs.getString(5)%></td></tr>
		<tr><th>Qualification	:</th><td><%=rs.getString(6)%></td></tr>
		<tr><th>Department	:</th><td><%=rs.getString(7)%></td></tr>
		<tr><th>Date of Birth	:</th><td><%=rs.getString(8)%></td></tr>			
		<tr><th>Age		:</th><td><%=rs.getString(9)%></td></tr>
		<tr><th>Sex		:</th><td><%=rs.getString(10)%></td></tr>
		<tr><th>Address		:</th><td><%=rs.getString(11)%></td></tr>
		<tr><th>Date of Joining	:</th><td><%=rs.getString(12)%></td></tr>
		<tr><th>Supervisor ID	:</th><td><%=rs.getString(13)%></td></tr>
		<%} %>
</body>
<%				
	}				
	catch(Exception e){
		out.println(e);
	}
%>