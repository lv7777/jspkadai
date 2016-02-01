<%@ page contentType="text/html;charset=UTF-8" import="java.io.*,java.util.*,java.text.*" %>

<%
String val = new String(request.getParameter("hoge").getBytes("ISO_8859_1"), "UTF-8");
//request.setCharacterEncoding("UTF-8");
request.setContentType("UTF-8"); 
StringBuilder builder = new StringBuilder();
FileWriter writer = new FileWriter(application.getRealPath("/WEB-INF/data/comments.txt"),true);
BufferedWriter buf = new BufferedWriter(writer);
SimpleDateFormat format = new SimpleDateFormat("yyyy/mm/dd h:m:s");
Calendar today = Calendar.getInstance();
builder.append(format.format(today.getTime()));
builder.append("\t");
builder.append(request.getParameter("name"));
builder.append("\t");
builder.append(request.getParameter("comment"));
builder.append("\t");
buf.write(builder.toString());
buf.newLine();
buf.close();
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
	<title>コメント書き込み</title>
</head>
<body>
	<form method="POST" action="it01kadai1.jsp">
	<div style="">
	<h1>コメントフォーム</h1>
	</div>
		<div>
			<label>
				<p>ニックネーム：
				<input type="text" name="name" size="5" />
				</p>
			</label>
		</div>
			<label>
				<p>コメント　　　 ：
				<input type="text" name="comment" size="100"/>
				</p>
			</label>
		</div>
		<div>
			<input type="submit" value="登録" />
			<input type="reset" value="リセット" />
		</div>
	</form>
	</body>
</html>
