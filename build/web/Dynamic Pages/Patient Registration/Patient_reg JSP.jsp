
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String P_Gen = request.getParameter("Gender");
        String F = request.getParameter("F_name");
        String L = request.getParameter("L_name");
        String P_Add = request.getParameter("Addr");
        String P_City = request.getParameter("City");
        String P_State = request.getParameter("State");
        String P_Phn = request.getParameter("ph_no");
        String P_Email = request.getParameter("Eml_id");
        String P_Pwrd = request.getParameter("P_pwrd");
        String P_Dob = request.getParameter("dob");
        try{
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/Mercy");
        PreparedStatement ps = con.prepareStatement("insert into PATIIENT_DETAILS (GENDER,FIRST_NAME,LAST_NAME,ADDRESS,CITY,STATE,PHONE_NO,EMAIL_ID,PASSWORD,DOB) values(?,?,?,?,?,?,?,?,?,?)");
        
        ps.setString(1,P_Gen);
        ps.setString(2,F);
        ps.setString(3,L);
        ps.setString(4,P_Add);
        ps.setString(5,P_City);
        ps.setString(6,P_State);
        ps.setString(7,P_Phn);
        ps.setString(8,P_Email);
        ps.setString(9,P_Pwrd);
        ps.setString(10,P_Dob);
        int rs = ps.executeUpdate();
        
        if(rs>0)
        {
            session.setAttribute("P_Added_eml",P_Email);
            %>
                <jsp:forward page="Patient_reg_forward.jsp"/>
            <%
        }
        }
        catch(Exception ex)
                {
                out.print(ex);
                }
        %>
                
    </body>
</html>