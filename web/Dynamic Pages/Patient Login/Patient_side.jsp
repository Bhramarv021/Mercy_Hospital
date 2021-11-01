<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            *{
                margin : 10px;
                padding : 45px;
                font-size: 1em;
                background-color: orange;
             }
             #user{
                 position: absolute;
                 top:10px;
                 right:200px;
                 font-size: 2em;
                 font-family: cursive;
                 font-style: italic;
             }
             #View_Profile{
                 position: absolute;
                 top:80px;
                 
             }
           
             #Update_profile{
                 position: absolute;
                 top:260px;
                 left:400px;
                 
             }
             
             #Fix_Appoint{
                 position: absolute;
                 top:450px;
                 left:700px;
                 
             }
             
             #Loggout{
                 position: absolute;
                 top:100px;
                 right:100px;
             }
            
        </style>
    </head>
    <body>
        <div id="user">
        <%
            try
            {
               String user = (String)session.getAttribute("P_Name");
               out.print("WELCOME Dear "+user);
            }
            catch(Exception ex)
            {
                out.print(ex);
            }
         %>
        </div>
        <div id="View_Profile">
            
            <button> <a href="../Patient Login/View Details.jsp"> View Profile </a> </button>
            
        </div>
        <div id="Update_profile">
            
            <button> <a href=""> Update Details </a> </button>
            
        </div><div id="Fix_Appoint">
            
            <button> <a href="http://localhost:8080/Mercy_New_Homepage/Dynamic%20Pages/Appointment/Appointment.html"> Fix Appointment </a> </button>
            
        </div>
        
        <div id="Loggout">
            
            <button> <a href="../../index.html"> Loggout </a> </button>
            
        </div>
    </body>
</html>
