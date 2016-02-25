<%@ page import="java.sql.*"%>
<%
	
	String user_name = request.getParameter("user_name");
	String fname = request.getParameter("fname");
	String qua = request.getParameter("qua");
	String dept = request.getParameter("dept");
	String proj_hand= request.getParameter("proj_hand");
        String curr_hand= request.getParameter("curr_hand");
        String exp= request.getParameter("exp");
	String skil= request.getParameter("skil");
	
	try{
		Class.forName("oracle.jdbc.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hrms","hrms");
		//Connection con=DbConnection.getConnection();
		Statement st = con.createStatement();

		String sr = "insert into skill_report45 values('"+user_name+"','"+fname+"','"+qua+"','"+dept+"','"+proj_hand+"','"+curr_hand+"','"+exp+"','"+skil+"')";
		st.execute(sr);
		
		out.println("Record Inserted");	
	}				
	catch(Exception e){
		out.println(e);
	}
%>