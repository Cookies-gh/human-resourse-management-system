<%@ page import="java.sql.*"%>
<%
	
	String fname = request.getParameter("fname");
	String lname = request.getParameter("lname");
	String qua = request.getParameter("qua");
	String dept= request.getParameter("dept");
        String projhand= request.getParameter("projhand");
        String curhand= request.getParameter("curhand");
	String exp= request.getParameter("exp");
	String skil= request.getParameter("skil");
	String dob = request.getParameter("dob");
	String age = request.getParameter("age");
	String sex = request.getParameter("sex");
	String addre = request.getParameter("addre");		
	String state= request.getParameter("state");
	String city= request.getParameter("city");
	String coun= request.getParameter("coun");
	String zipco= request.getParameter("zipco");
	String pno= request.getParameter("pno");
	String email= request.getParameter("email");


	try{
		Class.forName("oracle.jdbc.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hrms","hrms");
		//Connection con=DbConnection.getConnection();
		Statement st = con.createStatement();
		
		String sl = "insert into  proj_hand values('"+fname+"','"+lname+"','"+qua+"','"+dept+"','"+projhand+"','"+curhand+"',"+exp+",'"+skil+"',"+dob+","+age+",'"+sex+"','"+addre+"','"+state+"','"+city+"','"+coun+"',"+zipco+","+pno+",'"+email+"')";
		st.execute(sl);
		
		out.println("Record Inserted");	
	}				
	catch(Exception e){
		out.println(e);
	}
%>