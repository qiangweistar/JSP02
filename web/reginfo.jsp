<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/29
  Time: 16:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册信息</title>
    <%
        request.setCharacterEncoding("utf-8");
        String name=request.getParameter("name");
        String pwd=request.getParameter("pwd");
        String[] channels = request.getParameterValues("channel");
    %>
</head>
<body>
    <div align="center">
        <table border="0" align="center">
            <tr>
                <td width="80" height="20">用户名:</td>
                <td><%=name%></td>
            </tr>
            <tr>
                <td height="20">密码:</td>
                <td><%=pwd%></td>
            </tr>
            <tr>
                <td height="20">信息来源:</td>
                <td>
                    <%
                        if (channels!=null){
                            for(String channel:channels){
                                out.print(channel);
                            }

                        }

                    %>

                </td>
            </tr>
        </table>

    </div>
</body>
</html>
