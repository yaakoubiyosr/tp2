<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <% int N=10; %>
     <% int i=10; %>
      <% int j=10; %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>damier </title>
</head>
<body>
<b>Damier de 10 lignes et de 10 colonnes</b>
<table>
<%for (i=1; i<= N; i++){ %>
<tr>
<%for (j=1; j<= N; j++){ %>
<%if (((j%2)!=0)&&(i%2)!=0){ %>
<td bgcolor="cyan">
&nbsp;&nbsp;&nbsp;
</td>
<td bgcolor="black">
&nbsp;&nbsp;&nbsp;
</td>

<% } else if (((j % 2)!=0)&&(i%2)==0){ %>
<td bgcolor="black">
&nbsp;&nbsp;&nbsp;
</td>
<td bgcolor="cyan">
&nbsp;&nbsp;&nbsp;
</td>
<%}%>
<%}%>
</tr>
<%} %>


</table>
</body>
</html>