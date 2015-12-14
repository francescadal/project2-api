
# User authentication

## Register

```
curl --include --request POST --header "Content-Type: application/json" -d '{
  "credentials": {
    "email": "t@example.email",
    "status": "an example status",
    "password": "an example password",
    "password_confirmation": "an example password",
    "birthday": "date"
  }
}' http://localhost:3000/register
```

## Login

```
curl --request POST --header "Content-Type: application/json" -d '{
  "credentials": {
    "email": "fran@example.com",
    "password": "pw"
  }
}' http://localhost:3000/login
```

593f4e6ef055bfd99075340242cdc331


## Logout

```
curl --request DELETE --header "Authorization: Token token=c017d611187e3350baffc52d35a4df69" http://localhost:3000/logout/1
```

# Users

## List

```
curl --header "Authorization: Token token=c017d611187e3350baffc52d35a4df69" http://localhost:3000/users
```

# Books

## List

```
curl --header "Authorization: Token token=c017d611187e3350baffc52d35a4df69" http://localhost:3000/users
```

curl --header "Authorization: Token token=593f4e6ef055bfd99075340242cdc331" http://localhost:3000/comments

**OR**

```
curl http://localhost:3000/users
```

## Create

```
curl --request POST --header "Authorization: Token token=be249dc0231396806f24c953cafae03a" --header "Content-Type: application/json" -d '{
  "book": {
    "title":"The Hold",
    "isbn":"abc123def456"
  }
}'  http://localhost:3000/books
```
