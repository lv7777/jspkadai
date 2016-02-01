<%@ page contentType="text/html;charset=UTF-8" import="" %>
<% request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>アドレス帳検索</title>
</head>
<body>
    <% %>
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

