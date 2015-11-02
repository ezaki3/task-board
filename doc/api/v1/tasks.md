## GET /api/v1/tasks/:id
Returns a task.

### Example

#### Request
```
GET /api/v1/groups/1/tasks?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=QnUyaEN6SEloOFdTV01sMG1Geml5ZTFOZVozVGFOWlM2cE5nVFJWRjV5ME8vbDJXeGJlaGpJRHZRYlR0QjNLakVjMnN1NlhScWR1OUdpWjBZSnBHclE9PS0tYTBtc1JqcS9mallLUnNVM05MMFJ0UT09--8ffa5dec11d0db66503f5cbb018fa93fda02ad68;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 223
Content-Type: application/json; charset=utf-8
ETag: W/"d3daedafa5d2268b962781f542d42c7b"
Set-Cookie: _task-board_session=TWRZTHNlMnc0cG1EanVIejZWWTJLNC9IRHgvT3JxKzZmWWhBSGQ5c1dtNDVEVXRNZzJOZUlEMlhhemVGaS85d1dheHBiYlRMYmROeFNPQXNLaGJNL1E9PS0tR2JXR2UrTHpMeGZVTElpVVRqQUVYdz09--b8a02daa84507d8e2604e692d9d038b063cbbfc5; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: fca9bc24-077e-4ce0-9def-c210f66718e5
X-Runtime: 0.003909
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "件名-69",
    "body": "本文-69",
    "priority": 123,
    "url": "http://www.example.com/api/v1/tasks/1"
  },
  {
    "id": 2,
    "subject": "件名-70",
    "body": "本文-70",
    "priority": 124,
    "url": "http://www.example.com/api/v1/tasks/2"
  }
]
```

## GET /api/v1/groups/:group_id/tasks
Adds a task.

### Example

#### Request
```
GET /api/v1/groups/1/tasks?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=QnUyaEN6SEloOFdTV01sMG1Geml5ZTFOZVozVGFOWlM2cE5nVFJWRjV5ME8vbDJXeGJlaGpJRHZRYlR0QjNLakVjMnN1NlhScWR1OUdpWjBZSnBHclE9PS0tYTBtc1JqcS9mallLUnNVM05MMFJ0UT09--8ffa5dec11d0db66503f5cbb018fa93fda02ad68;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 223
Content-Type: application/json; charset=utf-8
ETag: W/"d3daedafa5d2268b962781f542d42c7b"
Set-Cookie: _task-board_session=TWRZTHNlMnc0cG1EanVIejZWWTJLNC9IRHgvT3JxKzZmWWhBSGQ5c1dtNDVEVXRNZzJOZUlEMlhhemVGaS85d1dheHBiYlRMYmROeFNPQXNLaGJNL1E9PS0tR2JXR2UrTHpMeGZVTElpVVRqQUVYdz09--b8a02daa84507d8e2604e692d9d038b063cbbfc5; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: fca9bc24-077e-4ce0-9def-c210f66718e5
X-Runtime: 0.003909
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "件名-69",
    "body": "本文-69",
    "priority": 123,
    "url": "http://www.example.com/api/v1/tasks/1"
  },
  {
    "id": 2,
    "subject": "件名-70",
    "body": "本文-70",
    "priority": 124,
    "url": "http://www.example.com/api/v1/tasks/2"
  }
]
```

## GET /api/v1/groups/:group_id/tasks/dryrun
Returns ng and not creates.

### Example

#### Request
```
GET /api/v1/groups/1/tasks?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=QnUyaEN6SEloOFdTV01sMG1Geml5ZTFOZVozVGFOWlM2cE5nVFJWRjV5ME8vbDJXeGJlaGpJRHZRYlR0QjNLakVjMnN1NlhScWR1OUdpWjBZSnBHclE9PS0tYTBtc1JqcS9mallLUnNVM05MMFJ0UT09--8ffa5dec11d0db66503f5cbb018fa93fda02ad68;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 223
Content-Type: application/json; charset=utf-8
ETag: W/"d3daedafa5d2268b962781f542d42c7b"
Set-Cookie: _task-board_session=TWRZTHNlMnc0cG1EanVIejZWWTJLNC9IRHgvT3JxKzZmWWhBSGQ5c1dtNDVEVXRNZzJOZUlEMlhhemVGaS85d1dheHBiYlRMYmROeFNPQXNLaGJNL1E9PS0tR2JXR2UrTHpMeGZVTElpVVRqQUVYdz09--b8a02daa84507d8e2604e692d9d038b063cbbfc5; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: fca9bc24-077e-4ce0-9def-c210f66718e5
X-Runtime: 0.003909
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "件名-69",
    "body": "本文-69",
    "priority": 123,
    "url": "http://www.example.com/api/v1/tasks/1"
  },
  {
    "id": 2,
    "subject": "件名-70",
    "body": "本文-70",
    "priority": 124,
    "url": "http://www.example.com/api/v1/tasks/2"
  }
]
```

## GET /api/v1/tasks/:id
Updates a task.

### Example

#### Request
```
GET /api/v1/groups/1/tasks?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=QnUyaEN6SEloOFdTV01sMG1Geml5ZTFOZVozVGFOWlM2cE5nVFJWRjV5ME8vbDJXeGJlaGpJRHZRYlR0QjNLakVjMnN1NlhScWR1OUdpWjBZSnBHclE9PS0tYTBtc1JqcS9mallLUnNVM05MMFJ0UT09--8ffa5dec11d0db66503f5cbb018fa93fda02ad68;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 223
Content-Type: application/json; charset=utf-8
ETag: W/"d3daedafa5d2268b962781f542d42c7b"
Set-Cookie: _task-board_session=TWRZTHNlMnc0cG1EanVIejZWWTJLNC9IRHgvT3JxKzZmWWhBSGQ5c1dtNDVEVXRNZzJOZUlEMlhhemVGaS85d1dheHBiYlRMYmROeFNPQXNLaGJNL1E9PS0tR2JXR2UrTHpMeGZVTElpVVRqQUVYdz09--b8a02daa84507d8e2604e692d9d038b063cbbfc5; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: fca9bc24-077e-4ce0-9def-c210f66718e5
X-Runtime: 0.003909
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "件名-69",
    "body": "本文-69",
    "priority": 123,
    "url": "http://www.example.com/api/v1/tasks/1"
  },
  {
    "id": 2,
    "subject": "件名-70",
    "body": "本文-70",
    "priority": 124,
    "url": "http://www.example.com/api/v1/tasks/2"
  }
]
```

## GET /api/v1/tasks/:id/dryrun
Returns ng and not updates.

### Example

#### Request
```
GET /api/v1/groups/1/tasks?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=QnUyaEN6SEloOFdTV01sMG1Geml5ZTFOZVozVGFOWlM2cE5nVFJWRjV5ME8vbDJXeGJlaGpJRHZRYlR0QjNLakVjMnN1NlhScWR1OUdpWjBZSnBHclE9PS0tYTBtc1JqcS9mallLUnNVM05MMFJ0UT09--8ffa5dec11d0db66503f5cbb018fa93fda02ad68;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 223
Content-Type: application/json; charset=utf-8
ETag: W/"d3daedafa5d2268b962781f542d42c7b"
Set-Cookie: _task-board_session=TWRZTHNlMnc0cG1EanVIejZWWTJLNC9IRHgvT3JxKzZmWWhBSGQ5c1dtNDVEVXRNZzJOZUlEMlhhemVGaS85d1dheHBiYlRMYmROeFNPQXNLaGJNL1E9PS0tR2JXR2UrTHpMeGZVTElpVVRqQUVYdz09--b8a02daa84507d8e2604e692d9d038b063cbbfc5; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: fca9bc24-077e-4ce0-9def-c210f66718e5
X-Runtime: 0.003909
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "件名-69",
    "body": "本文-69",
    "priority": 123,
    "url": "http://www.example.com/api/v1/tasks/1"
  },
  {
    "id": 2,
    "subject": "件名-70",
    "body": "本文-70",
    "priority": 124,
    "url": "http://www.example.com/api/v1/tasks/2"
  }
]
```

## GET /api/v1/tasks/:id
Deletes a task.

### Example

#### Request
```
GET /api/v1/groups/1/tasks?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=QnUyaEN6SEloOFdTV01sMG1Geml5ZTFOZVozVGFOWlM2cE5nVFJWRjV5ME8vbDJXeGJlaGpJRHZRYlR0QjNLakVjMnN1NlhScWR1OUdpWjBZSnBHclE9PS0tYTBtc1JqcS9mallLUnNVM05MMFJ0UT09--8ffa5dec11d0db66503f5cbb018fa93fda02ad68;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 223
Content-Type: application/json; charset=utf-8
ETag: W/"d3daedafa5d2268b962781f542d42c7b"
Set-Cookie: _task-board_session=TWRZTHNlMnc0cG1EanVIejZWWTJLNC9IRHgvT3JxKzZmWWhBSGQ5c1dtNDVEVXRNZzJOZUlEMlhhemVGaS85d1dheHBiYlRMYmROeFNPQXNLaGJNL1E9PS0tR2JXR2UrTHpMeGZVTElpVVRqQUVYdz09--b8a02daa84507d8e2604e692d9d038b063cbbfc5; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: fca9bc24-077e-4ce0-9def-c210f66718e5
X-Runtime: 0.003909
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "件名-69",
    "body": "本文-69",
    "priority": 123,
    "url": "http://www.example.com/api/v1/tasks/1"
  },
  {
    "id": 2,
    "subject": "件名-70",
    "body": "本文-70",
    "priority": 124,
    "url": "http://www.example.com/api/v1/tasks/2"
  }
]
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
Cookie: _task-board_session=QnUyaEN6SEloOFdTV01sMG1Geml5ZTFOZVozVGFOWlM2cE5nVFJWRjV5ME8vbDJXeGJlaGpJRHZRYlR0QjNLakVjMnN1NlhScWR1OUdpWjBZSnBHclE9PS0tYTBtc1JqcS9mallLUnNVM05MMFJ0UT09--8ffa5dec11d0db66503f5cbb018fa93fda02ad68;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 223
Content-Type: application/json; charset=utf-8
ETag: W/"d3daedafa5d2268b962781f542d42c7b"
Set-Cookie: _task-board_session=TWRZTHNlMnc0cG1EanVIejZWWTJLNC9IRHgvT3JxKzZmWWhBSGQ5c1dtNDVEVXRNZzJOZUlEMlhhemVGaS85d1dheHBiYlRMYmROeFNPQXNLaGJNL1E9PS0tR2JXR2UrTHpMeGZVTElpVVRqQUVYdz09--b8a02daa84507d8e2604e692d9d038b063cbbfc5; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: fca9bc24-077e-4ce0-9def-c210f66718e5
X-Runtime: 0.003909
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "件名-69",
    "body": "本文-69",
    "priority": 123,
    "url": "http://www.example.com/api/v1/tasks/1"
  },
  {
    "id": 2,
    "subject": "件名-70",
    "body": "本文-70",
    "priority": 124,
    "url": "http://www.example.com/api/v1/tasks/2"
  }
]
```
