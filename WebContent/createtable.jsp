<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta content="text/html; charset=ISO-8859-1" http-equiv="content-type">
<title>createtable.html</title>
</head>
<body>
Hello <%out.print(request.getParameter("Name"));%>. Here is your table:
<br>
<table style="text-align: left; width: 100%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<%int rowAmt = Integer.parseInt(request.getParameter("rowAmt"));%>
<%int columnAmt = Integer.parseInt(request.getParameter("columnAmt"));
if (rowAmt<1){
	response.sendRedirect("classexercise.jsp?Error=1&Name="+request.getParameter("Name"));
}
else if (columnAmt<1){
	response.sendRedirect("classexercise.jsp?Error=2&Name="+request.getParameter("Name"));
}
%>
<%for(int i=1;i<=rowAmt;i++){ %>
<tr>
<%for(int j=1;j<=columnAmt;j++){%>
<td style="vertical-align: top;"> <%out.print(i + ", " + j);%> <br>
</td>
<% } %>
</tr>
<% } %>
</tbody>
</table>
<br>
</body>
</html>