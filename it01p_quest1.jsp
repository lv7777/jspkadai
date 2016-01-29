<%@page contentType="text/html;charset=UTF-8" %>
	<!DOCTYPE html>
	<html>
	<head>
	<meta charset="UTF-8" />
	<title>アンケート調査</title>
	</head>
	<body>
	<h1>アンケート調査</h1>
	<form method="POST" action="it01p_quest2.jsp">
	<div>
	<label>
	あなたの好きな食べ物は？
	<select name="food">
	<option value="3">ラーメン</option>
	<option value="2">カレーライス</option>
	<option value="1">納豆ごはん</option>
	</select>
	</label>
	</div>
	<div>
	<input type="submit" value="登録"/>
	</div>
	</body>
	</html>