<%@ page language="java" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.text.*" %>

<%
    int score = Integer.parseInt(request.getParameter("valeur1")) + Integer.parseInt(request.getParameter("valeur2")) + Integer.parseInt(request.getParameter("valeur3"));
    String message;

    if (score < 3) {
        message = "Vous �tes un d�butant";
    } else if (score < 5) {
        message = "Vous avez un niveau moyen";
    } else {
        message = "Vous �tes un expert !";
    }
%>

<!DOCTYPE html>
<html>
<head>
	<title>R�sultat</title>
</head>
<body>
	<h1>R�sultat</h1>
	<p>Votre score est : <%=score%></p>
	<p><%=message%></p>
</body>
</html>





