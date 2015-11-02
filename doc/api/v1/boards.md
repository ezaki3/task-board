## GET /api/v1/boards/:id
Returns a board.

### Example

#### Request
```
GET /api/v1/boards?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=YXEycmxmS21UZlI4UEZ4Z1o3ckRyU3o0eVpMRk9HZWNDSWY2STFINUtTL21LZnlNQ2trc2NrYnJaY294VFNaZGVTcXBHZURIMDI4VGd6WmtoZ1NxaFE9PS0td2M2VTQ2QjJqcFhmTWRLZUh6OFE3Zz09--c203c53f779833f3c825b7feaf7fb063271c3b02;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 197
Content-Type: application/json; charset=utf-8
ETag: W/"b50baa0458bc842dfad644193d4005ca"
Set-Cookie: _task-board_session=NzJtTG4wUWtFcXJJMVg5UTRtQkpydUxKRVV6WFY2b3kydHZ5dWV0ZEd6Szh5MGtFWklSS3phZDhEQ0M2OVg2WUYwWlFCY290QVRGVTcvNDlvSnM0c2c9PS0tQVVHeWlRRmUyY3UyazVmYXJUSktMUT09--41af14be0238a1450e5264cca82696c70a2d82e9; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 29494c98-b377-44eb-8e94-da5db09cb6f9
X-Runtime: 0.003567
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "ボード-153",
    "priority": 1122,
    "url": "http://www.example.com/api/v1/boards/1"
  },
  {
    "id": 2,
    "subject": "ボード-154",
    "priority": 1123,
    "url": "http://www.example.com/api/v1/boards/2"
  }
]
```

## GET /api/v1/boards
Adds a new board.

### Example

#### Request
```
GET /api/v1/boards?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=YXEycmxmS21UZlI4UEZ4Z1o3ckRyU3o0eVpMRk9HZWNDSWY2STFINUtTL21LZnlNQ2trc2NrYnJaY294VFNaZGVTcXBHZURIMDI4VGd6WmtoZ1NxaFE9PS0td2M2VTQ2QjJqcFhmTWRLZUh6OFE3Zz09--c203c53f779833f3c825b7feaf7fb063271c3b02;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 197
Content-Type: application/json; charset=utf-8
ETag: W/"b50baa0458bc842dfad644193d4005ca"
Set-Cookie: _task-board_session=NzJtTG4wUWtFcXJJMVg5UTRtQkpydUxKRVV6WFY2b3kydHZ5dWV0ZEd6Szh5MGtFWklSS3phZDhEQ0M2OVg2WUYwWlFCY290QVRGVTcvNDlvSnM0c2c9PS0tQVVHeWlRRmUyY3UyazVmYXJUSktMUT09--41af14be0238a1450e5264cca82696c70a2d82e9; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 29494c98-b377-44eb-8e94-da5db09cb6f9
X-Runtime: 0.003567
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "ボード-153",
    "priority": 1122,
    "url": "http://www.example.com/api/v1/boards/1"
  },
  {
    "id": 2,
    "subject": "ボード-154",
    "priority": 1123,
    "url": "http://www.example.com/api/v1/boards/2"
  }
]
```

## GET /api/v1/boards/dryrun
Returns ng and not creates.

### Example

#### Request
```
GET /api/v1/boards?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=YXEycmxmS21UZlI4UEZ4Z1o3ckRyU3o0eVpMRk9HZWNDSWY2STFINUtTL21LZnlNQ2trc2NrYnJaY294VFNaZGVTcXBHZURIMDI4VGd6WmtoZ1NxaFE9PS0td2M2VTQ2QjJqcFhmTWRLZUh6OFE3Zz09--c203c53f779833f3c825b7feaf7fb063271c3b02;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 197
Content-Type: application/json; charset=utf-8
ETag: W/"b50baa0458bc842dfad644193d4005ca"
Set-Cookie: _task-board_session=NzJtTG4wUWtFcXJJMVg5UTRtQkpydUxKRVV6WFY2b3kydHZ5dWV0ZEd6Szh5MGtFWklSS3phZDhEQ0M2OVg2WUYwWlFCY290QVRGVTcvNDlvSnM0c2c9PS0tQVVHeWlRRmUyY3UyazVmYXJUSktMUT09--41af14be0238a1450e5264cca82696c70a2d82e9; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 29494c98-b377-44eb-8e94-da5db09cb6f9
X-Runtime: 0.003567
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "ボード-153",
    "priority": 1122,
    "url": "http://www.example.com/api/v1/boards/1"
  },
  {
    "id": 2,
    "subject": "ボード-154",
    "priority": 1123,
    "url": "http://www.example.com/api/v1/boards/2"
  }
]
```

## GET /api/v1/boards/:id
Updates a board.

### Example

#### Request
```
GET /api/v1/boards?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=YXEycmxmS21UZlI4UEZ4Z1o3ckRyU3o0eVpMRk9HZWNDSWY2STFINUtTL21LZnlNQ2trc2NrYnJaY294VFNaZGVTcXBHZURIMDI4VGd6WmtoZ1NxaFE9PS0td2M2VTQ2QjJqcFhmTWRLZUh6OFE3Zz09--c203c53f779833f3c825b7feaf7fb063271c3b02;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 197
Content-Type: application/json; charset=utf-8
ETag: W/"b50baa0458bc842dfad644193d4005ca"
Set-Cookie: _task-board_session=NzJtTG4wUWtFcXJJMVg5UTRtQkpydUxKRVV6WFY2b3kydHZ5dWV0ZEd6Szh5MGtFWklSS3phZDhEQ0M2OVg2WUYwWlFCY290QVRGVTcvNDlvSnM0c2c9PS0tQVVHeWlRRmUyY3UyazVmYXJUSktMUT09--41af14be0238a1450e5264cca82696c70a2d82e9; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 29494c98-b377-44eb-8e94-da5db09cb6f9
X-Runtime: 0.003567
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "ボード-153",
    "priority": 1122,
    "url": "http://www.example.com/api/v1/boards/1"
  },
  {
    "id": 2,
    "subject": "ボード-154",
    "priority": 1123,
    "url": "http://www.example.com/api/v1/boards/2"
  }
]
```

## GET /api/v1/boards/:id/dryrun
Returns ng and not updates.

### Example

#### Request
```
GET /api/v1/boards?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=YXEycmxmS21UZlI4UEZ4Z1o3ckRyU3o0eVpMRk9HZWNDSWY2STFINUtTL21LZnlNQ2trc2NrYnJaY294VFNaZGVTcXBHZURIMDI4VGd6WmtoZ1NxaFE9PS0td2M2VTQ2QjJqcFhmTWRLZUh6OFE3Zz09--c203c53f779833f3c825b7feaf7fb063271c3b02;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 197
Content-Type: application/json; charset=utf-8
ETag: W/"b50baa0458bc842dfad644193d4005ca"
Set-Cookie: _task-board_session=NzJtTG4wUWtFcXJJMVg5UTRtQkpydUxKRVV6WFY2b3kydHZ5dWV0ZEd6Szh5MGtFWklSS3phZDhEQ0M2OVg2WUYwWlFCY290QVRGVTcvNDlvSnM0c2c9PS0tQVVHeWlRRmUyY3UyazVmYXJUSktMUT09--41af14be0238a1450e5264cca82696c70a2d82e9; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 29494c98-b377-44eb-8e94-da5db09cb6f9
X-Runtime: 0.003567
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "ボード-153",
    "priority": 1122,
    "url": "http://www.example.com/api/v1/boards/1"
  },
  {
    "id": 2,
    "subject": "ボード-154",
    "priority": 1123,
    "url": "http://www.example.com/api/v1/boards/2"
  }
]
```

## GET /api/v1/boards/:id
Deletes a board.

### Example

#### Request
```
GET /api/v1/boards?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=YXEycmxmS21UZlI4UEZ4Z1o3ckRyU3o0eVpMRk9HZWNDSWY2STFINUtTL21LZnlNQ2trc2NrYnJaY294VFNaZGVTcXBHZURIMDI4VGd6WmtoZ1NxaFE9PS0td2M2VTQ2QjJqcFhmTWRLZUh6OFE3Zz09--c203c53f779833f3c825b7feaf7fb063271c3b02;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 197
Content-Type: application/json; charset=utf-8
ETag: W/"b50baa0458bc842dfad644193d4005ca"
Set-Cookie: _task-board_session=NzJtTG4wUWtFcXJJMVg5UTRtQkpydUxKRVV6WFY2b3kydHZ5dWV0ZEd6Szh5MGtFWklSS3phZDhEQ0M2OVg2WUYwWlFCY290QVRGVTcvNDlvSnM0c2c9PS0tQVVHeWlRRmUyY3UyazVmYXJUSktMUT09--41af14be0238a1450e5264cca82696c70a2d82e9; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 29494c98-b377-44eb-8e94-da5db09cb6f9
X-Runtime: 0.003567
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "ボード-153",
    "priority": 1122,
    "url": "http://www.example.com/api/v1/boards/1"
  },
  {
    "id": 2,
    "subject": "ボード-154",
    "priority": 1123,
    "url": "http://www.example.com/api/v1/boards/2"
  }
]
```

## GET /api/v1/boards
Returns boards.

### Example

#### Request
```
GET /api/v1/boards?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=YXEycmxmS21UZlI4UEZ4Z1o3ckRyU3o0eVpMRk9HZWNDSWY2STFINUtTL21LZnlNQ2trc2NrYnJaY294VFNaZGVTcXBHZURIMDI4VGd6WmtoZ1NxaFE9PS0td2M2VTQ2QjJqcFhmTWRLZUh6OFE3Zz09--c203c53f779833f3c825b7feaf7fb063271c3b02;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 197
Content-Type: application/json; charset=utf-8
ETag: W/"b50baa0458bc842dfad644193d4005ca"
Set-Cookie: _task-board_session=NzJtTG4wUWtFcXJJMVg5UTRtQkpydUxKRVV6WFY2b3kydHZ5dWV0ZEd6Szh5MGtFWklSS3phZDhEQ0M2OVg2WUYwWlFCY290QVRGVTcvNDlvSnM0c2c9PS0tQVVHeWlRRmUyY3UyazVmYXJUSktMUT09--41af14be0238a1450e5264cca82696c70a2d82e9; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 29494c98-b377-44eb-8e94-da5db09cb6f9
X-Runtime: 0.003567
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "ボード-153",
    "priority": 1122,
    "url": "http://www.example.com/api/v1/boards/1"
  },
  {
    "id": 2,
    "subject": "ボード-154",
    "priority": 1123,
    "url": "http://www.example.com/api/v1/boards/2"
  }
]
```
