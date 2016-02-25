<%@ page import="java.sql.*"%>
<%
	String uname = request.getParameter("uname");
	String password = request.getParameter("password");
	
	try{
		Class.forName("oracle.jdbc.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hrms","hrms");
		//Connection con=DbConnection.getConnection();
		Statement st = con.createStatement();
		String sq = "select * from user_login where user_name = '"+uname+"' and password = '"+password+"'";
		ResultSet rs = st.executeQuery(sq);
		if(rs.next())
		{
			String user_type = rs.getString(3);
			session.setAttribute("uname",uname);
	
			if(user_type.equals("Administrator"))
			{
				response.sendRedirect("index_admin.jsp");
			}
			else
			{
				response.sendRedirect("index_employee.jsp");
			}
		}		
	
	}
	catch(Exception e){
		out.println(e);
	}
%>