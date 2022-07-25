# Flight-Management
Flight Management (Web course project: Java Spring MVC and Spring REST + MySQL)


## Create a Spring-MVC and Spring-REST Web Service with AOP Exception Handling for a Travel Agency:

1- Show list of all passengers
/api/passengers

2- Show just one passenger by id:
/api/passengers/1

3- Find a passenger by family
/api/passengers/find/family

4- Show list of passengers based on the destination city
/api/passengers/city/some-city

5- Show list of passengers ordered by family
/api/passengers/sorted/family

6- Show list of all passengers by departure date
/api/passengers/departuredate/departuredate

7- Show list of all passengers by departure date and destination city
/api/passengers/find/date/{date}/city/{city}

8- Create an index page and test all your links. Load your data structure in the separate method.

9- Implement delete by id. (@DeleteMapping)
/api/passengers/1

Example: Show list of all passengers -> REST, Spring MVC, Database interaction (Hibernate + MySQL)

## Passenger Object:

name

family

birthdate

email

phone

gender(F/M)

payment(is an object type of card, card number)


## Address Object:

number

streetAddress

city

state

country

zipcode


## Flight:

fromCity

departureDate

departureTime


toCity

destinationDate

destinationTime
