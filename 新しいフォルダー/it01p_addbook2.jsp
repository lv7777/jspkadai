<%@ page contentType="text/html;charset=UTF-8" import="ava.util.*,java.io.*" %>
<% request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>アドレス帳検索</title>
</head>
<body>
    <%
    String no=null,name=null,sex=null,tel=null,address=null;
    boolean flag=false;
    String key=request.getParameter("name");
    FileReader=newFileReader(
    		application.getRealPath("WEB-INF/data/data.txt"));
    		BufferedReader buf=new BufferedReader(reader);
   		while(buf.ready()){
   			String line=buf.readline();
   			StringTokenizer token new StringTokenizer(line,"\t");
   			no=token.nextToken();
   			name=token.nextToken();
   			sex=token.nextToken();
   			tel=token.nextToken();
   			address=token.nextToken();
   			if(name.equals(key)){
   				flag=true;
   				break;
   			}
   		}
   		buf.close();
   		if(flag){
    %>
<dl>
    <dt style="font-size:14pt;font-weight:bold"><%=name %></dt>
    <dd>
        <ol>
            <li><%=sex %></li>
            <li><%=tell %></li>
            <li><%=address %></li>
        </ol>
    </dd>
</dl>
<% }else{ %>
<div style="color:red">指定された名前は見つからないんですが・・・</div>
</body>
</html>