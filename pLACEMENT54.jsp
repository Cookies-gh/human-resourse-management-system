<%@ page import="java.sql.*"%>
<%
	
	String username = request.getParameter("username");
	String emp_stat = request.getParameter("emp_stat");
	String effe_dat = request.getParameter("effe_dat");
	String region= request.getParameter("region");
	String coun= request.getParameter("coun");
	String comp= request.getParameter("comp");
	String cont_unit= request.getParameter("cont_unit");
	String dept= request.getParameter("dept");
	String loc = request.getParameter("loc");
	String super_id = request.getParameter("super_id");
	

	try{
		Class.forName("oracle.jdbc.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hrms","hrms");
		//Connection con=DbConnection.getConnection();
		Statement st = con.createStatement();
		
		String sy = "insert into  pLACEMENT54 values('"+username+"','"+emp_stat+"','"+effe_dat+"','"+region+"','"+coun+"','"+comp+"','"+cont_unit+"','"+dept+"','"+loc+"','"+super_id+"')";
		st.execute(sy);
		//out.println(sy);
		out.println("Record Inserted");	
	}				
	catch(Exception e){
		out.println(e);
	}
%>