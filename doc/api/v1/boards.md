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
ETag: W/"d936baeb0b29793fc76c5edb2049ad8b"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: b141d414-1f87-49f3-9fd7-057b88007e11
X-Runtime: 0.039809
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "ボード-1",
  "priority": 1001,
  "created_at": "2015-09-20T13:33:25.376+09:00",
  "updated_at": "2015-09-20T13:33:25.376+09:00",
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
ETag: W/"9a35b52be206ffbd8780ebb075f7bcbe"
Location: /api/v1/boards/1
Set-Cookie: request_method=POST; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: b95c9df5-a728-4156-8c9b-2ea40dade849
X-Runtime: 0.004652
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "ボード-2",
  "priority": 1002,
  "created_at": "2015-09-20T13:33:25.432+09:00",
  "updated_at": "2015-09-20T13:33:25.432+09:00",
  "groups": [

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

board[subject]=changed+subject&board[priority]=1004
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 154
Content-Type: application/json; charset=utf-8
ETag: W/"e5b7e4b7f01b1d46b641cfe31188df76"
Location: /api/v1/boards/1
Set-Cookie: request_method=PATCH; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 1464a31d-b77e-476a-aa7e-02f22797cbae
X-Runtime: 0.005937
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "changed subject",
  "priority": 1004,
  "created_at": "2015-09-20T13:33:25.442+09:00",
  "updated_at": "2015-09-20T13:33:25.446+09:00",
  "groups": [

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
X-Request-Id: b2e9ea11-7678-4b22-9ed6-5ac764a78cf1
X-Runtime: 0.002305
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
Content-Length: 193
Content-Type: application/json; charset=utf-8
ETag: W/"6bc024b16250d9d811d7bd368a5cb4fc"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 6e8672f0-34ba-47e0-b7ed-05912769a4b9
X-Runtime: 0.003178
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "ボード-7",
    "priority": 1008,
    "url": "http://www.example.com/api/v1/boards/1"
  },
  {
    "id": 2,
    "subject": "ボード-8",
    "priority": 1009,
    "url": "http://www.example.com/api/v1/boards/2"
  }
]
```

## GET /api/v1/boards/:board_id/groups
Returns board.

### Example

#### Request
```
GET /api/v1/boards/1/groups HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 292
Content-Type: application/json; charset=utf-8
ETag: W/"16c7f9c7240ebb6cfde14b5a8955f024"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 4bd3fd32-9898-48e9-a90a-72f00e8920ba
X-Runtime: 0.004328
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "グループ-1",
    "priority": 11,
    "url": "http://www.example.com/api/v1/groups/1"
  },
  {
    "id": 2,
    "subject": "グループ-2",
    "priority": 12,
    "url": "http://www.example.com/api/v1/groups/2"
  },
  {
    "id": 3,
    "subject": "グループ-3",
    "priority": 13,
    "url": "http://www.example.com/api/v1/groups/3"
  }
]
```
