<%@ page import="java.sql.*"%>
<%
	
	String username = request.getParameter("username");
	String emp_id = request.getParameter("emp_id");
	String projn = request.getParameter("projn");
	String dept= request.getParameter("dept");
	String skill= request.getParameter("skill");
	String sdat = request.getParameter("sdat");
	String edat= request.getParameter("edate");
        String reas= request.getParameter("reas");
	
	try{
		Class.forName("oracle.jdbc.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hrms","hrms");
		//Connection con=DbConnection.getConnection();
		Statement st = con.createStatement();
		
		String sp = "insert into  trai values('"+username+"','"+emp_id+"','"+projn+"','"+dept+"','"+skill+"','"+sdat+"','"+edat+"','"+reas+"')";
		//out.println(sp);
		st.execute(sp);
		
		out.println("Record Inserted");	
	}				
	catch(Exception e){
		out.println(e);
	}
%>