<%@ page import="java.sql.*"%>
<%
	String username = request.getParameter("username");	
	String empid = request.getParameter("empid");
	String sal_rang = request.getParameter("sal_rang");
	String annul_in = request.getParameter("annul_in");
	String tax = request.getParameter("tax");
	String loans= request.getParameter("loans");
        String pre_annul= request.getParameter("pre_annul");
        String faci= request.getParameter("faci");
	String ins= request.getParameter("ins");
	
	try{
		Class.forName("oracle.jdbc.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hrms","hrms");
		//Connection con=DbConnection.getConnection();
		Statement st = con.createStatement();
		
		String sr = "insert into compensation values('"+username+"','"+empid+"','"+sal_rang+"','"+annul_in+"','"+tax+"','"+loans+"','"+pre_annul+"','"+faci+"','"+ins+"')";
		st.execute(sr);
		
		out.println("Record Inserted");	
	}				
	catch(Exception e){
		out.println(e);
	}
%>