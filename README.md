app-server
==========

## Usage

Request a bearer token:

```
curl -X POST -vu clientapp:123456 http://localhost:9000/oauth/token -H "Accept: application/json" -d "password=password&username=user&grant_type=password&scope=read%20write&client_secret=123456&client_id=clientapp"
```

A successful authorization results in the following JSON response:

```
{"access_token":"bad8210c-a86f-415f-a75f-cdc25ac1feb4","token_type":"bearer","expires_in":43199,"scope":"read write"}
```

Use the access_token returned in the previous request to make the authorized request to the protected endpoint:

```
curl http://localhost:9000/greeting -H "Authorization: Bearer bad8210c-a86f-415f-a75f-cdc25ac1feb4"
```

If the request is successful, you will see the following JSON response:

```
{"id":1,"content":"Hello, World!"}
```

## Todo

* Sign up	POST	/signup
* Sign in	POST	/signin
* Sign out	POST	/signout
* Users		GET	/v1/api/users
* User profile	GET	/v1/api/users/{id}
* Admin		GET	/admin
