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
ETag: W/"f97ac1c71aea1ec8cc86d2926f3805ff"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 6bd37497-79f6-4fc7-b78c-cb25a5db1f81
X-Runtime: 0.010506
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "グループ-1",
  "priority": 11,
  "created_at": "2015-09-21T00:20:19.494+09:00",
  "updated_at": "2015-09-21T00:20:19.494+09:00",
  "board": {
    "id": 1,
    "subject": "ボード-12",
    "priority": 1014,
    "created_at": "2015-09-21T00:20:19.491+09:00",
    "updated_at": "2015-09-21T00:20:19.491+09:00"
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

group[subject]=%E3%82%B0%E3%83%AB%E3%83%BC%E3%83%97-2&group[priority]=12&group[board_id]=1
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 298
Content-Type: application/json; charset=utf-8
ETag: W/"42eb5ae528adfc19b8cace1fc03f57af"
Location: /api/v1/groups/1
Set-Cookie: request_method=POST; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: e01706fe-936a-4ba0-b848-f8c528c3fea9
X-Runtime: 0.005312
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "グループ-2",
  "priority": 12,
  "created_at": "2015-09-21T00:20:19.515+09:00",
  "updated_at": "2015-09-21T00:20:19.515+09:00",
  "board": {
    "id": 1,
    "subject": "ボード-13",
    "priority": 1015,
    "created_at": "2015-09-21T00:20:19.512+09:00",
    "updated_at": "2015-09-21T00:20:19.512+09:00"
  },
  "tasks": [

  ]
}
```

## POST /api/v1/boards/:board_id/groups/dryrun
Returns ng and not creates.

### Example

#### Request
```
POST /api/v1/boards/1/groups/dryrun HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 15
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

group[subject]=
```

#### Response
```
HTTP/1.1 422
Cache-Control: no-cache
Content-Length: 30
Content-Type: application/json; charset=utf-8
Set-Cookie: request_method=POST; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: de4403b9-0044-4640-a81e-fffda97245d5
X-Runtime: 0.001949
X-XSS-Protection: 1; mode=block

{
  "subject": [
    "can't be blank"
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

group[subject]=changed+subject&group[priority]=15
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 299
Content-Type: application/json; charset=utf-8
ETag: W/"afb124e9eadc292dfe162ea46fb750d7"
Location: /api/v1/groups/1
Set-Cookie: request_method=PATCH; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 7674a6dc-f946-45b3-9379-f53d191bc11d
X-Runtime: 0.006000
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "changed subject",
  "priority": 15,
  "created_at": "2015-09-21T00:20:19.546+09:00",
  "updated_at": "2015-09-21T00:20:19.551+09:00",
  "board": {
    "id": 1,
    "subject": "ボード-17",
    "priority": 1019,
    "created_at": "2015-09-21T00:20:19.545+09:00",
    "updated_at": "2015-09-21T00:20:19.545+09:00"
  },
  "tasks": [

  ]
}
```

## PATCH /api/v1/groups/:id/dryrun
Returns ng and not updates.

### Example

#### Request
```
PATCH /api/v1/groups/1/dryrun HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 15
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

group[subject]=
```

#### Response
```
HTTP/1.1 422
Cache-Control: no-cache
Content-Length: 30
Content-Type: application/json; charset=utf-8
Set-Cookie: request_method=PATCH; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 7c591f0e-a0bf-47ff-900a-b3478a114dd5
X-Runtime: 0.003175
X-XSS-Protection: 1; mode=block

{
  "subject": [
    "can't be blank"
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
X-Request-Id: 9bbe018b-787f-4459-9bd3-68eaa6e19f5b
X-Runtime: 0.002071
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
ETag: W/"7f007a2b90b7c9f23e41185084d33778"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 2ea3d024-6395-4a1a-be92-e328baf71a6c
X-Runtime: 0.003078
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "グループ-10",
    "priority": 22,
    "url": "http://www.example.com/api/v1/groups/1"
  },
  {
    "id": 2,
    "subject": "グループ-11",
    "priority": 23,
    "url": "http://www.example.com/api/v1/groups/2"
  }
]
```
