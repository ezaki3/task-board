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
Content-Length: 314
Content-Type: application/json; charset=utf-8
ETag: W/"d38adfff5e7cdec5540bcd2a9d6a7003"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: ddc8c51c-9140-4dcd-b5d8-66f78be67608
X-Runtime: 0.002903
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "件名-3",
  "body": "本文-3",
  "group": {
    "id": 1,
    "subject": "グループ-13",
    "created_at": "2015-09-04T08:55:08.676+09:00",
    "updated_at": "2015-09-04T08:55:08.676+09:00",
    "priority": 24,
    "board_id": 1
  },
  "priority": 103,
  "created_at": "2015-09-04T08:55:08.677+09:00",
  "updated_at": "2015-09-04T08:55:08.677+09:00"
}
```

## POST /api/v1/tasks
Adds a task.

### Example

#### Request
```
POST /api/v1/tasks HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 85
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

task[subject]=%E4%BB%B6%E5%90%8D-4&task[body]=%E6%9C%AC%E6%96%87-4&task[priority]=104
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 165
Content-Type: application/json; charset=utf-8
ETag: W/"92fac508c37251be151c236628ec1335"
Location: /api/v1/tasks/1
Set-Cookie: request_method=POST; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: e24915d6-6685-490e-9269-8e7a1b958524
X-Runtime: 0.004319
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "件名-4",
  "body": "本文-4",
  "group": null,
  "priority": 104,
  "created_at": "2015-09-04T08:55:08.686+09:00",
  "updated_at": "2015-09-04T08:55:08.686+09:00"
}
```

## PATCH /api/v1/tasks/:id
Updates a task.

### Example

#### Request
```
PATCH /api/v1/tasks/1 HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 72
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

task[subject]=changed+subject&task[body]=changed+body&task[priority]=106
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 325
Content-Type: application/json; charset=utf-8
ETag: W/"6ca22668b9cccbce4642dc3714af9c20"
Location: /api/v1/tasks/1
Set-Cookie: request_method=PATCH; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: a48b1515-9a4a-4eb8-b22f-faedb8a4c9b8
X-Runtime: 0.004074
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "changed subject",
  "body": "changed body",
  "group": {
    "id": 1,
    "subject": "グループ-14",
    "created_at": "2015-09-04T08:55:08.697+09:00",
    "updated_at": "2015-09-04T08:55:08.697+09:00",
    "priority": 25,
    "board_id": 1
  },
  "priority": 106,
  "created_at": "2015-09-04T08:55:08.698+09:00",
  "updated_at": "2015-09-04T08:55:08.702+09:00"
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
X-Request-Id: 28be4651-9656-488c-b027-7112487b03d2
X-Runtime: 0.001858
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
Content-Length: 545
Content-Type: application/json; charset=utf-8
ETag: W/"8a5faf8e5ea7955b7befe7df391e3c55"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 7959c542-a511-437f-9ff5-762914fc7e82
X-Runtime: 0.003261
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "件名-9",
    "body": "本文-9",
    "group": {
      "id": 1,
      "subject": "グループ-18",
      "created_at": "2015-09-04T08:55:08.733+09:00",
      "updated_at": "2015-09-04T08:55:08.733+09:00",
      "priority": 29,
      "board_id": 1
    },
    "priority": 110,
    "url": "http://www.example.com/api/v1/tasks/1"
  },
  {
    "id": 2,
    "subject": "件名-10",
    "body": "本文-10",
    "group": {
      "id": 2,
      "subject": "グループ-19",
      "created_at": "2015-09-04T08:55:08.736+09:00",
      "updated_at": "2015-09-04T08:55:08.736+09:00",
      "priority": 30,
      "board_id": 2
    },
    "priority": 111,
    "url": "http://www.example.com/api/v1/tasks/2"
  }
]
```
