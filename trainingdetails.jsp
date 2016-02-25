<%@ page import="java.sql.*"%>
<%
	
	String user_name=request.getParameter("user");
	try
	{
		
		Class.forName("oracle.jdbc.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hrms","hrms");
		//Connection con=DbConnection.getConnection();
		Statement st = con.createStatement();
		String sq = "select * from trai where user_name='"+user_name+"'";
		//out.println(sq); 
		ResultSet rs=st.executeQuery(sq);
		rs.next();
%>
<body bgcolor=cyan>
<center>

<table border="0" align=center>
		
		<tr><th align=left>First Name</th><td>: <%=rs.getString(2)%></td></tr>
		<tr><th align=left>Qualification</th><td>: <%=rs.getString(3)%></td></tr>
		<tr><th align=left>Department</th><td>: <%=rs.getString(4)%></td></tr>
		<tr><th align=left>Project Handled</th><td>: <%=rs.getString(5)%></td></tr>			
		<tr><th align=left>Current Project</th><td>: <%=rs.getString(6)%></td></tr>
		<tr><th align=left>Experience</th><td>: <%=rs.getString(7)%></td></tr>
		<tr><th align=left>skills</th><td>: <%=rs.getString(8)%></td></tr>
		
		
</body>
<%				

	}				
	catch(Exception e){
		out.println(e);
	}
%>