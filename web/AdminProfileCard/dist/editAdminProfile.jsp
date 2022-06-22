<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>



<!DOCTYPE html>
<html lang="en" >
    <head>
        <meta charset="UTF-8">
        <title>CodePen - Material Design: Profile Card</title>
<!--        <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto'>
        <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css'><link rel="stylesheet" href="./AdminStyle.css">-->

    </head>
    <body>
          <div class="container-fluid">
                    <%
                        String host = "jdbc:mysql://localhost:3306/test";
                        Connection conn = null;
                        Statement stat = null;
                        ResultSet res = null;
                        PreparedStatement stmt = null;
                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                        conn = DriverManager.getConnection(host, "root", "admin");

                    %>
                    <div class="container">
                        <form method="post"  action="">
                            <%                        stat = conn.createStatement();
                                String u = request.getParameter("u");
                                //                        int num = Integer.parseInt(u);
                                String data = "select * from readingsection where RId='" + u + "'";
                                res = stat.executeQuery(data);
                                while (res.next()) {


                            %>
                            <div class=" mb-3">
                                <label class="col-auto"> Topic</label>
                                <input name="topic" value='<%=res.getString("topic")%>' type="text" class="form-control" style="border-radius: 5px 5px 5px 5px;" required>
                            </div>

                            <div class="mb-3">
                                <label class="col-auto">Content</label>
                                <!--                                <textarea name="Content"></textarea>-->
                                <input name="Content" value='<%= res.getString("Content")%>' type="text" class="form-control" style="border-radius: 50px 50px 50px 50px;" required>
                            </div>
                            <div class=" mb-3">
                                <label class="col-auto"> Url</label>
                                <input name="url" value='<%=res.getString("url")%>' type="text" class="form-control" style="border-radius: 5px 5px 5px 5px;" required>
                            </div><!-- comment -->
                            <div class=" mb-3">
                                <label class="col-auto"> Image</label>
                                <input name="filename" value='<%=res.getString("filename")%>' type="text" class="form-control" style="border-radius: 5px 5px 5px 5px;" required>
                            </div>


                            <button type ="submit" class="btn btn-warning">Update</button>

                            <a href="editReadingSection.jsp" class="btn btn-default">Back</a>

                        </form>
                    </div>

    </body>
    