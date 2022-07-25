<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Save Passenger</title>
    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/style.css">
    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/add-update-passenger-style.css">
</head>
<body>
<div id="wrapper">
    <div id="header">
        <h2>Passenger Update</h2>
    </div>
</div>
<div id="container">
    <h3>Save Passenger</h3>
    <p>
        <a href="${pageContext.request.contextPath}/passenger/main">Main</a>&nbsp;
        <a href="${pageContext.request.contextPath}/passenger/list">List</a>
    </p>

    <form:form action="save" modelAttribute="passenger" method="POST">
        <form:hidden path="id"/>
        <table>
            <tbody>
            <tr>
                <td><label>First name:</label></td>
                <td><form:input path="name"/></td>
            </tr>
            <tr>
                <td><label>Last name:</label></td>
                <td><form:input path="family"/></td>
            </tr>
            <tr>
                <td><label>Birthday:</label></td>
                <td><form:input path="birthday"/></td>
            </tr>
            <tr>
                <td><label>Email:</label></td>
                <td><form:input path="email"/></td>
            </tr>
            <tr>
                <td><label>Phone number:</label></td>
                <td><form:input path="phone"/></td>
            </tr>
            <tr>
                <td><label>Gender:</label></td>
                <td>
                    <form:select path="gender">
                        <form:option value="M" label="Male"/>
                        <form:option value="F" label="Female"/>
                    </form:select>
                </td>
            </tr>
            <tr>
                <td><label>Card Type:</label></td>
                <td><form:input path="card.type"/></td>
            </tr>
            <tr>
                <td><label>Card Number:</label></td>
                <td><form:input path="card.number"/></td>
            </tr>
            <tr>
                <td><label>House Number:</label></td>
                <td><form:input path="address.number"/></td>
            </tr>
            <tr>
                <td><label>Street:</label></td>
                <td><form:input path="address.street"/></td>
            </tr>
            <tr>
                <td><label>City:</label></td>
                <td><form:input path="address.city"/></td>
            </tr>
            <tr>
                <td><label>State/Province:</label></td>
                <td><form:input path="address.state"/></td>
            </tr>
            <tr>
                <td><label>Country:</label></td>
                <td><form:input path="address.country"/></td>
            </tr>
            <tr>
                <td><label>Postal Code:</label></td>
                <td><form:input path="address.zipcode"/></td>
            </tr>
            <tr>
                <td><label>from City:</label></td>
                <td><form:input path="flight.fromCity"/></td>
            </tr>
            <tr>
                <td><label>Departure Date:</label></td>
                <td><form:input path="flight.departureDate"/></td>
            </tr>
            <tr>
                <td><label>Departure Time:</label></td>
                <td><form:input path="flight.departureTime"/></td>
            </tr>
            <tr>
                <td><label>to City:</label></td>
                <td><form:input path="flight.toCity"/></td>
            </tr>
            <tr>
                <td><label>Destination Date:</label></td>
                <td><form:input path="flight.destinationDate"/></td>
            </tr>
            <tr>
                <td><label>Destination Time:</label></td>
                <td><form:input path="flight.destinationTime"/></td>
            </tr>
            <tr>
                <td><label></label></td>
                <td><input type="submit" value="Save" class="save"/></td>
            </tr>
            </tbody>
        </table>
    </form:form>
    <div style="clear: both;"></div>
</div>
</body>
</html>










