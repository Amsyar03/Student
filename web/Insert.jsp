<!DOCTYPE html>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<sql:setDataSource var="myDatasource"
driver="org.apache.derby.jdbc.ClientDriver"
url="jdbc:derby://localhost:1527/StudentDB" user="app"
password="app"/>
<html>
<head>
    <title>Insert Page</title>  
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


    <%-- Retrieve parameters and insert into the database --%>
    <c:set var="id" value="${param.id}"/>
    <c:set var="name" value="${param.name}"/>
    <c:set var="branch" value="${param.branch}"/>
    <c:if test="${(id!=null)&&(branch!=null)}" var="result">
    </c:if>
    <c:if test="${not empty id and not empty name and not empty branch}">
       <sql:update var="result" dataSource="${myDatasource}">
            INSERT INTO STUDENT (ID, NAME, BRANCH)
            VALUES (?, ?, ?)
            <sql:param value="${id}"/> 
            <sql:param value="${name}"/> 
            <sql:param value="${branch}"/>
        </sql:update>  
            <p>Data inserted successfully</P>
    </c:if>

    <h1>Insert Student Details</h1>
    <form action="Insert.jsp" method="post">
        ID: <input type="text" name="id" required/><br>
        Name: <input type="text" name="name" required/><br>
        Branch: <input type="text" name="branch" required/><br>
        <button type="submit">Submit</button>
    </form>
    <sql:query var="result" dataSource="${myDatasource}">
        SELECT * FROM APP.STUDENT
    </sql:query>
        
    <table border="1">
        <!-- column headers -->
        <tr>
            <c:forEach var="columnName" items="${result.columnNames}">
                <th><c:out value="${columnName}"/></th>
                </c:forEach>
        </tr>
        <!-- column data -->
        <c:forEach var="row" items="${result.rowsByIndex}">
            <tr>
                <c:forEach var="column" items="${row}">
                    <td><c:out value="${column}"/></td>
                </c:forEach>
            </tr>
        </c:forEach>
    </table>
</body>
    </html>
