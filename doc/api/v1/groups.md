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
Content-Length: 298
Content-Type: application/json; charset=utf-8
ETag: W/"bda39de28f9b68eb2182ea53444ad8cd"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 72ab40f7-df41-4cc2-b69e-1cc07b579f23
X-Runtime: 0.007271
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "グループ-4",
  "priority": 14,
  "created_at": "2015-09-20T13:33:25.506+09:00",
  "updated_at": "2015-09-20T13:33:25.506+09:00",
  "board": {
    "id": 1,
    "subject": "ボード-10",
    "priority": 1011,
    "created_at": "2015-09-20T13:33:25.504+09:00",
    "updated_at": "2015-09-20T13:33:25.504+09:00"
  },
  "tasks": [

  ]
}
```

## POST /api/v1/boards/:board_id/groups
Adds a group.

### Example

#### Request
```
POST /api/v1/boards/1/groups HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 90
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

group[subject]=%E3%82%B0%E3%83%AB%E3%83%BC%E3%83%97-5&group[priority]=15&group[board_id]=1
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 298
Content-Type: application/json; charset=utf-8
ETag: W/"1848219e410e8ad5d84e841043885882"
Location: /api/v1/groups/1
Set-Cookie: request_method=POST; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: d1d9961a-ec54-4c2c-9c69-9a8bb56f72e7
X-Runtime: 0.005421
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "グループ-5",
  "priority": 15,
  "created_at": "2015-09-20T13:33:25.525+09:00",
  "updated_at": "2015-09-20T13:33:25.525+09:00",
  "board": {
    "id": 1,
    "subject": "ボード-11",
    "priority": 1012,
    "created_at": "2015-09-20T13:33:25.521+09:00",
    "updated_at": "2015-09-20T13:33:25.521+09:00"
  },
  "tasks": [

  ]
}
```

## PATCH /api/v1/groups/:id
Updates a group.

### Example

#### Request
```
PATCH /api/v1/groups/1 HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 49
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

group[subject]=changed+subject&group[priority]=17
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 299
Content-Type: application/json; charset=utf-8
ETag: W/"d4101a899765f5f7d9574ef84c7720f8"
Location: /api/v1/groups/1
Set-Cookie: request_method=PATCH; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: b992e7f7-d337-4f52-9a13-59d3d8cf901a
X-Runtime: 0.005446
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "changed subject",
  "priority": 17,
  "created_at": "2015-09-20T13:33:25.541+09:00",
  "updated_at": "2015-09-20T13:33:25.545+09:00",
  "board": {
    "id": 1,
    "subject": "ボード-13",
    "priority": 1014,
    "created_at": "2015-09-20T13:33:25.539+09:00",
    "updated_at": "2015-09-20T13:33:25.539+09:00"
  },
  "tasks": [

  ]
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
X-Request-Id: 83f5257a-3f97-4cec-936f-b365cf2f553f
X-Runtime: 0.002249
X-XSS-Protection: 1; mode=block
```

## GET /api/v1/boards/:board_id/groups
Returns groups.

### Example

#### Request
```
GET /api/v1/boards/1/groups HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 197
Content-Type: application/json; charset=utf-8
ETag: W/"4748801155262a73087788e627225811"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 893d4581-f604-4dbc-8b27-ae54dd68a8f9
X-Runtime: 0.003806
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "グループ-10",
    "priority": 21,
    "url": "http://www.example.com/api/v1/groups/1"
  },
  {
    "id": 2,
    "subject": "グループ-11",
    "priority": 22,
    "url": "http://www.example.com/api/v1/groups/2"
  }
]
```
