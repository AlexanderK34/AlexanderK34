<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>List of Passengers</title>
    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/style.css"/>
</head>
<body>
<div id="wrapper">
    <div id="header">
        <h2>List Of Passengers</h2>
    </div>
</div>
<div id="container">
    <p>
        <a href="${pageContext.request.contextPath}/passenger/main">Main</a>
    </p>
    <div id="content">

        Total number of passengers: ${passengers.size()}
        <br><br>
        <table>
            <tr>
                <th>ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Birthday</th>
                <th>Email</th>
                <th>Phone Number</th>
                <th>Gender</th>
                <th>Card Type</th>
                <th>Card Number</th>
                <th>House Number</th>
                <th>Street</th>
                <th>City</th>
                <th>State</th>
                <th>Country</th>
                <th>Postal Code</th>
                <th>from City</th>
                <th>Departure Date</th>
                <th>Departure Time</th>
                <th>to City</th>
                <th>Destination Date</th>
                <th>Destination Time</th>
                <th>Action</th>
            </tr>

            <c:forEach var="tempPassenger" items="${passengers}">

                <c:url var="showLink" value="/passenger/showOne">
                    <c:param name="passengersId" value="${tempPassenger.id}"/>
                </c:url>

                <c:url var="updateLink" value="/passenger/update">
                    <c:param name="passengersId" value="${tempPassenger.id}"/>
                </c:url>

                <c:url var="deleteLink" value="/passenger/delete">
                    <c:param name="passengersId" value="${tempPassenger.id}"/>
                </c:url>
                <tr>
                    <td> ${tempPassenger.id} </td>
                    <td> ${tempPassenger.name} </td>
                    <td> ${tempPassenger.family} </td>
                    <td> ${tempPassenger.birthday} </td>
                    <td> ${tempPassenger.email} </td>
                    <td> ${tempPassenger.phone} </td>
                    <td> ${tempPassenger.gender} </td>
                    <td> ${tempPassenger.card.type} </td>
                    <td> ${tempPassenger.card.number} </td>
                    <td> ${tempPassenger.address.number} </td>
                    <td> ${tempPassenger.address.street} </td>
                    <td> ${tempPassenger.address.city} </td>
                    <td> ${tempPassenger.address.state} </td>
                    <td> ${tempPassenger.address.country} </td>
                    <td> ${tempPassenger.address.zipcode} </td>
                    <td> ${tempPassenger.flight.fromCity} </td>
                    <td> ${tempPassenger.flight.departureDate} </td>
                    <td> ${tempPassenger.flight.departureTime} </td>
                    <td> ${tempPassenger.flight.toCity} </td>
                    <td> ${tempPassenger.flight.destinationDate} </td>
                    <td> ${tempPassenger.flight.destinationTime} </td>
                    <td>
                        <a href="${showLink}">Show
                        </a>
                        |
                        <a href="${updateLink}">Update
                        </a>
                        |
                        <a href="${deleteLink}"
                           onclick="if (!(confirm('Are you sure you want to delete this passenger?'))) return false">
                            Delete
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
</body>
</html>