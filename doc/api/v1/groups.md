## PATCH /api/v1/groups/:id
Updates a group.

### Example

#### Request
```
PATCH /api/v1/groups/1 HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 30
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

group[subject]=changed+subject
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 126
Content-Type: application/json; charset=utf-8
ETag: W/"99d7389c8900c15fe09844c1438d452e"
Location: http://www.example.com/api/v1/groups/1
Set-Cookie: request_method=PATCH; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 22111940-7478-4383-a044-3e375174d0fc
X-Runtime: 0.004745
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "changed subject",
  "created_at": "2015-08-09T15:45:14.777+09:00",
  "updated_at": "2015-08-09T15:45:14.781+09:00"
}
```

## DELETE /api/v1/groups/:id
Deletes a group.

### Example

#### Request
```
DELETE /api/v1/groups/1 HTTP/1.1
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
X-Request-Id: a728b376-f31f-42b5-a50d-99b352cf216b
X-Runtime: 0.001773
X-XSS-Protection: 1; mode=block
```

## POST /api/v1/groups
Adds a group.

### Example

#### Request
```
POST /api/v1/groups HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 54
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

group[subject]=%E3%82%B0%E3%83%AB%E3%83%BC%E3%83%97-11
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 126
Content-Type: application/json; charset=utf-8
ETag: W/"300bfe53629c41bd4ad0406f42aa2581"
Location: http://www.example.com/api/v1/groups/1
Set-Cookie: request_method=POST; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 0a026698-09d5-4c57-a20c-d9dde6fb6622
X-Runtime: 0.004088
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "グループ-11",
  "created_at": "2015-08-09T15:45:14.800+09:00",
  "updated_at": "2015-08-09T15:45:14.800+09:00"
}
```

## GET /api/v1/groups
Returns groups.

### Example

#### Request
```
GET /api/v1/groups HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 169
Content-Type: application/json; charset=utf-8
ETag: W/"85bdb9118d04d5e394ef882d5d2a76be"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: b82310a3-6100-4221-b818-9bbd8e01f575
X-Runtime: 0.002374
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "グループ-12",
    "url": "http://www.example.com/api/v1/groups/1"
  },
  {
    "id": 2,
    "subject": "グループ-13",
    "url": "http://www.example.com/api/v1/groups/2"
  }
]
```

## GET /api/v1/groups/:id
Retruns a group.

### Example

#### Request
```
GET /api/v1/groups/1 HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 126
Content-Type: application/json; charset=utf-8
ETag: W/"a0057b5ffa0b8ef095f7d443e27a238b"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 5cee1808-15d5-4c06-8d9e-9537dac986cc
X-Runtime: 0.001763
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "グループ-14",
  "created_at": "2015-08-09T15:45:14.815+09:00",
  "updated_at": "2015-08-09T15:45:14.815+09:00"
}
```
