## GET /api/v1/tasks/:id
Returns a task.

### Example

#### Request
```
GET /api/v1/groups/2/tasks?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=Smo0NEx1S0JqQktPZVRwY1YzTC9odmRxMmlJZldlUU9KMzhpSjJJUnJnNzZRTzB5Tml5U3JOeHhhTlZZb0tkM0JXMllXRGFNdEZ6bUp0VGc4cnJpYVE9PS0tNDBDbmlzYm5iYzVPc29PS043VCtaQT09--e1bc456a6792a2d138602d6352570ce2a0ca4156;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 249
Content-Type: application/json; charset=utf-8
ETag: W/"6e2ec8dab8309e23f44942eb5812851d"
Set-Cookie: _task-board_session=Y2Z5clFONEM1a0dMc253M3BCMFBKelFHejVjT0w3U3A2cjJXaGs0MGhZLzNjL0U2NGpFVzhreWJwZnlROCt6aGtZMm02cFo3dDk4SmFvYjloOUtUWlE9PS0tL3o4UE05SldFTlF3NG45bE5QYjIxQT09--df4b80a5ca1a30f13852c2e224f15f42c2de884d; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 49b77bb6-5763-4b69-a6c4-f9f11eed3df2
X-Runtime: 0.005707
X-XSS-Protection: 1; mode=block

[
  {
    "id": 3,
    "subject": "タスク-70",
    "body": "タスク本文\n70",
    "priority": 124,
    "url": "http://www.example.com/api/v1/tasks/3"
  },
  {
    "id": 4,
    "subject": "タスク-71",
    "body": "タスク本文\n71",
    "priority": 125,
    "url": "http://www.example.com/api/v1/tasks/4"
  }
]
```

## GET /api/v1/groups/:group_id/tasks
Adds a task.

### Example

#### Request
```
GET /api/v1/groups/2/tasks?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=Smo0NEx1S0JqQktPZVRwY1YzTC9odmRxMmlJZldlUU9KMzhpSjJJUnJnNzZRTzB5Tml5U3JOeHhhTlZZb0tkM0JXMllXRGFNdEZ6bUp0VGc4cnJpYVE9PS0tNDBDbmlzYm5iYzVPc29PS043VCtaQT09--e1bc456a6792a2d138602d6352570ce2a0ca4156;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 249
Content-Type: application/json; charset=utf-8
ETag: W/"6e2ec8dab8309e23f44942eb5812851d"
Set-Cookie: _task-board_session=Y2Z5clFONEM1a0dMc253M3BCMFBKelFHejVjT0w3U3A2cjJXaGs0MGhZLzNjL0U2NGpFVzhreWJwZnlROCt6aGtZMm02cFo3dDk4SmFvYjloOUtUWlE9PS0tL3o4UE05SldFTlF3NG45bE5QYjIxQT09--df4b80a5ca1a30f13852c2e224f15f42c2de884d; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 49b77bb6-5763-4b69-a6c4-f9f11eed3df2
X-Runtime: 0.005707
X-XSS-Protection: 1; mode=block

[
  {
    "id": 3,
    "subject": "タスク-70",
    "body": "タスク本文\n70",
    "priority": 124,
    "url": "http://www.example.com/api/v1/tasks/3"
  },
  {
    "id": 4,
    "subject": "タスク-71",
    "body": "タスク本文\n71",
    "priority": 125,
    "url": "http://www.example.com/api/v1/tasks/4"
  }
]
```

## GET /api/v1/groups/:group_id/tasks/dryrun
Returns ng and not creates.

### Example

#### Request
```
GET /api/v1/groups/2/tasks?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=Smo0NEx1S0JqQktPZVRwY1YzTC9odmRxMmlJZldlUU9KMzhpSjJJUnJnNzZRTzB5Tml5U3JOeHhhTlZZb0tkM0JXMllXRGFNdEZ6bUp0VGc4cnJpYVE9PS0tNDBDbmlzYm5iYzVPc29PS043VCtaQT09--e1bc456a6792a2d138602d6352570ce2a0ca4156;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 249
Content-Type: application/json; charset=utf-8
ETag: W/"6e2ec8dab8309e23f44942eb5812851d"
Set-Cookie: _task-board_session=Y2Z5clFONEM1a0dMc253M3BCMFBKelFHejVjT0w3U3A2cjJXaGs0MGhZLzNjL0U2NGpFVzhreWJwZnlROCt6aGtZMm02cFo3dDk4SmFvYjloOUtUWlE9PS0tL3o4UE05SldFTlF3NG45bE5QYjIxQT09--df4b80a5ca1a30f13852c2e224f15f42c2de884d; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 49b77bb6-5763-4b69-a6c4-f9f11eed3df2
X-Runtime: 0.005707
X-XSS-Protection: 1; mode=block

[
  {
    "id": 3,
    "subject": "タスク-70",
    "body": "タスク本文\n70",
    "priority": 124,
    "url": "http://www.example.com/api/v1/tasks/3"
  },
  {
    "id": 4,
    "subject": "タスク-71",
    "body": "タスク本文\n71",
    "priority": 125,
    "url": "http://www.example.com/api/v1/tasks/4"
  }
]
```

## GET /api/v1/tasks/:id
Updates a task.

### Example

#### Request
```
GET /api/v1/groups/2/tasks?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=Smo0NEx1S0JqQktPZVRwY1YzTC9odmRxMmlJZldlUU9KMzhpSjJJUnJnNzZRTzB5Tml5U3JOeHhhTlZZb0tkM0JXMllXRGFNdEZ6bUp0VGc4cnJpYVE9PS0tNDBDbmlzYm5iYzVPc29PS043VCtaQT09--e1bc456a6792a2d138602d6352570ce2a0ca4156;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 249
Content-Type: application/json; charset=utf-8
ETag: W/"6e2ec8dab8309e23f44942eb5812851d"
Set-Cookie: _task-board_session=Y2Z5clFONEM1a0dMc253M3BCMFBKelFHejVjT0w3U3A2cjJXaGs0MGhZLzNjL0U2NGpFVzhreWJwZnlROCt6aGtZMm02cFo3dDk4SmFvYjloOUtUWlE9PS0tL3o4UE05SldFTlF3NG45bE5QYjIxQT09--df4b80a5ca1a30f13852c2e224f15f42c2de884d; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 49b77bb6-5763-4b69-a6c4-f9f11eed3df2
X-Runtime: 0.005707
X-XSS-Protection: 1; mode=block

[
  {
    "id": 3,
    "subject": "タスク-70",
    "body": "タスク本文\n70",
    "priority": 124,
    "url": "http://www.example.com/api/v1/tasks/3"
  },
  {
    "id": 4,
    "subject": "タスク-71",
    "body": "タスク本文\n71",
    "priority": 125,
    "url": "http://www.example.com/api/v1/tasks/4"
  }
]
```

## GET /api/v1/tasks/:id/dryrun
Returns ng and not updates.

### Example

#### Request
```
GET /api/v1/groups/2/tasks?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=Smo0NEx1S0JqQktPZVRwY1YzTC9odmRxMmlJZldlUU9KMzhpSjJJUnJnNzZRTzB5Tml5U3JOeHhhTlZZb0tkM0JXMllXRGFNdEZ6bUp0VGc4cnJpYVE9PS0tNDBDbmlzYm5iYzVPc29PS043VCtaQT09--e1bc456a6792a2d138602d6352570ce2a0ca4156;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 249
Content-Type: application/json; charset=utf-8
ETag: W/"6e2ec8dab8309e23f44942eb5812851d"
Set-Cookie: _task-board_session=Y2Z5clFONEM1a0dMc253M3BCMFBKelFHejVjT0w3U3A2cjJXaGs0MGhZLzNjL0U2NGpFVzhreWJwZnlROCt6aGtZMm02cFo3dDk4SmFvYjloOUtUWlE9PS0tL3o4UE05SldFTlF3NG45bE5QYjIxQT09--df4b80a5ca1a30f13852c2e224f15f42c2de884d; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 49b77bb6-5763-4b69-a6c4-f9f11eed3df2
X-Runtime: 0.005707
X-XSS-Protection: 1; mode=block

[
  {
    "id": 3,
    "subject": "タスク-70",
    "body": "タスク本文\n70",
    "priority": 124,
    "url": "http://www.example.com/api/v1/tasks/3"
  },
  {
    "id": 4,
    "subject": "タスク-71",
    "body": "タスク本文\n71",
    "priority": 125,
    "url": "http://www.example.com/api/v1/tasks/4"
  }
]
```

## GET /api/v1/tasks/:id
Deletes a task.

### Example

#### Request
```
GET /api/v1/groups/2/tasks?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=Smo0NEx1S0JqQktPZVRwY1YzTC9odmRxMmlJZldlUU9KMzhpSjJJUnJnNzZRTzB5Tml5U3JOeHhhTlZZb0tkM0JXMllXRGFNdEZ6bUp0VGc4cnJpYVE9PS0tNDBDbmlzYm5iYzVPc29PS043VCtaQT09--e1bc456a6792a2d138602d6352570ce2a0ca4156;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 249
Content-Type: application/json; charset=utf-8
ETag: W/"6e2ec8dab8309e23f44942eb5812851d"
Set-Cookie: _task-board_session=Y2Z5clFONEM1a0dMc253M3BCMFBKelFHejVjT0w3U3A2cjJXaGs0MGhZLzNjL0U2NGpFVzhreWJwZnlROCt6aGtZMm02cFo3dDk4SmFvYjloOUtUWlE9PS0tL3o4UE05SldFTlF3NG45bE5QYjIxQT09--df4b80a5ca1a30f13852c2e224f15f42c2de884d; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 49b77bb6-5763-4b69-a6c4-f9f11eed3df2
X-Runtime: 0.005707
X-XSS-Protection: 1; mode=block

[
  {
    "id": 3,
    "subject": "タスク-70",
    "body": "タスク本文\n70",
    "priority": 124,
    "url": "http://www.example.com/api/v1/tasks/3"
  },
  {
    "id": 4,
    "subject": "タスク-71",
    "body": "タスク本文\n71",
    "priority": 125,
    "url": "http://www.example.com/api/v1/tasks/4"
  }
]
```

## GET /api/v1/groups/:group_id/tasks
Returns tasks.

### Example

#### Request
```
GET /api/v1/groups/2/tasks?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=Smo0NEx1S0JqQktPZVRwY1YzTC9odmRxMmlJZldlUU9KMzhpSjJJUnJnNzZRTzB5Tml5U3JOeHhhTlZZb0tkM0JXMllXRGFNdEZ6bUp0VGc4cnJpYVE9PS0tNDBDbmlzYm5iYzVPc29PS043VCtaQT09--e1bc456a6792a2d138602d6352570ce2a0ca4156;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 249
Content-Type: application/json; charset=utf-8
ETag: W/"6e2ec8dab8309e23f44942eb5812851d"
Set-Cookie: _task-board_session=Y2Z5clFONEM1a0dMc253M3BCMFBKelFHejVjT0w3U3A2cjJXaGs0MGhZLzNjL0U2NGpFVzhreWJwZnlROCt6aGtZMm02cFo3dDk4SmFvYjloOUtUWlE9PS0tL3o4UE05SldFTlF3NG45bE5QYjIxQT09--df4b80a5ca1a30f13852c2e224f15f42c2de884d; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 49b77bb6-5763-4b69-a6c4-f9f11eed3df2
X-Runtime: 0.005707
X-XSS-Protection: 1; mode=block

[
  {
    "id": 3,
    "subject": "タスク-70",
    "body": "タスク本文\n70",
    "priority": 124,
    "url": "http://www.example.com/api/v1/tasks/3"
  },
  {
    "id": 4,
    "subject": "タスク-71",
    "body": "タスク本文\n71",
    "priority": 125,
    "url": "http://www.example.com/api/v1/tasks/4"
  }
]
```
