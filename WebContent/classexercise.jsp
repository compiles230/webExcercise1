<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title>classexercise.html</title>
</head>
<body>
Please enter the dimensions of the desired table below: 
<% String error = request.getParameter("Error");
    if(error!=null && error.equals("1")){
    	out.println("Hello " + request.getParameter("Name") +", PLEASE PROVIDE A ROW VALUE >=1 <br>");
    }
    if(error!=null && error.equals("2")){
    	out.println("Hello " + request.getParameter("Name") +", PLEASE PROVIDE A COL VALUE >=1 <br>");
    }
    %>
<form action="createtable.jsp">
<table style="text-align: left; width: 518px; height: 129px;"
border="1" cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">Enter your name<br>
</td>
<td style="vertical-align: top; width: 25%;"><input value ="" name="Name"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Enter number of rows<br></td>
<td style="vertical-align: top;"><input value="1" name="rowAmt"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Enter number of columns<br></td>
<td style="vertical-align: top;"><input value="1" name="columnAmt"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;"><input name="Submission" type="submit"><br></td>
<td style="vertical-align: top;"><input name="Reset" type="reset"><br>
</td>
</tr>
</tbody>
</table>
</form>
<br>
<br>
</body>
</html>

