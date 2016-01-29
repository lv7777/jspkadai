<%@ page contentType="text/html;charset=UTF-8" %>
	<!DOCTYPE html>
	<html>
	<head>
	<meta charset="UTF-8" />
	<title>accept-language</title>
	</head>
	<body>
	<%
	Strung lang = request.getHeader("accept-language");
if(lang.indexOf("ja") != -1){
	out,println("こんにちは、ごきげんいかかですか？");
}else{
		out.println("Hello.How are you ?");
	}
	%>
	</body>
		</html>