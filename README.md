# A Secure API using CodeIgniter 4.1.1

#### This project is built on top of Composer and Json Web Tokens(JWT). It has users and clients model. The user is authenticated against the user table data and is allowed the privilege of viewing the clients list with proper credentials.

### Project Setup

Download the project files and run the below command to install composer dependencies.
```php composer.phar install```

Import the Mysql DB from the below path to your mysql server.
```db/ci-api-db.sql```

Change the below code in the .env file with respect to mysql server.
```
database.default.hostname = localhost
database.default.database = ci-api-db
database.default.username = root
database.default.password = 
database.default.DBDriver = MySQLi
```

Valid user credentials are in the below path.
```db/sample-data.txt```

In postman use the below link to get the access token by passing form-data under body using one of the credentials given above, as email and password.
```http://localhost:8080/auth/login```

With the token received in the above login, follow the below link with a authorization bearer token in the header.
```http://localhost:8080/client```

The token expires automatically after 1hr, you can also change this in the .env file by editing the line in milliseconds.
``` JWT_TIME_TO_LIVE=3600 ```
