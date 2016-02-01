197p
<%@ page contentType="text/html;charset=UTF-8" import="java.util.regex.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>URL文字列をリンクに変更</title>
</head>
<body>
    <% 
    String msg="おふぉいじぇふぉｗふｈｒふぃうｈｆくっそだりいこんなん全部jsで出来るんだが(http://www.wings.msn.to/)";
    Pattern pattern=Pattern,compile("https?://([\\w-]+\\.)+[\\w-]+(/[\\w- ./?%&=]*)?",Pattern.CASE_INSENSITIVE);
    Matcher match = pattern.matcher(msg);
    out.println(match.replaceAll("<a href='$0'>$0</a>"));
    
    %>
</body>
</html>