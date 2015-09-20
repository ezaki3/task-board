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
Content-Length: 301
Content-Type: application/json; charset=utf-8
ETag: W/"32d17b37024ee6e62226a40a08a007ee"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 233efc95-5eca-4792-91fb-f54ea351da39
X-Runtime: 0.006485
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "件名-1",
  "body": "本文-1",
  "priority": 101,
  "created_at": "2015-09-21T00:20:19.633+09:00",
  "updated_at": "2015-09-21T00:20:19.633+09:00",
  "group": {
    "id": 1,
    "subject": "グループ-14",
    "priority": 26,
    "created_at": "2015-09-21T00:20:19.630+09:00",
    "updated_at": "2015-09-21T00:20:19.630+09:00"
  }
}
```

## POST /api/v1/groups/:group_id/tasks
Adds a task.

### Example

#### Request
```
POST /api/v1/groups/1/tasks HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 102
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

task[subject]=%E4%BB%B6%E5%90%8D-2&task[body]=%E6%9C%AC%E6%96%87-2&task[priority]=102&task[group_id]=1
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 301
Content-Type: application/json; charset=utf-8
ETag: W/"587d578e7ba19f3524c00e1cad6eb06b"
Location: /api/v1/tasks/1
Set-Cookie: request_method=POST; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 3e37c796-4afb-4239-a146-54966af56a0b
X-Runtime: 0.004749
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "件名-2",
  "body": "本文-2",
  "priority": 102,
  "created_at": "2015-09-21T00:20:19.649+09:00",
  "updated_at": "2015-09-21T00:20:19.649+09:00",
  "group": {
    "id": 1,
    "subject": "グループ-15",
    "priority": 27,
    "created_at": "2015-09-21T00:20:19.645+09:00",
    "updated_at": "2015-09-21T00:20:19.645+09:00"
  }
}
```

## POST /api/v1/groups/:group_id/tasks/dryrun
Returns ng and not creates.

### Example

#### Request
```
POST /api/v1/groups/1/tasks/dryrun HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 14
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

task[subject]=
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
X-Request-Id: 6c13beea-8223-4492-b598-ab8166ede2c7
X-Runtime: 0.002313
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
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 72
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

task[subject]=changed+subject&task[body]=changed+body&task[priority]=105
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 312
Content-Type: application/json; charset=utf-8
ETag: W/"03ccef39992349cb6e0243719952191c"
Location: /api/v1/tasks/1
Set-Cookie: request_method=PATCH; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 4ce569e0-54fe-486e-bb36-53645ec77403
X-Runtime: 0.005840
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "changed subject",
  "body": "changed body",
  "priority": 105,
  "created_at": "2015-09-21T00:20:19.685+09:00",
  "updated_at": "2015-09-21T00:20:19.690+09:00",
  "group": {
    "id": 1,
    "subject": "グループ-19",
    "priority": 31,
    "created_at": "2015-09-21T00:20:19.684+09:00",
    "updated_at": "2015-09-21T00:20:19.684+09:00"
  }
}
```

## PATCH /api/v1/tasks/:id/dryrun
Returns ng and not updates.

### Example

#### Request
```
PATCH /api/v1/tasks/1/dryrun HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 14
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

task[subject]=
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
X-Request-Id: 6fcacfbf-64c0-4c12-8b0e-f8ef85a24348
X-Runtime: 0.002637
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
X-Request-Id: 36146f17-6a2c-45dc-809c-294810ec65a3
X-Runtime: 0.003094
X-XSS-Protection: 1; mode=block
```

## GET /api/v1/groups/:group_id/tasks
Returns tasks.

### Example

#### Request
```
GET /api/v1/groups/1/tasks HTTP/1.1
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
ETag: W/"ccd615f0a35d2ceb5703083e50663981"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: faa58ab3-7bbe-4340-be21-26b66612b939
X-Runtime: 0.004461
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
