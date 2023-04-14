<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
if (s != null && s.equals("moyennes")) {
sc++;
}
if (st != null && st.equals("moyennes")) {
sc++;
}
String m;
if (sc < 3) {
m = "Vous êtes un débutant";
} 
else if (sc < 5) {
m = "Vous avez un niveau moyen";
} 
else {
m = "Vous êtes un expert !";
}
%>

</body>
</html>
