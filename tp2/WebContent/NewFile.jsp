<%@ page language="java" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.text.*" %>

<%
    int score = Integer.parseInt(request.getParameter("valeur1")) + Integer.parseInt(request.getParameter("valeur2")) + Integer.parseInt(request.getParameter("valeur3"));
    String message;

    if (score < 3) {
        message = "Vous êtes un débutant";
    } else if (score < 5) {
        message = "Vous avez un niveau moyen";
    } else {
        message = "Vous êtes un expert !";
    }
%>

<!DOCTYPE html>
<html>
<head>
	<title>Résultat</title>
</head>
<body>
	<h1>Résultat</h1>
	<p>Votre score est : <%=score%></p>
	<p><%=message%></p>
</body>
</html>





