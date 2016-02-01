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


