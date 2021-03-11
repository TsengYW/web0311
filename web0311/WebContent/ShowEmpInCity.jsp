<%@page import="beans.SimpleEmp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employees in City</title>
</head>
<body>
  <table border="1">
        <%
            ArrayList<SimpleEmp> list=new ArrayList<SimpleEmp>() ;
            list=(ArrayList<beans.SimpleEmp>)session.getAttribute("emps");
            for(SimpleEmp ep :list){
           %>   
           <tr>
           <td><%= ep.getId()%></td>
           <td><%= ep.getFname()%></td>
           <td><%= ep.getLname()%></td>
           <td><%= ep.getEmail()%></td></tr>
          <% 
           }           
            
        %>
        </table>

</body>
</html>