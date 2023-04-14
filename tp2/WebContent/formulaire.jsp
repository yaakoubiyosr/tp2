<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>formulaire</title>
</head>
<body>
<p><b> Vous avez fourni les informations suivantes :</b></p>
<%
String nom = request.getParameter("nom");
String email= request.getParameter("email");
if(nom==null && email==null) {
%>
<h4> Nom: null </h4>
<h4> Email: null </h4>
<%
} else {
%>
<h4> Nom: <%= nom %> </h4>
<h4> Email: <%= email %> </h4>
<%
}
%>
</body>
</html>