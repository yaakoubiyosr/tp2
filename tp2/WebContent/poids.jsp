<%@ page language="java" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.text.*" %>

<%
    double taille = Double.parseDouble(request.getParameter("taille"));
    String sexe = request.getParameter("sexe");
    double poidsIdeal;

    if (sexe.equals("homme")) {
        poidsIdeal = (62.1 * taille) - 44.7;
    } else {
        poidsIdeal = (72.7 * taille) - 58;
    }
%>

<!DOCTYPE html>
<html>
<head>
	<title>R�sultat</title>
</head>
<body>
	<h1>R�sultat</h1>
	<p>Votre poids id�al est : <%=poidsIdeal%> Kg</p>
</body>
</html>