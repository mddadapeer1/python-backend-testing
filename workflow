
pip install flask mysql-connector-python  #dependenceis



CREATE DATABASE dev;
USE dev;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);









### API Methods 



Updated Flask App with Full API Methods
This includes:

GET /users → Fetch all users
POST /users/add → Add a new user
GET /users/<id> → Fetch a single user by ID
PUT /users/update/<id> → Update a user's info
DELETE /users/delete/<id> → Delete a user







#### Post method ###   --->To add new user post method 

curl -X POST http://localhost:5000/users/add      -H "Content-Type: application/json"      -d '{"name":"John DDoe", "email":"john@example.com"}'


#### Get method ###   --->To Fetch all users
curl -X GET http://localhost:5000/users 



#### Get method ###  --->To Fetch single users
curl -X GET http://localhost:5000/users/1 



#### Put method ###  --->To update user post method 

curl -X PUT http://localhost:5000/users/update/1 \
     -H "Content-Type: application/json" \
     -d '{"name": "John Updated", "email": "john.updated@example.com"}'


### Delete method ### ----> To Delete user 

curl -X DELETE http://localhost:5000/users/delete/1


ps aux | grep app.py   # to check running or not python background


pkill -f app.py    # to kill process 


## To run continuously  background without stop

nohup python3 app.py > flask.log 2>&1 &


### How It Works
nohup prevents the process from stopping when you log out.
& runs it in the background.
> flask.log 2>&1 redirects output (stdout & stderr) to flask.log.






