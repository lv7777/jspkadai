<%@ page contentType="text/html;charset=UTF-8" import="java.util.*" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>単語帳検索（検索結果）</title>
</head>

<body>
    <%
    HashMap<String, String> map =new HashMap<String, String>();
    map.put("JSP","をｆじょいｊｆｒぐええふｈりうえｈふえちｇｈり");
    map.put("JSP","をｆじょいｊｆｒぐええふｈりうえｈふえちｇｈり");
    map.put("JSP","をｆじょいｊｆｒぐええふｈりうえｈふえちｇｈり");
    map.put("JSP","をｆじょいｊｆｒぐええふｈりうえｈふえちｇｈり");

  String keywd=request.getParameter("keywd");
    
    if(map.containsKey(keywd)){
    
    String result =map.get(keywd);
    StringTokenizer token=new StringTokenizer(result,"\t");
    %>
        <dl>
            <dt>検索キーワード<%=keywd %></dt>
        </dl>
        <dd>
            <ol>
                <li>
                    <%=token.nextToken() %>
                    <%=token.nextToken() %>
                </li>
                <li>
                    <%=token.nextToken() %>
                </li>
            </ol>

        </dd>
        <% }else{ %>
        <div style="color:red">指定された単語は見つかりませんでした</div>
        <% } %>
</body>
<div></div>
</html>