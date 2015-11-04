## GET /api/v1/tasks/:id
Returns a task.

### Example

#### Request
```
GET /api/v1/groups/1/tasks?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=TkpDOEs5Umsza1FuTVdWbndNVk91cElSbGR3UG9sNFRneFM0Z01FOU5KbXJFTUhreGsvZDF2SnBTRnhUQkI3dUhNbWIyeUdPVndhWS9rckhhQnhMM1E9PS0tMkZqMXBNd0hDR0ZVdzNoQW5nTmFjdz09--2c20c4c74d564d779849557b26cf76c23b139b43;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 223
Content-Type: application/json; charset=utf-8
ETag: W/"d3daedafa5d2268b962781f542d42c7b"
Set-Cookie: _task-board_session=Uy8xOWh2dVJwVWdWR3VzbW5GSTVyVmgvVnd3WjBoeFJ6M2pVVDU3bHNDdHI4QVIzcXE5dTc5Uk5EcmNIbGZsNUcrNUVrRlU4UjRHdzg4aXYwQUMrRXc9PS0tSWt5dGR1VHRSWFZjNkZOOXB3YXo1QT09--a4476b6df3b03a22607290cd61c3f8c641fd055b; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 32adc1a1-4fd1-4ca6-933f-16c00b07bb20
X-Runtime: 0.005466
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
Cookie: _task-board_session=TkpDOEs5Umsza1FuTVdWbndNVk91cElSbGR3UG9sNFRneFM0Z01FOU5KbXJFTUhreGsvZDF2SnBTRnhUQkI3dUhNbWIyeUdPVndhWS9rckhhQnhMM1E9PS0tMkZqMXBNd0hDR0ZVdzNoQW5nTmFjdz09--2c20c4c74d564d779849557b26cf76c23b139b43;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 223
Content-Type: application/json; charset=utf-8
ETag: W/"d3daedafa5d2268b962781f542d42c7b"
Set-Cookie: _task-board_session=Uy8xOWh2dVJwVWdWR3VzbW5GSTVyVmgvVnd3WjBoeFJ6M2pVVDU3bHNDdHI4QVIzcXE5dTc5Uk5EcmNIbGZsNUcrNUVrRlU4UjRHdzg4aXYwQUMrRXc9PS0tSWt5dGR1VHRSWFZjNkZOOXB3YXo1QT09--a4476b6df3b03a22607290cd61c3f8c641fd055b; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 32adc1a1-4fd1-4ca6-933f-16c00b07bb20
X-Runtime: 0.005466
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
Cookie: _task-board_session=TkpDOEs5Umsza1FuTVdWbndNVk91cElSbGR3UG9sNFRneFM0Z01FOU5KbXJFTUhreGsvZDF2SnBTRnhUQkI3dUhNbWIyeUdPVndhWS9rckhhQnhMM1E9PS0tMkZqMXBNd0hDR0ZVdzNoQW5nTmFjdz09--2c20c4c74d564d779849557b26cf76c23b139b43;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 223
Content-Type: application/json; charset=utf-8
ETag: W/"d3daedafa5d2268b962781f542d42c7b"
Set-Cookie: _task-board_session=Uy8xOWh2dVJwVWdWR3VzbW5GSTVyVmgvVnd3WjBoeFJ6M2pVVDU3bHNDdHI4QVIzcXE5dTc5Uk5EcmNIbGZsNUcrNUVrRlU4UjRHdzg4aXYwQUMrRXc9PS0tSWt5dGR1VHRSWFZjNkZOOXB3YXo1QT09--a4476b6df3b03a22607290cd61c3f8c641fd055b; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 32adc1a1-4fd1-4ca6-933f-16c00b07bb20
X-Runtime: 0.005466
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
Updates a task (but not user_id).

### Example

#### Request
```
GET /api/v1/groups/1/tasks?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=TkpDOEs5Umsza1FuTVdWbndNVk91cElSbGR3UG9sNFRneFM0Z01FOU5KbXJFTUhreGsvZDF2SnBTRnhUQkI3dUhNbWIyeUdPVndhWS9rckhhQnhMM1E9PS0tMkZqMXBNd0hDR0ZVdzNoQW5nTmFjdz09--2c20c4c74d564d779849557b26cf76c23b139b43;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 223
Content-Type: application/json; charset=utf-8
ETag: W/"d3daedafa5d2268b962781f542d42c7b"
Set-Cookie: _task-board_session=Uy8xOWh2dVJwVWdWR3VzbW5GSTVyVmgvVnd3WjBoeFJ6M2pVVDU3bHNDdHI4QVIzcXE5dTc5Uk5EcmNIbGZsNUcrNUVrRlU4UjRHdzg4aXYwQUMrRXc9PS0tSWt5dGR1VHRSWFZjNkZOOXB3YXo1QT09--a4476b6df3b03a22607290cd61c3f8c641fd055b; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 32adc1a1-4fd1-4ca6-933f-16c00b07bb20
X-Runtime: 0.005466
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
Cookie: _task-board_session=TkpDOEs5Umsza1FuTVdWbndNVk91cElSbGR3UG9sNFRneFM0Z01FOU5KbXJFTUhreGsvZDF2SnBTRnhUQkI3dUhNbWIyeUdPVndhWS9rckhhQnhMM1E9PS0tMkZqMXBNd0hDR0ZVdzNoQW5nTmFjdz09--2c20c4c74d564d779849557b26cf76c23b139b43;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 223
Content-Type: application/json; charset=utf-8
ETag: W/"d3daedafa5d2268b962781f542d42c7b"
Set-Cookie: _task-board_session=Uy8xOWh2dVJwVWdWR3VzbW5GSTVyVmgvVnd3WjBoeFJ6M2pVVDU3bHNDdHI4QVIzcXE5dTc5Uk5EcmNIbGZsNUcrNUVrRlU4UjRHdzg4aXYwQUMrRXc9PS0tSWt5dGR1VHRSWFZjNkZOOXB3YXo1QT09--a4476b6df3b03a22607290cd61c3f8c641fd055b; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 32adc1a1-4fd1-4ca6-933f-16c00b07bb20
X-Runtime: 0.005466
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
Cookie: _task-board_session=TkpDOEs5Umsza1FuTVdWbndNVk91cElSbGR3UG9sNFRneFM0Z01FOU5KbXJFTUhreGsvZDF2SnBTRnhUQkI3dUhNbWIyeUdPVndhWS9rckhhQnhMM1E9PS0tMkZqMXBNd0hDR0ZVdzNoQW5nTmFjdz09--2c20c4c74d564d779849557b26cf76c23b139b43;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 223
Content-Type: application/json; charset=utf-8
ETag: W/"d3daedafa5d2268b962781f542d42c7b"
Set-Cookie: _task-board_session=Uy8xOWh2dVJwVWdWR3VzbW5GSTVyVmgvVnd3WjBoeFJ6M2pVVDU3bHNDdHI4QVIzcXE5dTc5Uk5EcmNIbGZsNUcrNUVrRlU4UjRHdzg4aXYwQUMrRXc9PS0tSWt5dGR1VHRSWFZjNkZOOXB3YXo1QT09--a4476b6df3b03a22607290cd61c3f8c641fd055b; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 32adc1a1-4fd1-4ca6-933f-16c00b07bb20
X-Runtime: 0.005466
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
Cookie: _task-board_session=TkpDOEs5Umsza1FuTVdWbndNVk91cElSbGR3UG9sNFRneFM0Z01FOU5KbXJFTUhreGsvZDF2SnBTRnhUQkI3dUhNbWIyeUdPVndhWS9rckhhQnhMM1E9PS0tMkZqMXBNd0hDR0ZVdzNoQW5nTmFjdz09--2c20c4c74d564d779849557b26cf76c23b139b43;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 223
Content-Type: application/json; charset=utf-8
ETag: W/"d3daedafa5d2268b962781f542d42c7b"
Set-Cookie: _task-board_session=Uy8xOWh2dVJwVWdWR3VzbW5GSTVyVmgvVnd3WjBoeFJ6M2pVVDU3bHNDdHI4QVIzcXE5dTc5Uk5EcmNIbGZsNUcrNUVrRlU4UjRHdzg4aXYwQUMrRXc9PS0tSWt5dGR1VHRSWFZjNkZOOXB3YXo1QT09--a4476b6df3b03a22607290cd61c3f8c641fd055b; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 32adc1a1-4fd1-4ca6-933f-16c00b07bb20
X-Runtime: 0.005466
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
