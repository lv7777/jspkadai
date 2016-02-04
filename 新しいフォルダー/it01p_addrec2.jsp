<%@ page contentType="text/html;charset=UTF-8" import="java.io.*"%>
<%

    
    String key = request.getParameter("name");

    try {
      byte[] byteData = key.getBytes("ISO_8859_1");
      key = new String(byteData, "utf-8");
    }catch(UnsupportedEncodingException e){
      System.out.println(e);
    }

StringBuilder builder= new StringBuilder();
FileWriter writer=new FileWriter(application.getRealPath("/WEB-INF/data/data.txt"),true));
BufferedWriter buf = new BufferedWriter(writer);
builder.append(request.getParameter("no"));
builder.append("\t");
builder.append(request.getParameter("name"));
builder.append("\t");
builder.append(request.getParameter("sex"));
builder.append("\t");
builder.append(request.getParameter("tel"));
builder.append("\t");
builder.append(request.getParameter("address"));
builder.append("\t");
buf.write(builder.toString());
buf.newLine();
buf.close()

response.sendRedirect("it01p_addrec1.jsp");
%>
