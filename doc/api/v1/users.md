## GET /api/v1/users/current
Returns user info who logged in.

### Example

#### Request
```
GET /api/v1/users/current?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=QTFleDNXbGk0QzZzTElEaG5yRWM5VWR1UlIrUDI2eVhoTnQzak1iV0pmN2RKd1BBSW1KT255ODJjZDNyNHA1TU5GajI5a2FudmNGd2JWbFdac0lHQkE9PS0tM1FiMmNJenhxNnc2ZjBwelliM1J1UT09--e0f419c455267f9ff4e9779096fbf4bd4348739f
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 316
Content-Type: application/json; charset=utf-8
ETag: W/"bb4de3aefd3e6ded3a0e155d66c7cbca"
Set-Cookie: _task-board_session=VzZTU3NhVTlweGlhRURwOUd3eTAxbmFyOW81dGgyS1hNM21xTmd2ZjhCSU9CdXNIaXBnVXZwcGpOMzU2MDF5YUhIVWI2bEU0SHN0R0lsVXVURHlNd2c9PS0tdE5PbUtKcSt0L243Z20wZ3JZKzJ0UT09--61b9938fc57d78dbb318996abd7d9cc2e2a4dd30; path=/; HttpOnly
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 216d6d0d-e6a0-45c0-adb0-b5bfac1bfed5
X-Runtime: 0.009939
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "provider": "gitiie",
  "uid": "11478",
  "nickname": "nice-hjb",
  "email": "nice-guy@example.dcp",
  "name": "Nice Hjb",
  "url": "http://nice-guy.example.dcp",
  "avatar_url": "https://nice-guy.example.com/nice-guy.qbj",
  "gravatar_id": "369",
  "created_at": "2015-11-03T21:11:55.140+09:00",
  "updated_at": "2015-11-03T21:11:55.140+09:00"
}
```
