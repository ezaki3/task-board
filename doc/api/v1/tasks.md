## GET /api/v1/tasks/:id
Returns a task.

### Example

#### Request
```
GET /api/v1/tasks/1 HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 271
Content-Type: application/json; charset=utf-8
ETag: W/"5d584a06e341dcb5a5765866f3a7757e"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: c1927e43-8ac2-4103-a68f-10de37d7c39c
X-Runtime: 0.013080
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "件名-1",
  "body": "本文-1",
  "group": {
    "id": 1,
    "subject": "グループ-1",
    "created_at": "2015-08-23T20:21:05.231+09:00",
    "updated_at": "2015-08-23T20:21:05.231+09:00"
  },
  "created_at": "2015-08-23T20:21:05.239+09:00",
  "updated_at": "2015-08-23T20:21:05.239+09:00"
}
```

## DELETE /api/v1/tasks/:id
Deletes a task.

### Example

#### Request
```
DELETE /api/v1/tasks/1 HTTP/1.1
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
X-Request-Id: 0900a426-171a-4912-9cdb-7f24983c3387
X-Runtime: 0.003928
X-XSS-Protection: 1; mode=block
```

## GET /api/v1/tasks
Returns tasks.

### Example

#### Request
```
GET /api/v1/tasks HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 457
Content-Type: application/json; charset=utf-8
ETag: W/"16c90b6ccfe20cdef65b451a18708517"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 7bc5d3ab-3471-4387-9ade-f05066291c01
X-Runtime: 0.005155
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "件名-4",
    "body": "本文-4",
    "group": {
      "id": 1,
      "subject": "グループ-4",
      "created_at": "2015-08-23T20:21:05.282+09:00",
      "updated_at": "2015-08-23T20:21:05.282+09:00"
    },
    "url": "http://www.example.com/api/v1/tasks/1"
  },
  {
    "id": 2,
    "subject": "件名-5",
    "body": "本文-5",
    "group": {
      "id": 2,
      "subject": "グループ-5",
      "created_at": "2015-08-23T20:21:05.290+09:00",
      "updated_at": "2015-08-23T20:21:05.290+09:00"
    },
    "url": "http://www.example.com/api/v1/tasks/2"
  }
]
```

## PATCH /api/v1/tasks/:id
Updates a task.

### Example

#### Request
```
PATCH /api/v1/tasks/1 HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 53
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

task[subject]=changed+subject&task[body]=changed+body
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 282
Content-Type: application/json; charset=utf-8
ETag: W/"feb2c22f39add47d15b9c7a8181ccdac"
Location: /api/v1/tasks/1
Set-Cookie: request_method=PATCH; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: e3c91afe-5b8b-4e99-9545-75c7fb0dd12f
X-Runtime: 0.006185
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "changed subject",
  "body": "changed body",
  "group": {
    "id": 1,
    "subject": "グループ-7",
    "created_at": "2015-08-23T20:21:05.323+09:00",
    "updated_at": "2015-08-23T20:21:05.323+09:00"
  },
  "created_at": "2015-08-23T20:21:05.325+09:00",
  "updated_at": "2015-08-23T20:21:05.330+09:00"
}
```

## POST /api/v1/tasks
Adds a task.

### Example

#### Request
```
POST /api/v1/tasks HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 66
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

task[subject]=%E4%BB%B6%E5%90%8D-8&task[body]=%E6%9C%AC%E6%96%87-8
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 150
Content-Type: application/json; charset=utf-8
ETag: W/"cfb6442c3959fc1523f1443cf87c224b"
Location: /api/v1/tasks/1
Set-Cookie: request_method=POST; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 32a6e56f-ba59-4062-9ffd-555b71926f9c
X-Runtime: 0.007498
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "件名-8",
  "body": "本文-8",
  "group": null,
  "created_at": "2015-08-23T20:21:05.353+09:00",
  "updated_at": "2015-08-23T20:21:05.353+09:00"
}
```
