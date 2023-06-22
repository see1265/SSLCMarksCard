<%@page import="dto.DtoStd"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body style="margin-right: 400px; margin-left: 50px;">
<% DtoStd st=(DtoStd) request.getAttribute("studentdata"); %>
<form action="" style="width: 900px; padding: 10px;border: 15px solid purple ;background-color: rgba(223,195,227,0.6)" >
<h1 align="center" style="font-family: fantasy; ">Karnataka Secondary Education Examination Board</h1>
  <h3 align="center">KARNATAKA, INDIA</h3>
  <img alt="qrcode" src="qrcode.png" height="130px" width="130px" style="position: relative; top: 14px; left: 40px">
  <img alt="studentimage" src="studentimage.jpeg" height="120px" width="120px" style="position: relative; left: 618px">
  <b><h2  align="center" style="color: orange; font-family: Times New Roman; font-weight: 200px" >SECONDARY SCHOOL CERTIFICATE</h2></b>
  <hr style="height: 5px;color: purple;">
  <h3 >Name:  <%=st.getName() %> </h3>
  <h3>FATHER NAME :  <%=st.getFatherName() %> </h3>
  <h3>MOTHER NAME :  <%=st.getMotherName() %> </h3>
  <h3>Registration No :  <%=st.getRollNo() %> </h3>
  <h3>belonging to  <%=st.getSchoolName_Address() %></h3>
  <h3>has appeared and PASSEd SSC EXAMINATION held in MARCH 2023 With GPA  <%= st.getTotalGrade()%></h3>
  <h3>and  KANNADA   as medium of instruction.</h3>
  <h3>DATE OF BIRTH :  <%=st.getDOB() %></h3>
  <h4>THE CANDIDATE SECURED THE FOLLOWING GRADES AND GRADE POINTS IN CURRICULAR AREA: </h4>
  
  <table border="3px" style="width: 850px; height: 300px ;">
        <tr align="center">
       <td rowspan="2">CURRICULAR SUBJECTS</td> 
       <td colspan="2">GRADE</td>
       <td colspan="2">OVERALL GRADE <br>
       (Internal+External)</td>
        </tr>
        <tr align="center">
       <td>(Internal)</td>
       <td>(External)</td>
       <td>Grade</td>
       <td>Grade Points</td>
        </tr>
        <tr>
          <td>FIRST LANGUAGE:      (KANNADA) </td>
          <td align="center"> <b><%=st.getTEL_In_grd()%> </b></td>
          <td align="center"> <b><%=st.getTEL_Ex_grd()%> </b></td>
          <td align="center"> <b><%=st.getTEL_Total_grd()%></b></td>
          <td align="center"> <b><%=st.getTEL_Total_grdPoins()%></b></td>  
        </tr>
        <tr>
          <td>THIRD LANGUAGE:    ENGLISH </td>
          <td align="center"><b><%=st.getENG_In_grd()%></b></td>
          <td align="center"><b><%=st.getENG_Ex_grd()%></b></td>
          <td align="center"><b><%=st.getENG_Total_grd()%></b></td>
          <td align="center"><b><%=st.getENG_Total_grdPoins()%></b></td>  
        </tr>
        <tr>
          <td>MATHEMATICS: </td>
          <td align="center"><b><%=st.getMATH_In_grd()%></b></td>
          <td align="center"><b><%=st.getMATH_Ex_grd()%></b></td>
          <td align="center"><b><%=st.getMATH_Total_grd()%></b></td>
          <td align="center"><b><%=st.getMATH_Total_grdPoins()%></b></td>  
        </tr>
        <tr>
          <td>GENERAL SCIENCE: </td>
          <td align="center"><b><%=st.getGS_In_grd() %></b></td>
          <td align="center"><b><%=st.getGS_Ex_grd()%></b></td>
          <td align="center"><b><%=st.getGS_Total_grd()%></b></td>
          <td align="center"><b><%=st.getGS_Total_grdPoins()%></b></td>  
        </tr>
        <tr>
          <td>SOCIAL STUDIES: </td>
          <td align="center"><b><%=st.getSS_In_grd()%></b></td>
          <td align="center"><b><%=st.getSS_Ex_grd()%></b></td>
          <td align="center"><b><%=st.getSS_Total_grd()%></b></td>
          <td align="center"><b><%=st.getSS_Total_grdPoins()%></b></td>  
        </tr>
        <tr>
          <td>SECOND LANGUAGE:     (HINDI) </td>
          <td align="center"><b><%=st.getHIN_In_grd()%></b></td>
          <td align="center"><b><%=st.getHIN_Ex_grd() %></b></td>
          <td align="center"><b><%=st.getHIN_Total_grd()%></b></td>
          <td align="center"><b><%=st.getHIN_Total_grdPoins()%></b></td>  
        </tr>
         <tr> 
         <td colspan="5"><b>GRADE POINTS AVERAGE(GPA) : <%= st.getTotalGrade() %></b></td>
         </tr>
        </table>    
    <h4>CO-CURRICULAR AREA:  </h4>
    <table border="3px" style="width: 850px; height: 100px ;">
     <tr align="center">
        <td>SUBJECT</td>
        <td>GRADE</td>
        <td>SUBJECT</td>
        <td>GRADE</td>
     </tr>
     <tr>
        <td>VALUE EDUCATION & LIFE SKILLS</td>
        <td align="center"><b><%=st.getLifeSkills_grd()%></b></td>
        <td>WORK & COMPUTER EDUCATION</td>
        <td align="center"><b><%=st.getWork_com_grade() %></b></td>
     </tr>
     <tr>
        <td>ART & CULTURE EDUCATION</td>
        <td align="center"><b><%=st.getArt_grd()%></b></td>
        <td>HEALTH & PHYSICAL EDUCATION</td>
        <td align="center"><b><%=st.getHel_phy_edu_grd()%></b></td>
     </tr>
    </table>
    <div style="position: relative;left: 600px ; top: 20px">
     <pre>                 SECRETARY
        BOARD OF SECONDARY EDUCATION
               KARNATAKA
     </pre>
    </div>
    </form>


</body>
</html>