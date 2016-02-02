<%@ page contentType="text/html;charset=UTF-8" import="java.text.*" %>
<%
String rename;
request.setCharacterEncoding("UTF-8");
Calendar cal = Calendar.getInstance();
Date current=cal.getTime();
SimpleDateFormat dformat=new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
StringBuilder builder = new StringBuilder();
FileWriter writer = new FileWriter(application.getRealPath("/WEB-INF/data/comments.txt"),true);
BufferedWriter buf = new BufferedWriter(writer);
if(request.getParameter("nikku")!==null&&
    rename=request.getParameter("nikku")!==""&&rename=request.getParameter("kome")!==""){

rename=request.getParameter("nikku");
	rename = rename.replace("&","&amp;");
	rename = rename.replace(">","&gt;");
	rename = rename.replace("<","&lt;");
	rename = rename.replace("\"","&quot;");
	rename = rename.replace(" ","&nbsp;");
	builder.append(dformat.format(current));
	builder.append("\t");
	builder.append(rename);
	builder.append("\t");

	rename=request.getParameter("kome");
	rename = rename.replace("&","&amp;");
	rename = rename.replace(">","&gt;");
	rename = rename.replace("<","&lt;");
	rename = rename.replace("\"","&quot;");
	rename = rename.replace(" ","&nbsp;");
	builder.append(rename);
	builder.append("\t");

	buf.write(builder.toString());
	buf.newLine();
	buf.close();
}

%>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <title>コメント書き込み</title>
        </head>

        <body>
            <h1>
        <p style="background-color:#999" style="color:#fff">コメントフォーム</p>
    </h1>
            <form method="POST">
                <font color="#fff">
                    <table border="0" bordercolor="#000">
                <tr>
                    <th bgcolor="#0088ff" align="right">ニックネーム</th>
                    <th><input type="text" name="nikku" size="10" /></th>
                </tr>
                <tr>
                    <th bgcolor="#0088ff" align="right">コメント</th>
                    <th><input type="text" name="kome"size="60" /></th>
                </tr>
               <tr>
                    <th><input type="submit" value="登録">
                    <input type="reset" value="取り消し"></th>
                </tr>
                </font>
            
            <table border="1">
                <br>
                <tr bgcolor="#009999" align="center" style="color:black">
                    <th>日付</th>
                    <th>ニックネーム</th>
                    <th width="500">コメント</th>
                </tr>
                <% 
                String[] test =new String[1024];
int i=0;
FileReader reader=new FileReader(
		application.getRealPath("/WEB-INF/data/comments.txt"));
BufferedReader buf2 = new BufferedReader(reader);
while(buf2.ready()){
	test[i]=buf2.readLine();
	i++;
}
buf2.close();
while(i>0){
	out.println("<tr style='color:black'>");
	StringTokenizer yomi=new StringTokenizer(test[i-1],"\t");
	while(yomi.hasMoreTokens()){
		out.println("<td>"+yomi.nextToken()+"</td>");	
	}
	out.println("</tr>");
	i--;
}
                %>
            </table>
        </font>
            </form>
        </body>

        </html>