<%@ page contentType="text/html;charset=UTF-8" import="java.util.regex.*" %>

 <%!
 //宣言部の<%は<%!と書く
 private boolean checkPostNumber(String postnum){
	Pattern pattern=Pattern.compile("^[0-9]{3}\\-[0-9]{4}$",Pattern.CASE_INSTENSIVE);
	Mather match=pattern.matcher(postnum);
	return match.find();
 } %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>郵便番号をチェック</title>
</head>
<body>
<%
if(checkPostNumber(request.getParameter("postnum"))){
	out.println("正しい郵便番号です。");
}else{
	out.println("郵便番号の形式が間違っています。");
}
%>
 
</body>
</html>