
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
        String D_Gen = request.getParameter("Gender");
        String F = request.getParameter("F_name");
        String L = request.getParameter("L_name");
        String D_DOB = request.getParameter("Dob");
        String D_Add = request.getParameter("Add");
        String D_City = request.getParameter("City");
        String D_State = request.getParameter("State");
        String D_Phn = request.getParameter("ph_no");
        String D_Qual = request.getParameter("Qualification");
        String D_Dep = request.getParameter("Department");
        String D_Days = request.getParameter("Avail_days");
        String D_Time = request.getParameter("Avail_time");
        String D_Email = request.getParameter("Eml_id");
        String D_Pwrd = request.getParameter("P_pwrd");

        try{
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/Mercy");
        PreparedStatement ps = con.prepareStatement("insert into DOCTOR_DETAILS (GENDER,FIRST_NAME,LAST_NAME,DOB,ADDRESS,CITY,STATE,PHONE_NO,QUALIFICATION,DEPARTMENT,AVAILABLE_DAYS,AVAILABLE_TIMINGs,EMAIL_ID,PASSWORD) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
        
        ps.setString(1,D_Gen);
        ps.setString(2,F);
        ps.setString(3,L);
        ps.setString(4,D_DOB);
        ps.setString(5,D_Add);
        ps.setString(6,D_City);
        ps.setString(7,D_State);
        ps.setString(8,D_Phn);
        ps.setString(9,D_Qual);
        ps.setString(10,D_Dep);
        ps.setString(11,D_Days);
        ps.setString(12,D_Time);
        ps.setString(13,D_Email);
        ps.setString(14,D_Pwrd);
        
        int rs = ps.executeUpdate();
        
        if(rs>0)
        {
            session.setAttribute("P_Added_eml",D_Email);
            %>
                        <jsp:forward page="Doctor_reg_forward.jsp"/>
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