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
ETag: W/"87134f32c62b7e6f3e988ff8430b5f50"
Location: http://www.example.com/api/v1/groups/1
Set-Cookie: request_method=PATCH; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 4d5c789e-091e-481b-a0f8-5266365441a3
X-Runtime: 0.004503
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "changed subject",
  "created_at": "2015-08-09T15:05:56.026+09:00",
  "updated_at": "2015-08-09T15:05:56.029+09:00"
}
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
ETag: W/"f647c81456c18fa6d7e4e91f41bb0152"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: a91023f8-e727-4ad4-b04f-924dd9fbfaf7
X-Runtime: 0.001816
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "グループ-10",
  "created_at": "2015-08-09T15:05:56.035+09:00",
  "updated_at": "2015-08-09T15:05:56.035+09:00"
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
X-Request-Id: bf1d9e19-1590-4355-b97d-e8468f158b04
X-Runtime: 0.001811
X-XSS-Protection: 1; mode=block
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
X-Request-Id: 54e879ce-ae06-49f2-83f8-052d7bebfa82
X-Runtime: 0.002662
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

group[subject]=%E3%82%B0%E3%83%AB%E3%83%BC%E3%83%97-14
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 126
Content-Type: application/json; charset=utf-8
ETag: W/"0a8eefc8fb451590d1db82afb665f865"
Location: http://www.example.com/api/v1/groups/1
Set-Cookie: request_method=POST; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 4d3648f8-e549-4fcb-a17a-0264fd85da0e
X-Runtime: 0.002924
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "グループ-14",
  "created_at": "2015-08-09T15:05:56.055+09:00",
  "updated_at": "2015-08-09T15:05:56.055+09:00"
}
```
