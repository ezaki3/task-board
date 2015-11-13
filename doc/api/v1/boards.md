## GET /api/v1/boards/:id
Returns a board.

### Example

#### Request
```
GET /api/v1/boards?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=TjVXaHNDTFBIQ0w5Ti9FWmFNekxrUHA3dEV4cWJUT0Y2eFpIelNjc04ra0ZncktOTE5hbStod2JxYkxYWnJtVXMrMS8yTDE5T0EvUnlzY2tsVk9nZ1E9PS0tL0Yyc1pxUHNCM3FJeXo0bXpBM3pjUT09--1ccdda411763e7137a32d9327c89855abcfd67bd;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 197
Content-Type: application/json; charset=utf-8
ETag: W/"eaca11b0f628e7220dfbe8a08de89652"
Set-Cookie: _task-board_session=bWo0WFRZQVhSb00yY2dyTFRJS09Wc1FXT3hHZ0U2dnB4NGdiZW14N3M4ek1VdzdHbmJiMEFpemJPWDhneDBKTUxPdTdKZG55bXVzcUI2K1pQODMxTUE9PS0tU1I0V3lYNmtab2F5cUoyUTZkMkJ2dz09--9e8bf7a38d172daaf66eeddac689386d8e12221a; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: decc1748-731c-486e-b7af-f60f23b99cc7
X-Runtime: 0.003878
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "ボード-157",
    "priority": 1126,
    "url": "http://www.example.com/api/v1/boards/1"
  },
  {
    "id": 2,
    "subject": "ボード-158",
    "priority": 1127,
    "url": "http://www.example.com/api/v1/boards/2"
  }
]
```

## GET /api/v1/boards
Adds a new board.

### Example

#### Request
```
GET /api/v1/boards?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=TjVXaHNDTFBIQ0w5Ti9FWmFNekxrUHA3dEV4cWJUT0Y2eFpIelNjc04ra0ZncktOTE5hbStod2JxYkxYWnJtVXMrMS8yTDE5T0EvUnlzY2tsVk9nZ1E9PS0tL0Yyc1pxUHNCM3FJeXo0bXpBM3pjUT09--1ccdda411763e7137a32d9327c89855abcfd67bd;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 197
Content-Type: application/json; charset=utf-8
ETag: W/"eaca11b0f628e7220dfbe8a08de89652"
Set-Cookie: _task-board_session=bWo0WFRZQVhSb00yY2dyTFRJS09Wc1FXT3hHZ0U2dnB4NGdiZW14N3M4ek1VdzdHbmJiMEFpemJPWDhneDBKTUxPdTdKZG55bXVzcUI2K1pQODMxTUE9PS0tU1I0V3lYNmtab2F5cUoyUTZkMkJ2dz09--9e8bf7a38d172daaf66eeddac689386d8e12221a; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: decc1748-731c-486e-b7af-f60f23b99cc7
X-Runtime: 0.003878
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "ボード-157",
    "priority": 1126,
    "url": "http://www.example.com/api/v1/boards/1"
  },
  {
    "id": 2,
    "subject": "ボード-158",
    "priority": 1127,
    "url": "http://www.example.com/api/v1/boards/2"
  }
]
```

## GET /api/v1/boards/dryrun
Returns ng and not creates.

### Example

#### Request
```
GET /api/v1/boards?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=TjVXaHNDTFBIQ0w5Ti9FWmFNekxrUHA3dEV4cWJUT0Y2eFpIelNjc04ra0ZncktOTE5hbStod2JxYkxYWnJtVXMrMS8yTDE5T0EvUnlzY2tsVk9nZ1E9PS0tL0Yyc1pxUHNCM3FJeXo0bXpBM3pjUT09--1ccdda411763e7137a32d9327c89855abcfd67bd;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 197
Content-Type: application/json; charset=utf-8
ETag: W/"eaca11b0f628e7220dfbe8a08de89652"
Set-Cookie: _task-board_session=bWo0WFRZQVhSb00yY2dyTFRJS09Wc1FXT3hHZ0U2dnB4NGdiZW14N3M4ek1VdzdHbmJiMEFpemJPWDhneDBKTUxPdTdKZG55bXVzcUI2K1pQODMxTUE9PS0tU1I0V3lYNmtab2F5cUoyUTZkMkJ2dz09--9e8bf7a38d172daaf66eeddac689386d8e12221a; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: decc1748-731c-486e-b7af-f60f23b99cc7
X-Runtime: 0.003878
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "ボード-157",
    "priority": 1126,
    "url": "http://www.example.com/api/v1/boards/1"
  },
  {
    "id": 2,
    "subject": "ボード-158",
    "priority": 1127,
    "url": "http://www.example.com/api/v1/boards/2"
  }
]
```

## GET /api/v1/boards/:id
Updates a board.

### Example

#### Request
```
GET /api/v1/boards?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=TjVXaHNDTFBIQ0w5Ti9FWmFNekxrUHA3dEV4cWJUT0Y2eFpIelNjc04ra0ZncktOTE5hbStod2JxYkxYWnJtVXMrMS8yTDE5T0EvUnlzY2tsVk9nZ1E9PS0tL0Yyc1pxUHNCM3FJeXo0bXpBM3pjUT09--1ccdda411763e7137a32d9327c89855abcfd67bd;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 197
Content-Type: application/json; charset=utf-8
ETag: W/"eaca11b0f628e7220dfbe8a08de89652"
Set-Cookie: _task-board_session=bWo0WFRZQVhSb00yY2dyTFRJS09Wc1FXT3hHZ0U2dnB4NGdiZW14N3M4ek1VdzdHbmJiMEFpemJPWDhneDBKTUxPdTdKZG55bXVzcUI2K1pQODMxTUE9PS0tU1I0V3lYNmtab2F5cUoyUTZkMkJ2dz09--9e8bf7a38d172daaf66eeddac689386d8e12221a; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: decc1748-731c-486e-b7af-f60f23b99cc7
X-Runtime: 0.003878
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "ボード-157",
    "priority": 1126,
    "url": "http://www.example.com/api/v1/boards/1"
  },
  {
    "id": 2,
    "subject": "ボード-158",
    "priority": 1127,
    "url": "http://www.example.com/api/v1/boards/2"
  }
]
```

## GET /api/v1/boards/:id/dryrun
Returns ng and not updates.

### Example

#### Request
```
GET /api/v1/boards?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=TjVXaHNDTFBIQ0w5Ti9FWmFNekxrUHA3dEV4cWJUT0Y2eFpIelNjc04ra0ZncktOTE5hbStod2JxYkxYWnJtVXMrMS8yTDE5T0EvUnlzY2tsVk9nZ1E9PS0tL0Yyc1pxUHNCM3FJeXo0bXpBM3pjUT09--1ccdda411763e7137a32d9327c89855abcfd67bd;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 197
Content-Type: application/json; charset=utf-8
ETag: W/"eaca11b0f628e7220dfbe8a08de89652"
Set-Cookie: _task-board_session=bWo0WFRZQVhSb00yY2dyTFRJS09Wc1FXT3hHZ0U2dnB4NGdiZW14N3M4ek1VdzdHbmJiMEFpemJPWDhneDBKTUxPdTdKZG55bXVzcUI2K1pQODMxTUE9PS0tU1I0V3lYNmtab2F5cUoyUTZkMkJ2dz09--9e8bf7a38d172daaf66eeddac689386d8e12221a; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: decc1748-731c-486e-b7af-f60f23b99cc7
X-Runtime: 0.003878
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "ボード-157",
    "priority": 1126,
    "url": "http://www.example.com/api/v1/boards/1"
  },
  {
    "id": 2,
    "subject": "ボード-158",
    "priority": 1127,
    "url": "http://www.example.com/api/v1/boards/2"
  }
]
```

## GET /api/v1/boards/:id
Deletes a board.

### Example

#### Request
```
GET /api/v1/boards?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=TjVXaHNDTFBIQ0w5Ti9FWmFNekxrUHA3dEV4cWJUT0Y2eFpIelNjc04ra0ZncktOTE5hbStod2JxYkxYWnJtVXMrMS8yTDE5T0EvUnlzY2tsVk9nZ1E9PS0tL0Yyc1pxUHNCM3FJeXo0bXpBM3pjUT09--1ccdda411763e7137a32d9327c89855abcfd67bd;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 197
Content-Type: application/json; charset=utf-8
ETag: W/"eaca11b0f628e7220dfbe8a08de89652"
Set-Cookie: _task-board_session=bWo0WFRZQVhSb00yY2dyTFRJS09Wc1FXT3hHZ0U2dnB4NGdiZW14N3M4ek1VdzdHbmJiMEFpemJPWDhneDBKTUxPdTdKZG55bXVzcUI2K1pQODMxTUE9PS0tU1I0V3lYNmtab2F5cUoyUTZkMkJ2dz09--9e8bf7a38d172daaf66eeddac689386d8e12221a; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: decc1748-731c-486e-b7af-f60f23b99cc7
X-Runtime: 0.003878
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "ボード-157",
    "priority": 1126,
    "url": "http://www.example.com/api/v1/boards/1"
  },
  {
    "id": 2,
    "subject": "ボード-158",
    "priority": 1127,
    "url": "http://www.example.com/api/v1/boards/2"
  }
]
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
Cookie: _task-board_session=TjVXaHNDTFBIQ0w5Ti9FWmFNekxrUHA3dEV4cWJUT0Y2eFpIelNjc04ra0ZncktOTE5hbStod2JxYkxYWnJtVXMrMS8yTDE5T0EvUnlzY2tsVk9nZ1E9PS0tL0Yyc1pxUHNCM3FJeXo0bXpBM3pjUT09--1ccdda411763e7137a32d9327c89855abcfd67bd;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 197
Content-Type: application/json; charset=utf-8
ETag: W/"eaca11b0f628e7220dfbe8a08de89652"
Set-Cookie: _task-board_session=bWo0WFRZQVhSb00yY2dyTFRJS09Wc1FXT3hHZ0U2dnB4NGdiZW14N3M4ek1VdzdHbmJiMEFpemJPWDhneDBKTUxPdTdKZG55bXVzcUI2K1pQODMxTUE9PS0tU1I0V3lYNmtab2F5cUoyUTZkMkJ2dz09--9e8bf7a38d172daaf66eeddac689386d8e12221a; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: decc1748-731c-486e-b7af-f60f23b99cc7
X-Runtime: 0.003878
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "ボード-157",
    "priority": 1126,
    "url": "http://www.example.com/api/v1/boards/1"
  },
  {
    "id": 2,
    "subject": "ボード-158",
    "priority": 1127,
    "url": "http://www.example.com/api/v1/boards/2"
  }
]
```
