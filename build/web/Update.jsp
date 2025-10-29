<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<sql:setDataSource var="myDatasource" 
                   driver="org.apache.derby.jdbc.ClientDriver" 
                   url="jdbc:derby://localhost:1527/StudentDB" 
                   user="app" password="app"/>

<html>
<head>
    <title>Update Student</title>
</head>
<body style="background-color:yellow;">
 <%--button style--%>
    <div style="margin: 20px;">
    <a href="index.jsp" style="
        background-color: #111;
        color: #ffdd00;
        padding: 10px 20px;
        border-radius: 6px;
        text-decoration: none;
        font-weight: bold;
        box-shadow: 0 2px 6px rgba(255, 221, 0, 0.6);
    ">Home</a>
</div>
<h2>Update Student Record</h2>

<form action="Update.jsp" method="post">
    Select ID to update:
    <select name="id">
<sql:query var="result" dataSource="${myDatasource}">
SELECT ID FROM STUDENT
</sql:query>
<c:forEach var="row" items="${result.rowsByIndex}">
<c:forEach var="column" items="${row}">
<option> <c:out value="${column}"/></option>
</c:forEach>
</c:forEach>
</select>
    <br/><br/>
    
    New Name: <input type="text" name="name" required/>
    <br/><br/>
    
    New Branch: <input type="text" name="branch" required/>
    <br/><br/>
    
    <input type="submit" value="Update"/>
</form>

<c:set var="id" value="${param.id}" />
<c:set var="name" value="${param.name}" />
<c:set var="branch" value="${param.branch}" />

<c:if test="${not empty id and not empty name and not empty branch}">
    <sql:update var="res" dataSource="${myDatasource}">
        UPDATE STUDENT SET NAME = ?, BRANCH = ? WHERE ID = ?
        <sql:param value="${name}" />
        <sql:param value="${branch}" />
        <sql:param value="${id}" />
    </sql:update>
    <p style="color:green;">Student record updated successfully for ID: <b><c:out value="${id}"/></b></p>
</c:if>

</body>
</html>
