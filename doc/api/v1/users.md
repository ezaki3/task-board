## GET /api/v1/users/current
Returns user info who logged in.

### Example

#### Request
```
GET /api/v1/users/current?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=SStqK1o2RzJiT1h5bWVXOXI1RlJBTkZMSUxBRWp1TC9TQis3UFlsWUxuNlY5VWRuMDNEaHd4VVk2WUpOZjBJbUNzcisxcVVlSWRkQlNsSEpzYlc2K1E9PS0teVZIZkI1dnJTcmhDaXNta3dHWGlXZz09--1cfe80aa842920519f6e6c5a7ac52f1129073141
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 317
Content-Type: application/json; charset=utf-8
ETag: W/"31af9fbecc02f7d98f10457db61aeaf7"
Set-Cookie: _task-board_session=bXpsS2d0S2hRUHhveUIzdHVUVjBNTndDS2k5TVV4djRPM2pkUFQ5d0pZUlVJQ0REUE1yQ1JXM3kwYUMyQ1hSY1gvRS8rcEthaFIyWkxiMURuS1pFOEE9PS0takl0MDJaeFYvUXpaelNsT0o0YlgyUT09--7267aa953038121c6adfb4792312638ff36a7493; path=/; HttpOnly
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 5f27c2a5-1a0c-4dac-b53a-210f484acce1
X-Runtime: 0.006418
X-XSS-Protection: 1; mode=block

{
  "id": 65,
  "provider": "gitiii",
  "uid": "11482",
  "nickname": "nice-hjf",
  "email": "nice-guy@example.dct",
  "name": "Nice Hjf",
  "url": "http://nice-guy.example.dct",
  "avatar_url": "https://nice-guy.example.com/nice-guy.qbn",
  "gravatar_id": "373",
  "created_at": "2015-11-03T00:08:00.604+09:00",
  "updated_at": "2015-11-03T00:08:00.604+09:00"
}
```
