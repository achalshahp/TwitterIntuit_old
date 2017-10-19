# TwitterIntuit
### A Twitter like REST service for Employees

#### Objective

As part of enhancing our internal services which are available to our employees, we would like to build a Twitter like solution for our employees, where employees can tweet and have followers. 

#### Requirements

1. Spring MVC
2. Spring JDBC Template
3. MySQL
4. Authentication using Spring Security
5. Maven

#### Authentication

* **POST** - /dologin - login to the application
  * parameters:
    * username - login username
    * password - login password
* **POST** - /logout - logout from the application

#### Endpoints

* **POST** - /tweet/create - create a new tweet
  * parameters:
    * tweet - text of the tweet to add
* **GET** - /tweets/all?search=[query] - search for tweets of all users
* **GET** - /feed- search for tweets of all the users followed by the logged in user
* **GET** - /tweets/[username]?search=[query] - search for tweets of specific user
* **GET** - /following - list of users the user follows
* **GET** - /followers - list of users that follow the user
* **POST** - /users/follow - start following a user
  * parameters:
    * username - username of the user to start following
* **POST** - /users/unfollow - start unfollowing a user
  * parameters:
    * username - username of the user to stop following
* **POST** - /delete - delete a tweet (only ADMIN users can access this feature)
  * parameters:
    * username - username of the user to delete tweet
    * tweet - the actual tweet

#### How To Run The Application

1. Create the database 'twitterintuit' on MySQL
  * if need be, change the username and password on the file "[spring-database.xml](src/main/webapp/WEB-INF/spring-database.xml)"
2. Run the scripts present on the 'scripts' folder on the following order:
  * create_twitter_intuitr.sql
  * populate_twitter_intuit.sql
3. Import the project to Eclipse or other IDE.
4. Run the project
5. Use the application on your browser or by doing requests to the API
  * to use the endpoints of the application, you first need to successfully login
