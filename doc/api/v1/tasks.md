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
ETag: W/"c97553518cf19c58291cdb8c129c2efc"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 9395db4e-3469-4e38-bd02-68d8d40977f9
X-Runtime: 0.026209
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "件名-1",
  "body": "本文-1",
  "group": {
    "id": 1,
    "subject": "グループ-1",
    "created_at": "2015-08-09T15:05:55.898+09:00",
    "updated_at": "2015-08-09T15:05:55.898+09:00"
  },
  "created_at": "2015-08-09T15:05:55.906+09:00",
  "updated_at": "2015-08-09T15:05:55.906+09:00"
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

task[subject]=%E4%BB%B6%E5%90%8D-2&task[body]=%E6%9C%AC%E6%96%87-2
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 150
Content-Type: application/json; charset=utf-8
ETag: W/"6258f5b9034a934cbce5c75cadc61f34"
Location: http://www.example.com/api/v1/tasks/1
Set-Cookie: request_method=POST; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 3be3c22f-4a5b-4b01-b93c-7aaa005f9cde
X-Runtime: 0.003467
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "件名-2",
  "body": "本文-2",
  "group": null,
  "created_at": "2015-08-09T15:05:55.944+09:00",
  "updated_at": "2015-08-09T15:05:55.944+09:00"
}
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
ETag: W/"d72f7a4023cbf5f42ae01441e74572a1"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 93840418-6405-47b1-89d1-17194ff13fdf
X-Runtime: 0.004119
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "件名-3",
    "body": "本文-3",
    "group": {
      "id": 1,
      "subject": "グループ-2",
      "created_at": "2015-08-09T15:05:55.957+09:00",
      "updated_at": "2015-08-09T15:05:55.957+09:00"
    },
    "url": "http://www.example.com/api/v1/tasks/1"
  },
  {
    "id": 2,
    "subject": "件名-4",
    "body": "本文-4",
    "group": {
      "id": 2,
      "subject": "グループ-3",
      "created_at": "2015-08-09T15:05:55.959+09:00",
      "updated_at": "2015-08-09T15:05:55.959+09:00"
    },
    "url": "http://www.example.com/api/v1/tasks/2"
  }
]
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
X-Request-Id: 09d3713a-09e2-416f-a378-7180551482e5
X-Runtime: 0.001858
X-XSS-Protection: 1; mode=block
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
ETag: W/"4f59023e0cdd5595ad6db7917b0330ea"
Location: http://www.example.com/api/v1/tasks/1
Set-Cookie: request_method=PATCH; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 254fd51c-5125-4daf-acc3-893455f7a6e8
X-Runtime: 0.004678
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "changed subject",
  "body": "changed body",
  "group": {
    "id": 1,
    "subject": "グループ-7",
    "created_at": "2015-08-09T15:05:55.989+09:00",
    "updated_at": "2015-08-09T15:05:55.989+09:00"
  },
  "created_at": "2015-08-09T15:05:55.990+09:00",
  "updated_at": "2015-08-09T15:05:55.994+09:00"
}
```
