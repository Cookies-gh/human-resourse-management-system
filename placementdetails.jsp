<%@ page import="java.sql.*"%>
<%
	
	String user_name=request.getParameter("user");
	try
	{
		
		Class.forName("oracle.jdbc.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hrms","hrms");
		//Connection con=DbConnection.getConnection();
		Statement st = con.createStatement();
		String sq = "select * from pLACEMENT54 where username='"+user_name+"'";
		
		ResultSet rs=st.executeQuery(sq);
		rs.next();
%>
<body bgcolor=cyan>
<center>

<table border="0" align=center>
		
		<tr><th align=left>username</th><td>: <%=rs.getString(1)%></td></tr>
		<tr><th align=left>emp_stat</th><td>: <%=rs.getString(2)%></td></tr>
		<tr><th align=left>effe_dat</th><td>: <%=rs.getString(3)%></td></tr>
		<tr><th align=left>region</th><td>: <%=rs.getString(4)%></td></tr>			
		<tr><th align=left>coun</th><td>: <%=rs.getString(5)%></td></tr>
		<tr><th align=left>comp</th><td>: <%=rs.getString(6)%></td></tr>
		<tr><th align=left>cont_unit</th><td>: <%=rs.getString(7)%></td></tr>
		<tr><th align=left>dept</th><td>: <%=rs.getString(8)%></td></tr>
		<tr><th align=left>loc</th><td>: <%=rs.getString(9)%></td></tr>
		<tr><th align=left>super_id</th><td>: <%=rs.getString(10)%></td></tr>
		
</body>
<%				

	}				
	catch(Exception e){
		out.println(e);
	}
%>