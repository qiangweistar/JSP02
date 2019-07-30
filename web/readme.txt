第二章 JSP数据交互（一）
1.JSP内置对象：是由web容器加载的一组servlet api的实例，这些实例由jsp规范进行了默认的初始化操作，可以直接在jsp中使用。
例：out 向浏览器输出数据
    request 有关浏览器请求的信息
2.中文乱码
  1）post请求：tomcat对请求数据采用的默认编码是ISO-8859-1进行解码,request.getParamter()得到的字符串是以
  ISO-8859-1转换而来的。所以在获取请求参数值前，调用request.setCharacterEncoding()方法，将请求解码的方式
  设定为utf-8。
  注意：页面和浏览器发送请求也应一致使用utf-8编码，通过jsp页面设置page指令的contentType属性，
  指定页面内容的编码格式为：<%@ page contentType="text/html;charset=utf-8"%>
  contentType和pageEncoding的区别：contentType定义响应资源的类型，也可以包含jsp页面和响应内容的字符集
  pageEncoding指定jsp文件的字符集及默认的conentType字符集。
  2）get请求
      当采用get方式提交表单时，提交的数据作为查询字符串被附加到URL的末端发送到服务器，对于这部分数据，在服务器端
      调用request.setCharacterEncoding()方法是不起作用的，我们需要得到请求参数值后，进行编码转换。
      a. String name=request.getParameter("name");
         name = new String(name.getBytes("ISO-8859-1"),"utf-8");
      b.方式2，当获取表单中参数较多时，a方式较为麻烦，效率也低。这时可以设置Tomcat中conf-->server.xml
        <connector>元素中添加URIEncoding="utf-8"即可。（此方式浏览器需要以utf-8编码发送URL）





