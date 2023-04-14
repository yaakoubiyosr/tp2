<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Résultat de l'équation</h1>
<%
    double a = Double.parseDouble(request.getParameter("a"));
    double b = Double.parseDouble(request.getParameter("b"));
    double c = Double.parseDouble(request.getParameter("c"));

    double discriminant = Math.pow(b, 2) - 4 * a * c;

    if (discriminant < 0) {
        // Aucun résultat réel
        out.print("<div style=\"background-color: red;\">Aucun résultat réel</div>");
    } else if (discriminant == 0) {
        // Une seule solution
        double x = -b / (2 * a);
        out.print("<div style=\"background-color: white;\">x = " + x + "</div>");
    } else {
        // Deux solutions
        double x1 = (-b + Math.sqrt(discriminant)) / (2 * a);
        double x2 = (-b - Math.sqrt(discriminant)) / (2 * a);
        out.print("<div style=\"background-color: green;\">x1 = " + x1 + "</div>");
        out.print("<div style=\"background-color: blue;\">x2 = " + x2 + "</div>");
    }
%>
</body>
</html>