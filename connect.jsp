<%@ page import = "java.sql.*"%>
<%


String fname = request.getParameter("fname");
String lname = request.getParameter("lname");
String email = request.getParameter("email");
String phone = request.getParameter("phone");
String dob = request.getParameter("dob");
String gender = request.getParameter("gender");
String address1 = request.getParameter("address1");
String address2 = request.getParameter("address2");
String city = request.getParameter("city");
String state = request.getParameter("state");
String zip = request.getParameter("zip");
String country = request.getParameter("country");

try{
  Class.forName("com.mysql.jdbc.Driver");
  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student?user=root&password=password")
  PreparedStatement ps = conn.prepareStatement("insert into studentreg(firstname,lastname,email,phone,dob,gender,address1,address2,city,state,zip,country) values(?,?,?,?,?,?,?,?,?,?,?,?);");
  ps.setString(1,fname);
  ps.setString(2,lname);
  ps.setString(3,email);
  ps.setString(4,phone);
  ps.setString(5,dob);
  ps.setString(6,gender);
  ps.setString(7,address1);
  ps.setString(8,address2);
  ps.setString(9,city);
  ps.setString(10,state);
  ps.setString(11,zip);
  ps.setString(12,country);
  int x = ps.executeUpdate();
  if(x > 0){
    out.println("First name : "+fname);
    out.println("Last name : "+lname);
    out.println("Email ID : "+email);
    out.println("Phone no : "+phone);
    out.println("Date Of Birth : "+dob);
    out.println("Gender : "+gender);
    out.println("Address1 : "+address1);
    out.println("Address2 : "+address2);
    out.println("City : "+city);
    out.println("State : "+state);
    out.println("Zip Code : "+zip);
    out.println("Country : "+country);
  }else{
    out.println("Registration Failed...");
  }
    
    
}
catch(Exception e){
  out.print(e);
}

%>