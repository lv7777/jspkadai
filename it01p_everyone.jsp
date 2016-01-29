<%@ page contentType="text/html;charset=UTF-8" %>
<%!
String[] msgs = {"おはようございます","こんにちわ","こんばんは"};
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>「JSP」にご挨拶</title>
</head>
<body>
<%
int i;
for(i = 0; i < msgs.length;i++){
out.println("<p>" + msgs[i] + "、「JSP」!</p>");
}
%>
</body>
</html>