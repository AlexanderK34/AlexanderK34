<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Passenger</title>
    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/style.css">
    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/one-passenger-style.css">
</head>
<body>
<div id="wrapper">
    <div id="header">
        <h2>Passenger</h2>
    </div>
</div>
<div id="container">
    <h2>Passenger ${passenger.name} ${passenger.family}</h2>
    <p>
        <a href="${pageContext.request.contextPath}/passenger/main">Main</a>&nbsp;
        <a href="${pageContext.request.contextPath}/passenger/list">List</a>
    </p>
    <form:form action="showFormOne" modelAttribute="passenger" method="GET">
        <form:hidden path="id"/>
        <table>
            <tbody>
            <tr>
                <td><label> ID: </label></td>
                <td><label>${passenger.id}</label></td>
            </tr>
            <tr>
                <td><label> First name: </label></td>
                <td><label>${passenger.name}</label></td>
            </tr>
            <tr>
                <td><label>Last name:</label></td>
                <td><label>${passenger.family}</label></td>
            </tr>
            <tr>
                <td><label>Birthday:</label></td>
                <td><label>${passenger.birthday}</label></td>
            </tr>
            <tr>
                <td><label>Email:</label></td>
                <td><label>${passenger.email}</label></td>
            </tr>
            <tr>
                <td><label>Phone number:</label></td>
                <td><label>${passenger.phone}</label></td>
            </tr>
            <tr>
                <td><label>Gender:</label></td>
                <td><label>${passenger.gender}</label></td>
            </tr>
            <tr>
                <td><label>Card Type:</label></td>
                <td><label>${passenger.card.type}</label></td>
            </tr>
            <tr>
                <td><label>Card Number:</label></td>
                <td><label>${passenger.card.number}</label></td>
            </tr>
            <tr>
                <td><label>House Number:</label></td>
                <td><label>${passenger.address.number}</label></td>
            </tr>
            <tr>
                <td><label>Street:</label></td>
                <td><label>${passenger.address.street}</label></td>
            </tr>
            <tr>
                <td><label>City:</label></td>
                <td><label>${passenger.address.city}</label></td>
            </tr>
            <tr>
                <td><label>State/Province:</label></td>
                <td><label>${passenger.address.state}</label></td>
            </tr>
            <tr>
                <td><label>Country:</label></td>
                <td><label>${passenger.address.country}</label></td>
            </tr>
            <tr>
                <td><label>Postal Code:</label></td>
                <td><label>${passenger.address.zipcode}</label></td>
            </tr>
            <tr>
                <td><label>from City:</label></td>
                <td><label>${passenger.flight.fromCity}</label></td>
            </tr>
            <tr>
                <td><label>Departure Date:</label></td>
                <td><label>${passenger.flight.departureDate}</label></td>
            </tr>
            <tr>
                <td><label>Departure Time:</label></td>
                <td><label>${passenger.flight.departureTime}</label></td>
            </tr>
            <tr>
                <td><label>to City:</label></td>
                <td><label>${passenger.flight.toCity}</label></td>
            </tr>
            <tr>
                <td><label>Destination Date:</label></td>
                <td><label>${passenger.flight.destinationDate}</label></td>
            </tr>
            <tr>
                <td><label>Destination Time:</label></td>
                <td><label>${passenger.flight.destinationTime}</label></td>
            </tr>
            </tbody>
        </table>
    </form:form>
    <div style="clear: both;"></div>
</div>
</body>
</html>