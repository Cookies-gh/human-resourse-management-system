<%@ page import="java.sql.*"%>
<%
	
	String user_name=(String)session.getAttribute("uname");
	try
	{
		
		Class.forName("oracle.jdbc.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hrms","hrms");
		//Connection con=DbConnection.getConnection();
		Statement st = con.createStatement();
		
		ResultSet rs=st.executeQuery("select * from trai where user_name='"+user_name+"'");
		rs.next();
%>
<body bgcolor=cyan>
<center>
<table border="0">
			<tr><th>Request Date		:</th><td><input type=text name=id value=<%=rs.getString(3)%> Disable size="20"></td></tr>
			<tr><th>Time of Date		:</th><td><input type=text name=id value=<%=rs.getString(4)%> size="20"></td></tr>
			<tr><th>Start Date		:</th><td><input type=text name=id value=<%=rs.getString(5)%> size="20"></td></tr>
			<tr><th>End Date		:</th><td><input type=text name=id value=<%=rs.getString(6)%> size="20"></td></tr>
			<tr><th>Number of days		:</th><td><input type=text name=id value=<%=rs.getString(7)%> size="20"></td></tr>
			<tr><th>Reason			:</th><td><input type=text name=id value=<%=rs.getString(8)%> size="20"></td></tr>			
			
</center>
</body>
<%				
	}				
	catch(Exception e){
		out.println(e);
	}
%>