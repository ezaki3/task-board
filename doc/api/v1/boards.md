## GET /api/v1/boards/:id
Returns a board.

### Example

#### Request
```
GET /api/v1/boards/1 HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 150
Content-Type: application/json; charset=utf-8
ETag: W/"fd66aaf72aaf58c04ed78760a89a41bd"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 2bb5f307-7dd2-46ad-a881-f7c14549d708
X-Runtime: 0.043255
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "ボード-1",
  "priority": 1001,
  "created_at": "2015-09-21T00:20:19.359+09:00",
  "updated_at": "2015-09-21T00:20:19.359+09:00",
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
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 65
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

board[subject]=%E3%83%9C%E3%83%BC%E3%83%89-2&board[priority]=1002
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 150
Content-Type: application/json; charset=utf-8
ETag: W/"002cf440487a840682eaae1566ac9691"
Location: /api/v1/boards/1
Set-Cookie: request_method=POST; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: cd2e405e-0088-4b44-9354-bcbbda636c2c
X-Runtime: 0.004468
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "ボード-2",
  "priority": 1002,
  "created_at": "2015-09-21T00:20:19.416+09:00",
  "updated_at": "2015-09-21T00:20:19.416+09:00",
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
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 15
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

board[subject]=
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
X-Request-Id: 7a2f7341-cace-4cb4-be51-0f598e578ad4
X-Runtime: 0.003489
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
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 51
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

board[subject]=changed+subject&board[priority]=1005
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 154
Content-Type: application/json; charset=utf-8
ETag: W/"a5a49520185221e47edd9d661a169c3b"
Location: /api/v1/boards/1
Set-Cookie: request_method=PATCH; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: e0674697-89a5-44ae-b393-740d5b6bd7e2
X-Runtime: 0.004952
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "changed subject",
  "priority": 1005,
  "created_at": "2015-09-21T00:20:19.439+09:00",
  "updated_at": "2015-09-21T00:20:19.443+09:00",
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
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 15
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

board[subject]=
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
X-Request-Id: b088b662-7b7f-426d-ad0c-e23eae7772f3
X-Runtime: 0.002669
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
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 204
Cache-Control: no-cache
Set-Cookie: request_method=DELETE; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: ed71676f-8d8b-4aef-8955-cd079a255611
X-Runtime: 0.002261
X-XSS-Protection: 1; mode=block
```

## GET /api/v1/boards
Returns boards.

### Example

#### Request
```
GET /api/v1/boards HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
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
X-Request-Id: db21ec42-8ccd-45ac-b7cc-5cccafe4226a
X-Runtime: 0.003729
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
