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
ETag: W/"d55f5bd1fd10a1d750f097adad654565"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: a2dc9a0b-44bb-423f-8a70-d9646a8ce8e5
X-Runtime: 0.006579
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "件名-1",
  "body": "本文-1",
  "priority": 101,
  "created_at": "2015-09-20T13:33:25.597+09:00",
  "updated_at": "2015-09-20T13:33:25.597+09:00",
  "group": {
    "id": 1,
    "subject": "グループ-12",
    "priority": 23,
    "created_at": "2015-09-20T13:33:25.595+09:00",
    "updated_at": "2015-09-20T13:33:25.595+09:00"
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
ETag: W/"a013a421798f61765329c65ee794e07d"
Location: /api/v1/tasks/1
Set-Cookie: request_method=POST; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 1890d5d4-0e5e-43e5-97e1-00c6ea790447
X-Runtime: 0.006349
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "件名-2",
  "body": "本文-2",
  "priority": 102,
  "created_at": "2015-09-20T13:33:25.613+09:00",
  "updated_at": "2015-09-20T13:33:25.613+09:00",
  "group": {
    "id": 1,
    "subject": "グループ-13",
    "priority": 24,
    "created_at": "2015-09-20T13:33:25.610+09:00",
    "updated_at": "2015-09-20T13:33:25.610+09:00"
  }
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

task[subject]=changed+subject&task[body]=changed+body&task[priority]=104
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 312
Content-Type: application/json; charset=utf-8
ETag: W/"7f506a7f36adb6242975263581da18d9"
Location: /api/v1/tasks/1
Set-Cookie: request_method=PATCH; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: e444fda8-8f74-4c27-892e-98faf7d1ff4c
X-Runtime: 0.004890
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "changed subject",
  "body": "changed body",
  "priority": 104,
  "created_at": "2015-09-20T13:33:25.634+09:00",
  "updated_at": "2015-09-20T13:33:25.638+09:00",
  "group": {
    "id": 1,
    "subject": "グループ-15",
    "priority": 26,
    "created_at": "2015-09-20T13:33:25.632+09:00",
    "updated_at": "2015-09-20T13:33:25.632+09:00"
  }
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
X-Request-Id: 30bf386a-2fd3-4982-9257-39ad2de53f26
X-Runtime: 0.002296
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
Content-Length: 219
Content-Type: application/json; charset=utf-8
ETag: W/"ebbeed44313cb1d96fcb31d713cf9590"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 4d1337d6-36fb-4d64-90a0-2e9df9a8184c
X-Runtime: 0.003298
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "件名-7",
    "body": "本文-7",
    "priority": 108,
    "url": "http://www.example.com/api/v1/tasks/1"
  },
  {
    "id": 2,
    "subject": "件名-8",
    "body": "本文-8",
    "priority": 109,
    "url": "http://www.example.com/api/v1/tasks/2"
  }
]
```
