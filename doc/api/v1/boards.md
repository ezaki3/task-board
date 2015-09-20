## GET /api/v1/boards/:id
Returns a board.

### Example

#### Request
```
GET /api/v1/boards/1?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 150
Content-Type: application/json; charset=utf-8
ETag: W/"236b81c8eda3d4078862739ef6ad25a8"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: bf582319-cbdf-4a9d-864c-0588d75a2078
X-Runtime: 0.039666
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "ボード-1",
  "priority": 1001,
  "created_at": "2015-09-21T02:09:13.050+09:00",
  "updated_at": "2015-09-21T02:09:13.050+09:00",
  "groups": [

  ]
}
```

## POST /api/v1/boards
Adds a new board.

### Example

#### Request
```
POST /api/v1/boards HTTP/1.1
Accept: application/json
Content-Length: 51
Content-Type: application/json
Host: www.example.com

{
  "board": {
    "subject": "ボード-2",
    "priority": 1002
  }
}
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 150
Content-Type: application/json; charset=utf-8
ETag: W/"9bd15dd5c344d8d6a8731e29c2d7c960"
Location: /api/v1/boards/1
Set-Cookie: request_method=POST; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: c36032ad-0997-4082-90e4-e08ab193f8b4
X-Runtime: 0.004092
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "ボード-2",
  "priority": 1002,
  "created_at": "2015-09-21T02:09:13.105+09:00",
  "updated_at": "2015-09-21T02:09:13.105+09:00",
  "groups": [

  ]
}
```

## POST /api/v1/boards/dryrun
Returns ng and not creates.

### Example

#### Request
```
POST /api/v1/boards/dryrun HTTP/1.1
Accept: application/json
Content-Length: 24
Content-Type: application/json
Host: www.example.com

{
  "board": {
    "subject": ""
  }
}
```

#### Response
```
HTTP/1.1 422
Cache-Control: no-cache
Content-Length: 30
Content-Type: application/json; charset=utf-8
Set-Cookie: request_method=POST; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: bc03c003-8158-49c7-adfb-1cd9879eb850
X-Runtime: 0.001883
X-XSS-Protection: 1; mode=block

{
  "subject": [
    "can't be blank"
  ]
}
```

## PATCH /api/v1/boards/:id
Updates a board.

### Example

#### Request
```
PATCH /api/v1/boards/1 HTTP/1.1
Accept: application/json
Content-Length: 55
Content-Type: application/json
Host: www.example.com

{
  "board": {
    "subject": "changed subject",
    "priority": 1005
  }
}
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 154
Content-Type: application/json; charset=utf-8
ETag: W/"e3cd04812a763d86030bc8c88ed86f4a"
Location: /api/v1/boards/1
Set-Cookie: request_method=PATCH; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 4619f9e0-83bb-424f-91ce-14e5d02f5a42
X-Runtime: 0.004742
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "changed subject",
  "priority": 1005,
  "created_at": "2015-09-21T02:09:13.123+09:00",
  "updated_at": "2015-09-21T02:09:13.128+09:00",
  "groups": [

  ]
}
```

## PATCH /api/v1/boards/:id/dryrun
Returns ng and not updates.

### Example

#### Request
```
PATCH /api/v1/boards/1/dryrun HTTP/1.1
Accept: application/json
Content-Length: 24
Content-Type: application/json
Host: www.example.com

{
  "board": {
    "subject": ""
  }
}
```

#### Response
```
HTTP/1.1 422
Cache-Control: no-cache
Content-Length: 30
Content-Type: application/json; charset=utf-8
Set-Cookie: request_method=PATCH; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 4c0281da-d842-4462-bc1f-5aca8ec3d1ad
X-Runtime: 0.002302
X-XSS-Protection: 1; mode=block

{
  "subject": [
    "can't be blank"
  ]
}
```

## DELETE /api/v1/boards/:id
Deletes a board.

### Example

#### Request
```
DELETE /api/v1/boards/1 HTTP/1.1
Accept: application/json
Content-Length: 2
Content-Type: application/json
Host: www.example.com

{
}
```

#### Response
```
HTTP/1.1 204
Cache-Control: no-cache
Set-Cookie: request_method=DELETE; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 02391566-2a73-4309-8c13-e9801ac75acb
X-Runtime: 0.002643
X-XSS-Protection: 1; mode=block
```

## GET /api/v1/boards
Returns boards.

### Example

#### Request
```
GET /api/v1/boards?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 195
Content-Type: application/json; charset=utf-8
ETag: W/"55fb9bfea7952b979fa91bddb8fbbdb0"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 2221b20f-8cb5-476a-bc5e-fafa97ca8a59
X-Runtime: 0.003540
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "ボード-10",
    "priority": 1012,
    "url": "http://www.example.com/api/v1/boards/1"
  },
  {
    "id": 2,
    "subject": "ボード-11",
    "priority": 1013,
    "url": "http://www.example.com/api/v1/boards/2"
  }
]
```
