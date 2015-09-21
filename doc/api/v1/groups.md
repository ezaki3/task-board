## GET /api/v1/groups/:id
Retruns a group.

### Example

#### Request
```
GET /api/v1/groups/1?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 298
Content-Type: application/json; charset=utf-8
ETag: W/"05c1e09c46dd9fa075c5fc89f9dc670d"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 7e976664-39dc-4d2b-9c47-a993719112b0
X-Runtime: 0.009098
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "グループ-1",
  "priority": 11,
  "created_at": "2015-09-21T02:09:13.181+09:00",
  "updated_at": "2015-09-21T02:09:13.181+09:00",
  "board": {
    "id": 1,
    "subject": "ボード-12",
    "priority": 1014,
    "created_at": "2015-09-21T02:09:13.177+09:00",
    "updated_at": "2015-09-21T02:09:13.177+09:00"
  },
  "tasks": [

  ]
}
```

## POST /api/v1/boards/:board_id/groups
Adds a group.

### Example

#### Request
```
POST /api/v1/boards/1/groups HTTP/1.1
Accept: application/json
Content-Length: 65
Content-Type: application/json
Host: www.example.com

{
  "group": {
    "subject": "グループ-2",
    "priority": 12,
    "board_id": 1
  }
}
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 298
Content-Type: application/json; charset=utf-8
ETag: W/"e46a65fd2d7828f7424640a31fb0bbf8"
Location: /api/v1/groups/1
Set-Cookie: request_method=POST; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: af7fed92-66da-4b32-b7c3-4102d811dc7d
X-Runtime: 0.006429
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "グループ-2",
  "priority": 12,
  "created_at": "2015-09-21T02:09:13.203+09:00",
  "updated_at": "2015-09-21T02:09:13.203+09:00",
  "board": {
    "id": 1,
    "subject": "ボード-13",
    "priority": 1015,
    "created_at": "2015-09-21T02:09:13.197+09:00",
    "updated_at": "2015-09-21T02:09:13.197+09:00"
  },
  "tasks": [

  ]
}
```

## POST /api/v1/boards/:board_id/groups/dryrun
Returns ng and not creates.

### Example

#### Request
```
POST /api/v1/boards/1/groups/dryrun HTTP/1.1
Accept: application/json
Content-Length: 24
Content-Type: application/json
Host: www.example.com

{
  "group": {
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
X-Request-Id: 4328daa2-1db8-4eec-940a-bbea6992721a
X-Runtime: 0.002046
X-XSS-Protection: 1; mode=block

{
  "subject": [
    "can't be blank"
  ]
}
```

## PATCH /api/v1/groups/:id
Updates a group.

### Example

#### Request
```
PATCH /api/v1/groups/1 HTTP/1.1
Accept: application/json
Content-Length: 53
Content-Type: application/json
Host: www.example.com

{
  "group": {
    "subject": "changed subject",
    "priority": 15
  }
}
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 299
Content-Type: application/json; charset=utf-8
ETag: W/"12daac905cfb356ea8d88830c515fb34"
Location: /api/v1/groups/1
Set-Cookie: request_method=PATCH; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: e5f5d59f-a5f9-4467-8f37-23fe415b1acd
X-Runtime: 0.005584
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "changed subject",
  "priority": 15,
  "created_at": "2015-09-21T02:09:13.231+09:00",
  "updated_at": "2015-09-21T02:09:13.235+09:00",
  "board": {
    "id": 1,
    "subject": "ボード-17",
    "priority": 1019,
    "created_at": "2015-09-21T02:09:13.230+09:00",
    "updated_at": "2015-09-21T02:09:13.230+09:00"
  },
  "tasks": [

  ]
}
```

## PATCH /api/v1/groups/:id/dryrun
Returns ng and not updates.

### Example

#### Request
```
PATCH /api/v1/groups/1/dryrun HTTP/1.1
Accept: application/json
Content-Length: 24
Content-Type: application/json
Host: www.example.com

{
  "group": {
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
X-Request-Id: 293d33f1-810c-4ea7-a8f3-d5fb54f50797
X-Runtime: 0.002943
X-XSS-Protection: 1; mode=block

{
  "subject": [
    "can't be blank"
  ]
}
```

## DELETE /api/v1/groups/:id
Deletes a group.

### Example

#### Request
```
DELETE /api/v1/groups/1 HTTP/1.1
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
X-Request-Id: 40152199-e435-42c4-9b6a-92e7bdb52c38
X-Runtime: 0.002043
X-XSS-Protection: 1; mode=block
```

## GET /api/v1/boards/:board_id/groups
Returns groups.

### Example

#### Request
```
GET /api/v1/boards/1/groups?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 197
Content-Type: application/json; charset=utf-8
ETag: W/"7f007a2b90b7c9f23e41185084d33778"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 557f79e6-9102-45d9-8b5b-455a8e991602
X-Runtime: 0.003143
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "グループ-10",
    "priority": 22,
    "url": "http://www.example.com/api/v1/groups/1"
  },
  {
    "id": 2,
    "subject": "グループ-11",
    "priority": 23,
    "url": "http://www.example.com/api/v1/groups/2"
  }
]
```
