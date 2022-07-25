<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>
    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/style.css">
    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/main-style.css">
</head>

<body>
<img src="${pageContext.request.contextPath}/resources/image/travel_agency.jpg" alt="agency" style="width: 100%">
<div id="wrapper">
    <div id="header">
        <h2>Travel Agency</h2>
    </div>
</div>

<h2>Web</h2>
<a href="${pageContext.request.contextPath}/passenger/list">List of passengers</a>&nbsp;&nbsp;
<a href="${pageContext.request.contextPath}/passenger/listSortedByFamily">Sorted by family list</a>&nbsp;&nbsp;
<a href="${pageContext.request.contextPath}/passenger/add">Add new passenger</a>

<br><br>Show just one passenger by id
<form action="${pageContext.request.contextPath}/passenger/showOne" method="GET">
    <input type="number" name="passengersId" placeholder="enter passenger id"/>
    <input type="submit" value="Show"/>
</form>

<br>Update passenger by id
<form action="${pageContext.request.contextPath}/passenger/update" method="GET">
    <input type="number" name="passengersId" placeholder="enter passenger id"/>
    <input type="submit" value="Show"/>
</form>

<br>Delete passenger by id
<form action="${pageContext.request.contextPath}/passenger/delete" method="GET">
    <input type="number" name="passengersId" placeholder="enter passenger id"/>
    <input type="submit" value="Delete"
           onclick="if (!(confirm('Are you sure you want to delete this passenger?'))) return false">
</form>

<br>Find a passenger by family
<form action="${pageContext.request.contextPath}/passenger/findByFamily" method="GET">
    <input type="text" name="family" placeholder="enter last name"/>
    <input type="submit" value="Find"/>
</form>

<br>Show list of passengers based on the destination city
<form action="${pageContext.request.contextPath}/passenger/destinationCity" method="GET">
    <input type="text" name="city" placeholder="enter destination city"/>
    <input type="submit" value="Show"/>
</form>

<br>Show list of all passengers by departure date
<form action="${pageContext.request.contextPath}/passenger/departureDate" method="GET">
    <input type="text" name="date" placeholder="enter departure date"/>
    <input type="submit" value="Show"/>
</form>

<br>Show list of all passengers by departure date and destination city
<form action="${pageContext.request.contextPath}/passenger/departureDateAndCity" method="GET">
    <input type="text" name="date" placeholder="enter departure date"/><br><br>
    <input type="text" name="city" placeholder="enter destination city"/>
    <input type="submit" value="Show"/>
</form>

<br>
<hr>
<h2>API</h2>
<a href="${pageContext.request.contextPath}/api/passengers">
    API list of all passengers</a>
<br><br>
<a href="${pageContext.request.contextPath}/api/passengers/1">
    API show just one passenger by id</a>
<br><br>
<a href="${pageContext.request.contextPath}/api/passengers/find/ripley">
    API find a passenger by family</a>
<br><br>
<a href="${pageContext.request.contextPath}/api/passengers/city/montreal">
    API show list of passengers based on the destination city</a>
<br><br>
<a href="${pageContext.request.contextPath}/api/passengers/sorted/family">
    API show list of passengers ordered by family</a>
<br><br>
<a href="${pageContext.request.contextPath}/api/passengers/departuredate/2030-01-04">
    API show list of all passengers by departure date</a>
<br><br>
<a href="${pageContext.request.contextPath}/api/passengers/find/date/2030-01-04/city/montreal">
    API Show list of all passengers by departure date and destination city</a>
<br><br>
<hr>
<br>
</body>
</html>