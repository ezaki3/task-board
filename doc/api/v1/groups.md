## GET /api/v1/groups/:id
Retruns a group.

### Example

#### Request
```
GET /api/v1/boards/1/groups?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=QzAzY2N3TkhZZXhEMU5kMjlNVHM2VjlpYnU0Z2FTRHZ1RDJFbXJvc2FiRFdVV2libTE4TC9DampFbXRDaHFoTUxZTTZsb08reEd0T1BjMlAydmxEZVE9PS0tSTZTbGxJOCtFN0FZMmorMklWdFdodz09--937e5de25512a5c3edc9edea5ef84ac496d1f2ff;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 199
Content-Type: application/json; charset=utf-8
ETag: W/"6e06100cad7732ea72497686382d6874"
Set-Cookie: _task-board_session=endpOTk1VVBWZ2RpcDFKWnpTZXZJYzMwdWt3cTVPSGxQd0llaUJnbGwvaDdkNytkQlV2dVo4S1BCd0VzckgzVTlMRWtxQVZ1emJ6OFBhMEFOaXBMZFE9PS0tSjFyeElMQ210Y1pVMUVqZ3haa0tMZz09--e7a7b18e9c00731ef159509aaa0265683dd4d9a8; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 1f5d6a7c-fa52-45dd-aa93-887cfddfb22e
X-Runtime: 0.003839
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "グループ-122",
    "priority": 86,
    "url": "http://www.example.com/api/v1/groups/1"
  },
  {
    "id": 2,
    "subject": "グループ-123",
    "priority": 87,
    "url": "http://www.example.com/api/v1/groups/2"
  }
]
```

## GET /api/v1/boards/:board_id/groups
Adds a group.

### Example

#### Request
```
GET /api/v1/boards/1/groups?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=QzAzY2N3TkhZZXhEMU5kMjlNVHM2VjlpYnU0Z2FTRHZ1RDJFbXJvc2FiRFdVV2libTE4TC9DampFbXRDaHFoTUxZTTZsb08reEd0T1BjMlAydmxEZVE9PS0tSTZTbGxJOCtFN0FZMmorMklWdFdodz09--937e5de25512a5c3edc9edea5ef84ac496d1f2ff;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 199
Content-Type: application/json; charset=utf-8
ETag: W/"6e06100cad7732ea72497686382d6874"
Set-Cookie: _task-board_session=endpOTk1VVBWZ2RpcDFKWnpTZXZJYzMwdWt3cTVPSGxQd0llaUJnbGwvaDdkNytkQlV2dVo4S1BCd0VzckgzVTlMRWtxQVZ1emJ6OFBhMEFOaXBMZFE9PS0tSjFyeElMQ210Y1pVMUVqZ3haa0tMZz09--e7a7b18e9c00731ef159509aaa0265683dd4d9a8; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 1f5d6a7c-fa52-45dd-aa93-887cfddfb22e
X-Runtime: 0.003839
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "グループ-122",
    "priority": 86,
    "url": "http://www.example.com/api/v1/groups/1"
  },
  {
    "id": 2,
    "subject": "グループ-123",
    "priority": 87,
    "url": "http://www.example.com/api/v1/groups/2"
  }
]
```

## GET /api/v1/boards/:board_id/groups/dryrun
Returns ng and not creates.

### Example

#### Request
```
GET /api/v1/boards/1/groups?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=QzAzY2N3TkhZZXhEMU5kMjlNVHM2VjlpYnU0Z2FTRHZ1RDJFbXJvc2FiRFdVV2libTE4TC9DampFbXRDaHFoTUxZTTZsb08reEd0T1BjMlAydmxEZVE9PS0tSTZTbGxJOCtFN0FZMmorMklWdFdodz09--937e5de25512a5c3edc9edea5ef84ac496d1f2ff;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 199
Content-Type: application/json; charset=utf-8
ETag: W/"6e06100cad7732ea72497686382d6874"
Set-Cookie: _task-board_session=endpOTk1VVBWZ2RpcDFKWnpTZXZJYzMwdWt3cTVPSGxQd0llaUJnbGwvaDdkNytkQlV2dVo4S1BCd0VzckgzVTlMRWtxQVZ1emJ6OFBhMEFOaXBMZFE9PS0tSjFyeElMQ210Y1pVMUVqZ3haa0tMZz09--e7a7b18e9c00731ef159509aaa0265683dd4d9a8; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 1f5d6a7c-fa52-45dd-aa93-887cfddfb22e
X-Runtime: 0.003839
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "グループ-122",
    "priority": 86,
    "url": "http://www.example.com/api/v1/groups/1"
  },
  {
    "id": 2,
    "subject": "グループ-123",
    "priority": 87,
    "url": "http://www.example.com/api/v1/groups/2"
  }
]
```

## GET /api/v1/groups/:id
Updates a group.

### Example

#### Request
```
GET /api/v1/boards/1/groups?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=QzAzY2N3TkhZZXhEMU5kMjlNVHM2VjlpYnU0Z2FTRHZ1RDJFbXJvc2FiRFdVV2libTE4TC9DampFbXRDaHFoTUxZTTZsb08reEd0T1BjMlAydmxEZVE9PS0tSTZTbGxJOCtFN0FZMmorMklWdFdodz09--937e5de25512a5c3edc9edea5ef84ac496d1f2ff;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 199
Content-Type: application/json; charset=utf-8
ETag: W/"6e06100cad7732ea72497686382d6874"
Set-Cookie: _task-board_session=endpOTk1VVBWZ2RpcDFKWnpTZXZJYzMwdWt3cTVPSGxQd0llaUJnbGwvaDdkNytkQlV2dVo4S1BCd0VzckgzVTlMRWtxQVZ1emJ6OFBhMEFOaXBMZFE9PS0tSjFyeElMQ210Y1pVMUVqZ3haa0tMZz09--e7a7b18e9c00731ef159509aaa0265683dd4d9a8; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 1f5d6a7c-fa52-45dd-aa93-887cfddfb22e
X-Runtime: 0.003839
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "グループ-122",
    "priority": 86,
    "url": "http://www.example.com/api/v1/groups/1"
  },
  {
    "id": 2,
    "subject": "グループ-123",
    "priority": 87,
    "url": "http://www.example.com/api/v1/groups/2"
  }
]
```

## GET /api/v1/groups/:id/dryrun
Returns ng and not updates.

### Example

#### Request
```
GET /api/v1/boards/1/groups?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=QzAzY2N3TkhZZXhEMU5kMjlNVHM2VjlpYnU0Z2FTRHZ1RDJFbXJvc2FiRFdVV2libTE4TC9DampFbXRDaHFoTUxZTTZsb08reEd0T1BjMlAydmxEZVE9PS0tSTZTbGxJOCtFN0FZMmorMklWdFdodz09--937e5de25512a5c3edc9edea5ef84ac496d1f2ff;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 199
Content-Type: application/json; charset=utf-8
ETag: W/"6e06100cad7732ea72497686382d6874"
Set-Cookie: _task-board_session=endpOTk1VVBWZ2RpcDFKWnpTZXZJYzMwdWt3cTVPSGxQd0llaUJnbGwvaDdkNytkQlV2dVo4S1BCd0VzckgzVTlMRWtxQVZ1emJ6OFBhMEFOaXBMZFE9PS0tSjFyeElMQ210Y1pVMUVqZ3haa0tMZz09--e7a7b18e9c00731ef159509aaa0265683dd4d9a8; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 1f5d6a7c-fa52-45dd-aa93-887cfddfb22e
X-Runtime: 0.003839
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "グループ-122",
    "priority": 86,
    "url": "http://www.example.com/api/v1/groups/1"
  },
  {
    "id": 2,
    "subject": "グループ-123",
    "priority": 87,
    "url": "http://www.example.com/api/v1/groups/2"
  }
]
```

## GET /api/v1/groups/:id
Deletes a group.

### Example

#### Request
```
GET /api/v1/boards/1/groups?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=QzAzY2N3TkhZZXhEMU5kMjlNVHM2VjlpYnU0Z2FTRHZ1RDJFbXJvc2FiRFdVV2libTE4TC9DampFbXRDaHFoTUxZTTZsb08reEd0T1BjMlAydmxEZVE9PS0tSTZTbGxJOCtFN0FZMmorMklWdFdodz09--937e5de25512a5c3edc9edea5ef84ac496d1f2ff;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 199
Content-Type: application/json; charset=utf-8
ETag: W/"6e06100cad7732ea72497686382d6874"
Set-Cookie: _task-board_session=endpOTk1VVBWZ2RpcDFKWnpTZXZJYzMwdWt3cTVPSGxQd0llaUJnbGwvaDdkNytkQlV2dVo4S1BCd0VzckgzVTlMRWtxQVZ1emJ6OFBhMEFOaXBMZFE9PS0tSjFyeElMQ210Y1pVMUVqZ3haa0tMZz09--e7a7b18e9c00731ef159509aaa0265683dd4d9a8; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 1f5d6a7c-fa52-45dd-aa93-887cfddfb22e
X-Runtime: 0.003839
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "グループ-122",
    "priority": 86,
    "url": "http://www.example.com/api/v1/groups/1"
  },
  {
    "id": 2,
    "subject": "グループ-123",
    "priority": 87,
    "url": "http://www.example.com/api/v1/groups/2"
  }
]
```

## GET /api/v1/boards/:board_id/groups
Returns groups.

### Example

#### Request
```
GET /api/v1/boards/1/groups?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=QzAzY2N3TkhZZXhEMU5kMjlNVHM2VjlpYnU0Z2FTRHZ1RDJFbXJvc2FiRFdVV2libTE4TC9DampFbXRDaHFoTUxZTTZsb08reEd0T1BjMlAydmxEZVE9PS0tSTZTbGxJOCtFN0FZMmorMklWdFdodz09--937e5de25512a5c3edc9edea5ef84ac496d1f2ff;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 199
Content-Type: application/json; charset=utf-8
ETag: W/"6e06100cad7732ea72497686382d6874"
Set-Cookie: _task-board_session=endpOTk1VVBWZ2RpcDFKWnpTZXZJYzMwdWt3cTVPSGxQd0llaUJnbGwvaDdkNytkQlV2dVo4S1BCd0VzckgzVTlMRWtxQVZ1emJ6OFBhMEFOaXBMZFE9PS0tSjFyeElMQ210Y1pVMUVqZ3haa0tMZz09--e7a7b18e9c00731ef159509aaa0265683dd4d9a8; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 1f5d6a7c-fa52-45dd-aa93-887cfddfb22e
X-Runtime: 0.003839
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "グループ-122",
    "priority": 86,
    "url": "http://www.example.com/api/v1/groups/1"
  },
  {
    "id": 2,
    "subject": "グループ-123",
    "priority": 87,
    "url": "http://www.example.com/api/v1/groups/2"
  }
]
```
