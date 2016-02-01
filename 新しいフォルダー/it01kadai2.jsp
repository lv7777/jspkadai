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

if(rename=request.getParameter("nikku")!==null&&rename=request.getParameter("nikku")!==""&&rename=request.getParameter("kome")!==""){
	builder.append("\t");
	builder.append(rename);
	builder.append("\t");

	rename = rename.replace("&","&amp;");
	rename = rename.replace(">","&gt;");
	rename = rename.replace("<","&lt;");
	rename = rename.replace("\"","&quot;");
	rename = rename.replace("","&acute;");
	builder.append(dformat.format(current));
	builder.append("\t");
	builder.append(rename);
	builder.append("\t");

	rename=request.getParameter("kome");
	rename = rename.replace("&","&amp;");
	rename = rename.replace(">","&gt;");
	rename = rename.replace("<","&lt;");
	rename = rename.replace("\"","&quot;");
	rename = rename.replace("","&acute;");
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
        <p style="">コメントフォーム</p>
    </h1>
            <form method="POST">
                <font color="#fff">
            
                    <table border="0" bordercolor="#000">
                <tr>
                    <th bgcolor="#0088ff" align="right">ニックネーム</th>
                    <th><input type="text" name="nikku" id="" size="10" /></th>
                </tr>
                <tr>
                    <th bgcolor="#0088ff" align="right">コメント</th>
                    <th><input type="text" name="kome" id="" size="60" /></th>
                </tr>
               <tr>
                    <th><input type="submit" value="登録">
                    <input type="reset" value="取り消し"></th>
                </tr>
            </table>
            <table border="">
                <br>
                <tr bgcolor="#009999">
                    <th>日付</th>
                    <th>ニックネーム</th>
                    <th>コメント</th>
                </tr>
                <% 
                String[] test =new String[1024];
int 1=0;
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