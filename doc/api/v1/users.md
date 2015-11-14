## GET /api/v1/users/:id
Returns a user.

### Example

#### Request

##### Header
```
GET /api/v1/users/2
```



#### Response

##### Header
```
HTTP/1.1 200
```


##### Body
```json


{
  "id": 2,
  "provider": "githud",
  "uid": "11113",
  "nickname": "nice-gva",
  "email": "nice-guy@example.coo",
  "name": "Nice Gva",
  "url": "http://nice-guy.example.coo",
  "avatar_url": "https://nice-guy.example.com/nice-guy.pni",
  "gravatar_id": "4",
  "created_at": "2015-11-14T07:34:16.129+09:00",
  "updated_at": "2015-11-14T07:34:16.129+09:00"
}
```


## GET /api/v1/users/current
Returns user info who logged in.

### Example

#### Request

##### Header
```
GET /api/v1/users/current
```



#### Response

##### Header
```
HTTP/1.1 200
```


##### Body
```json


{
  "id": 1,
  "provider": "githue",
  "uid": "11114",
  "nickname": "nice-gvb",
  "email": "nice-guy@example.cop",
  "name": "Nice Gvb",
  "url": "http://nice-guy.example.cop",
  "avatar_url": "https://nice-guy.example.com/nice-guy.pnj",
  "gravatar_id": "5",
  "created_at": "2015-11-14T07:34:16.143+09:00",
  "updated_at": "2015-11-14T07:34:16.143+09:00"
}
```


## GET /api/v1/users
Returns matching users.

### Example

#### Request

##### Header
```
GET /api/v1/users?nickname=ppy
```



#### Response

##### Header
```
HTTP/1.1 200
```


##### Body
```json


[
  {
    "id": 3,
    "provider": "githui",
    "uid": "11118",
    "nickname": "happy-cat",
    "email": "nice-guy@example.cot",
    "name": "Nice Gvf",
    "url": "http://www.example.com/api/v1/users/3",
    "avatar_url": "https://nice-guy.example.com/nice-guy.pnn",
    "gravatar_id": "9"
  }
]
```


## GET /api/v1/users
Returns all users.

### Example

#### Request

##### Header
```
GET /api/v1/users
```



#### Response

##### Header
```
HTTP/1.1 200
```


##### Body
```json


[
  {
    "id": 1,
    "provider": "githuj",
    "uid": "11119",
    "nickname": "nice-gve",
    "email": "nice-guy@example.cou",
    "name": "Nice Gvg",
    "url": "http://www.example.com/api/v1/users/1",
    "avatar_url": "https://nice-guy.example.com/nice-guy.pno",
    "gravatar_id": "10"
  },
  {
    "id": 2,
    "provider": "githuk",
    "uid": "11120",
    "nickname": "nice-gvf",
    "email": "nice-guy@example.cov",
    "name": "Nice Gvh",
    "url": "http://www.example.com/api/v1/users/2",
    "avatar_url": "https://nice-guy.example.com/nice-guy.pnp",
    "gravatar_id": "11"
  },
  {
    "id": 3,
    "provider": "githul",
    "uid": "11121",
    "nickname": "nice-gvg",
    "email": "nice-guy@example.cow",
    "name": "Nice Gvi",
    "url": "http://www.example.com/api/v1/users/3",
    "avatar_url": "https://nice-guy.example.com/nice-guy.pnq",
    "gravatar_id": "12"
  }
]
```


## GET /api/v1/users
Returns orderd users asc.

### Example

#### Request

##### Header
```
GET /api/v1/users?order_by=nickname
```



#### Response

##### Header
```
HTTP/1.1 200
```


##### Body
```json


[
  {
    "id": 3,
    "provider": "githuo",
    "uid": "11124",
    "nickname": "aaa",
    "email": "nice-guy@example.coz",
    "name": "Nice Gvl",
    "url": "http://www.example.com/api/v1/users/3",
    "avatar_url": "https://nice-guy.example.com/nice-guy.pnt",
    "gravatar_id": "15"
  },
  {
    "id": 2,
    "provider": "githun",
    "uid": "11123",
    "nickname": "bbb",
    "email": "nice-guy@example.coy",
    "name": "Nice Gvk",
    "url": "http://www.example.com/api/v1/users/2",
    "avatar_url": "https://nice-guy.example.com/nice-guy.pns",
    "gravatar_id": "14"
  },
  {
    "id": 1,
    "provider": "githum",
    "uid": "11122",
    "nickname": "nice-gvh",
    "email": "nice-guy@example.cox",
    "name": "Nice Gvj",
    "url": "http://www.example.com/api/v1/users/1",
    "avatar_url": "https://nice-guy.example.com/nice-guy.pnr",
    "gravatar_id": "13"
  }
]
```


## GET /api/v1/users
Returns orderd users desc.

### Example

#### Request

##### Header
```
GET /api/v1/users?order_by=nickname&direction=desc
```



#### Response

##### Header
```
HTTP/1.1 200
```


##### Body
```json


[
  {
    "id": 1,
    "provider": "githup",
    "uid": "11125",
    "nickname": "nice-gvi",
    "email": "nice-guy@example.cpa",
    "name": "Nice Gvm",
    "url": "http://www.example.com/api/v1/users/1",
    "avatar_url": "https://nice-guy.example.com/nice-guy.pnu",
    "gravatar_id": "16"
  },
  {
    "id": 2,
    "provider": "githuq",
    "uid": "11126",
    "nickname": "bbb",
    "email": "nice-guy@example.cpb",
    "name": "Nice Gvn",
    "url": "http://www.example.com/api/v1/users/2",
    "avatar_url": "https://nice-guy.example.com/nice-guy.pnv",
    "gravatar_id": "17"
  },
  {
    "id": 3,
    "provider": "githur",
    "uid": "11127",
    "nickname": "aaa",
    "email": "nice-guy@example.cpc",
    "name": "Nice Gvo",
    "url": "http://www.example.com/api/v1/users/3",
    "avatar_url": "https://nice-guy.example.com/nice-guy.pnw",
    "gravatar_id": "18"
  }
]
```
