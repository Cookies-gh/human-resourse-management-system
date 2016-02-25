 <%@ page import="java.sql.*"%>
<%
	
	String user_name = request.getParameter("user_name");
	String password = request.getParameter("password");
	String user_type=request.getParameter("user_type");
	String id=request.getParameter("id");
	String fname = request.getParameter("fname");
	String lname = request.getParameter("lname");
	String qua = request.getParameter("qua");
	String dept= request.getParameter("dept");
	String dob = request.getParameter("dob");
	String age = request.getParameter("age");
	String sex = request.getParameter("sex");
	String addre = request.getParameter("addre");		
	String doj = request.getParameter("doj");
	String superid = request.getParameter("super_id");

	try
	{
		Class.forName("oracle.jdbc.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hrms","hrms");
		//Connection con=DbConnection.getConnection();
		Statement st1 = con.createStatement();
	
		String sq1= "insert into user_login values('"+user_name+"','"+password+"','"+user_type+"')";
		st1.execute(sq1);
		Statement st2 = con.createStatement();
		String sq2="insert into  add_emp values('"+user_name+"','"+password+"',"+id+",'"+fname+"','"+lname+"','"+qua+"','"+dept+"','"+dob+"','"+age+"','"+sex+"','"+addre+"','"+doj+"','"+superid+"')";
		st2.execute(sq2);
		out.println("<body bgcolor=cyan><H1><font color=red>Record Inserted</h1></font></body>");	
	}				
	catch(Exception e){
		out.println(e);
	}
%>