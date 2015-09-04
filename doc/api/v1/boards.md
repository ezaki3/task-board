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
Content-Length: 153
Content-Type: application/json; charset=utf-8
ETag: W/"2ddc7785fdce7fcdc87f3e879da6cead"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: f265a080-fbb9-4939-999b-a5d96ea39011
X-Runtime: 0.027157
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "グループ-1",
  "groups": [

  ],
  "priority": 1001,
  "created_at": "2015-09-04T08:55:08.480+09:00",
  "updated_at": "2015-09-04T08:55:08.480+09:00"
}
```

## POST /api/v1/boards
Adds a new board.

### Example

#### Request
```
POST /api/v1/boards HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 74
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

board[subject]=%E3%82%B0%E3%83%AB%E3%83%BC%E3%83%97-2&board[priority]=1002
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 153
Content-Type: application/json; charset=utf-8
ETag: W/"07084e14cdf4f74ba5f8fa680c5e6cdf"
Location: /api/v1/boards/1
Set-Cookie: request_method=POST; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 0fae2f1f-e146-4a19-909d-9542cbcf7718
X-Runtime: 0.003689
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "グループ-2",
  "groups": [

  ],
  "priority": 1002,
  "created_at": "2015-09-04T08:55:08.525+09:00",
  "updated_at": "2015-09-04T08:55:08.525+09:00"
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
ETag: W/"07bcf334237088641c4b0862580e72e5"
Location: /api/v1/boards/1
Set-Cookie: request_method=PATCH; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 49dfbe2e-16bf-4fa0-b664-b16e4ec756f7
X-Runtime: 0.004485
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "changed subject",
  "groups": [

  ],
  "priority": 1004,
  "created_at": "2015-09-04T08:55:08.535+09:00",
  "updated_at": "2015-09-04T08:55:08.539+09:00"
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
X-Request-Id: 0ae7231c-d00d-413d-8cd3-49681a0f8f6e
X-Runtime: 0.001969
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
Content-Length: 223
Content-Type: application/json; charset=utf-8
ETag: W/"8927d40718c7597229d2a00c52dca49b"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 72157072-16d2-4dd4-82e3-e0a889c39a3f
X-Runtime: 0.004408
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "グループ-7",
    "groups": [

    ],
    "priority": 1008,
    "url": "http://www.example.com/api/v1/boards/1"
  },
  {
    "id": 2,
    "subject": "グループ-8",
    "groups": [

    ],
    "priority": 1009,
    "url": "http://www.example.com/api/v1/boards/2"
  }
]
```

## GET /api/v1/boards/:board_id/groups
Returns groups with thier board.

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
Content-Length: 259
Content-Type: application/json; charset=utf-8
ETag: W/"6be1353833a0010e70846b627b19e810"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 7649feb9-5ff2-4582-b868-99aa5d7c644b
X-Runtime: 0.006138
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "グループ-1",
    "board": {
      "id": 1,
      "subject": "グループ-9",
      "priority": 1010,
      "created_at": "2015-09-04T08:55:08.568+09:00",
      "updated_at": "2015-09-04T08:55:08.568+09:00"
    },
    "tasks": [

    ],
    "priority": 11,
    "url": "http://www.example.com/api/v1/groups/1"
  }
]
```
