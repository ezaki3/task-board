## GET /api/v1/tasks/:id
Returns a task.

### Example

#### Request
```
GET /api/v1/tasks/1?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 301
Content-Type: application/json; charset=utf-8
ETag: W/"4e6217729d3a1e56c379bec4033bef83"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 11196fde-9f5f-4940-9d82-255940f0d273
X-Runtime: 0.006019
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "件名-1",
  "body": "本文-1",
  "priority": 101,
  "created_at": "2015-09-21T02:09:13.310+09:00",
  "updated_at": "2015-09-21T02:09:13.310+09:00",
  "group": {
    "id": 1,
    "subject": "グループ-14",
    "priority": 26,
    "created_at": "2015-09-21T02:09:13.308+09:00",
    "updated_at": "2015-09-21T02:09:13.308+09:00"
  }
}
```

## POST /api/v1/groups/:group_id/tasks
Adds a task.

### Example

#### Request
```
POST /api/v1/groups/1/tasks HTTP/1.1
Accept: application/json
Content-Length: 77
Content-Type: application/json
Host: www.example.com

{
  "task": {
    "subject": "件名-2",
    "body": "本文-2",
    "priority": 102,
    "group_id": 1
  }
}
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 301
Content-Type: application/json; charset=utf-8
ETag: W/"3fca31721cd52eabdcb7417ace143d84"
Location: /api/v1/tasks/1
Set-Cookie: request_method=POST; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 491b1740-debc-49b8-878c-0abd4f4feffe
X-Runtime: 0.004273
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "件名-2",
  "body": "本文-2",
  "priority": 102,
  "created_at": "2015-09-21T02:09:13.325+09:00",
  "updated_at": "2015-09-21T02:09:13.325+09:00",
  "group": {
    "id": 1,
    "subject": "グループ-15",
    "priority": 27,
    "created_at": "2015-09-21T02:09:13.322+09:00",
    "updated_at": "2015-09-21T02:09:13.322+09:00"
  }
}
```

## POST /api/v1/groups/:group_id/tasks/dryrun
Returns ng and not creates.

### Example

#### Request
```
POST /api/v1/groups/1/tasks/dryrun HTTP/1.1
Accept: application/json
Content-Length: 23
Content-Type: application/json
Host: www.example.com

{
  "task": {
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
X-Request-Id: 269bd9ed-1e34-4d80-a87c-9c61f864e4b1
X-Runtime: 0.002907
X-XSS-Protection: 1; mode=block

{
  "subject": [
    "can't be blank"
  ]
}
```

## PATCH /api/v1/tasks/:id
Updates a task.

### Example

#### Request
```
PATCH /api/v1/tasks/1 HTTP/1.1
Accept: application/json
Content-Length: 75
Content-Type: application/json
Host: www.example.com

{
  "task": {
    "subject": "changed subject",
    "body": "changed body",
    "priority": 105
  }
}
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 312
Content-Type: application/json; charset=utf-8
ETag: W/"e9430b4e8abee4e4d30795362c373101"
Location: /api/v1/tasks/1
Set-Cookie: request_method=PATCH; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 48d2ea99-5d62-4c66-a5f7-a4ed76844337
X-Runtime: 0.005595
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "changed subject",
  "body": "changed body",
  "priority": 105,
  "created_at": "2015-09-21T02:09:13.360+09:00",
  "updated_at": "2015-09-21T02:09:13.364+09:00",
  "group": {
    "id": 1,
    "subject": "グループ-19",
    "priority": 31,
    "created_at": "2015-09-21T02:09:13.359+09:00",
    "updated_at": "2015-09-21T02:09:13.359+09:00"
  }
}
```

## PATCH /api/v1/tasks/:id/dryrun
Returns ng and not updates.

### Example

#### Request
```
PATCH /api/v1/tasks/1/dryrun HTTP/1.1
Accept: application/json
Content-Length: 23
Content-Type: application/json
Host: www.example.com

{
  "task": {
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
X-Request-Id: 385a0119-723a-4f87-9895-61f161757513
X-Runtime: 0.002467
X-XSS-Protection: 1; mode=block

{
  "subject": [
    "can't be blank"
  ]
}
```

## DELETE /api/v1/tasks/:id
Deletes a task.

### Example

#### Request
```
DELETE /api/v1/tasks/1 HTTP/1.1
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
X-Request-Id: 40a7751c-2f70-42fc-99e9-7e0f6c2576e3
X-Runtime: 0.001969
X-XSS-Protection: 1; mode=block
```

## GET /api/v1/groups/:group_id/tasks
Returns tasks.

### Example

#### Request
```
GET /api/v1/groups/1/tasks?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 223
Content-Type: application/json; charset=utf-8
ETag: W/"ccd615f0a35d2ceb5703083e50663981"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: a88afc69-3201-479c-b242-7347f86e12c1
X-Runtime: 0.003151
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "件名-10",
    "body": "本文-10",
    "priority": 112,
    "url": "http://www.example.com/api/v1/tasks/1"
  },
  {
    "id": 2,
    "subject": "件名-11",
    "body": "本文-11",
    "priority": 113,
    "url": "http://www.example.com/api/v1/tasks/2"
  }
]
```
