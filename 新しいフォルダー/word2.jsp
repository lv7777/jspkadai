<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>単語帳検索（検索結果）</title>
</head>

<body>
    <%
    
    %>

        <dl>
            <dt>検索キーワード<% %></dt>
        </dl>
        <dd>
            <ol>
                <li>
                    <%=token.nextToken() %>
                </li>
                <li>
                    <%=token.nextToken() %>
                </li>
            </ol>

        </dd>
        <% %>
        <div style="color:red">指定された単語は見つかりませんでした</div>
        <% %>
</body>
<div></div>
</html>