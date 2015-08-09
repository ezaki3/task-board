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
ETag: W/"b7ecc35f8422fc0645ab07bc23c4f65e"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: d1c2753e-9e9d-42a0-bcc9-c56563ce9859
X-Runtime: 0.020887
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "件名-1",
    "body": "本文-1",
    "group": {
      "id": 1,
      "subject": "グループ-1",
      "created_at": "2015-08-09T15:45:14.666+09:00",
      "updated_at": "2015-08-09T15:45:14.666+09:00"
    },
    "url": "http://www.example.com/api/v1/tasks/1"
  },
  {
    "id": 2,
    "subject": "件名-2",
    "body": "本文-2",
    "group": {
      "id": 2,
      "subject": "グループ-2",
      "created_at": "2015-08-09T15:45:14.673+09:00",
      "updated_at": "2015-08-09T15:45:14.673+09:00"
    },
    "url": "http://www.example.com/api/v1/tasks/2"
  }
]
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

task[subject]=%E4%BB%B6%E5%90%8D-3&task[body]=%E6%9C%AC%E6%96%87-3
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 150
Content-Type: application/json; charset=utf-8
ETag: W/"6b941c6b46f6006a0a23f94e443a8056"
Location: http://www.example.com/api/v1/tasks/1
Set-Cookie: request_method=POST; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 7ebdb8cd-84e3-41c7-b236-8c8719153422
X-Runtime: 0.003672
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "件名-3",
  "body": "本文-3",
  "group": null,
  "created_at": "2015-08-09T15:45:14.702+09:00",
  "updated_at": "2015-08-09T15:45:14.702+09:00"
}
```

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
ETag: W/"4e43d00fb690043131ae7b9eabf681b7"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: efe63950-d4a3-41e0-8705-fcc5b1c64f14
X-Runtime: 0.002382
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "件名-4",
  "body": "本文-4",
  "group": {
    "id": 1,
    "subject": "グループ-3",
    "created_at": "2015-08-09T15:45:14.718+09:00",
    "updated_at": "2015-08-09T15:45:14.718+09:00"
  },
  "created_at": "2015-08-09T15:45:14.719+09:00",
  "updated_at": "2015-08-09T15:45:14.719+09:00"
}
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
ETag: W/"97886f40f3ba067577aca96689f4e0e8"
Location: http://www.example.com/api/v1/tasks/1
Set-Cookie: request_method=PATCH; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: cb85eff9-157c-49e3-9eba-f0a691c90ca6
X-Runtime: 0.004471
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "changed subject",
  "body": "changed body",
  "group": {
    "id": 1,
    "subject": "グループ-4",
    "created_at": "2015-08-09T15:45:14.724+09:00",
    "updated_at": "2015-08-09T15:45:14.724+09:00"
  },
  "created_at": "2015-08-09T15:45:14.725+09:00",
  "updated_at": "2015-08-09T15:45:14.729+09:00"
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
X-Request-Id: 307a40bb-0f54-4db2-a198-53004115a5aa
X-Runtime: 0.001818
X-XSS-Protection: 1; mode=block
```
