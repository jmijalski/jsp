<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.stream.IntStream" %><%--
  Created by IntelliJ IDEA.
  User: JM
  Date: 2019-05-12
  Time: 09:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%!

    private int add(int a, int b) {
        return a + b;
    } %>
<%=
add(3, 6)
%>
<br>
<% out.print("Hello World"); %> <br>

<% out.print("Today is: "); %> <br>
<% out.print(new java.util.Date()); %>


<%!
    private int[] createTable(int a, int b) {
        return IntStream.rangeClosed(a, b).toArray();
    }

    private String text = "time";
%>


<ol type="I">
    <%
        int [] myTable = createTable(1,5);
        for (int i = 0; i < myTable.length; i++) { %>
    <li> <%= myTable[i] + " " + text + (myTable[i] !=1 ? "s" : "")%></li>

      <%
          }
      %>





</ol>


</body>
</html>
