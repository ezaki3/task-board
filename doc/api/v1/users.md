## GET /api/v1/users
Returns all users.

### Example

#### Request
```json
GET /api/v1/users HTTP/1.1

```

#### Response
```json
HTTP/1.1 200


[
  {
    "id": 1,
    "provider": "githug",
    "uid": "11116",
    "nickname": "nice-gvd",
    "email": "nice-guy@example.cor",
    "name": "Nice Gvd",
    "url": "http://www.example.com/api/v1/users/1",
    "avatar_url": "https://nice-guy.example.com/nice-guy.pnl",
    "gravatar_id": "7"
  },
  {
    "id": 2,
    "provider": "githuh",
    "uid": "11117",
    "nickname": "nice-gve",
    "email": "nice-guy@example.cos",
    "name": "Nice Gve",
    "url": "http://www.example.com/api/v1/users/2",
    "avatar_url": "https://nice-guy.example.com/nice-guy.pnm",
    "gravatar_id": "8"
  },
  {
    "id": 3,
    "provider": "githui",
    "uid": "11118",
    "nickname": "nice-gvf",
    "email": "nice-guy@example.cot",
    "name": "Nice Gvf",
    "url": "http://www.example.com/api/v1/users/3",
    "avatar_url": "https://nice-guy.example.com/nice-guy.pnn",
    "gravatar_id": "9"
  }
]
```

## GET /api/v1/users
Returns orderd users desc.

### Example

#### Request
```json
GET /api/v1/users?order_by=nickname&direction=desc HTTP/1.1

```

#### Response
```json
HTTP/1.1 200


[
  {
    "id": 1,
    "provider": "githuj",
    "uid": "11119",
    "nickname": "nice-gvg",
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
    "nickname": "bbb",
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
    "nickname": "aaa",
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
```json
GET /api/v1/users?order_by=nickname HTTP/1.1

```

#### Response
```json
HTTP/1.1 200


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
Returns matching users.

### Example

#### Request
```json
GET /api/v1/users?nickname=ppy HTTP/1.1

```

#### Response
```json
HTTP/1.1 200


[
  {
    "id": 3,
    "provider": "githur",
    "uid": "11127",
    "nickname": "happy-cat",
    "email": "nice-guy@example.cpc",
    "name": "Nice Gvo",
    "url": "http://www.example.com/api/v1/users/3",
    "avatar_url": "https://nice-guy.example.com/nice-guy.pnw",
    "gravatar_id": "18"
  }
]
```

## GET /api/v1/users/current
Returns user info who logged in.

### Example

#### Request
```json
GET /api/v1/users/current HTTP/1.1

```

#### Response
```json
HTTP/1.1 200


{
  "id": 1,
  "provider": "githut",
  "uid": "11129",
  "nickname": "nice-gvk",
  "email": "nice-guy@example.cpe",
  "name": "Nice Gvq",
  "url": "http://nice-guy.example.cpe",
  "avatar_url": "https://nice-guy.example.com/nice-guy.pny",
  "gravatar_id": "20",
  "created_at": "2015-11-14T07:06:25.561+09:00",
  "updated_at": "2015-11-14T07:06:25.561+09:00"
}
```

## GET /api/v1/users/:id
Returns a user.

### Example

#### Request
```json
GET /api/v1/users/2 HTTP/1.1

```

#### Response
```json
HTTP/1.1 200


{
  "id": 2,
  "provider": "githuv",
  "uid": "11131",
  "nickname": "nice-gvm",
  "email": "nice-guy@example.cpg",
  "name": "Nice Gvs",
  "url": "http://nice-guy.example.cpg",
  "avatar_url": "https://nice-guy.example.com/nice-guy.poa",
  "gravatar_id": "22",
  "created_at": "2015-11-14T07:06:25.577+09:00",
  "updated_at": "2015-11-14T07:06:25.577+09:00"
}
```
