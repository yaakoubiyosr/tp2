<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Damier</title>
	<style>
		table, td {
			border: 1px solid black;
			border-collapse: collapse;
			padding: 10px;
		}
		.black {
			background-color: black;
		}
	</style>
</head>
<body>
	<%
		int N = 8; // Modifier la valeur de N selon vos besoins
		
		out.print("<table>");
		
		for (int i = 0; i < N; i++) {
			out.print("<tr>");
			
			for (int j = 0; j < N; j++) {
				if ((i + j) % 2 == 0) {
					out.print("<td class=\"black\"></td>");
				} else {
					out.print("<td></td>");
				}
			}
			
			out.print("</tr>");
		}
		
		out.print("</table>");
	%>