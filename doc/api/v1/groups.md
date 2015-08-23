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
Content-Length: 136
Content-Type: application/json; charset=utf-8
ETag: W/"b175543b6e31df97c6c249acd064d957"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 4523a1ec-14ba-4b14-9311-45c41aceb3fc
X-Runtime: 0.027163
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "グループ-8",
  "tasks": [

  ],
  "created_at": "2015-08-23T20:21:05.361+09:00",
  "updated_at": "2015-08-23T20:21:05.361+09:00"
}
```

## POST /api/v1/groups
Adds a group.

### Example

#### Request
```
POST /api/v1/groups HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 53
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

group[subject]=%E3%82%B0%E3%83%AB%E3%83%BC%E3%83%97-9
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 136
Content-Type: application/json; charset=utf-8
ETag: W/"b86beb8284e84263dbc2ab98087b5ca2"
Location: /api/v1/groups/1
Set-Cookie: request_method=POST; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: d64c08d8-0c6d-46d8-ba5d-126ab0db8f8a
X-Runtime: 0.007831
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "グループ-9",
  "tasks": [

  ],
  "created_at": "2015-08-23T20:21:05.409+09:00",
  "updated_at": "2015-08-23T20:21:05.409+09:00"
}
```

## GET /api/v1/groups/:group_id/tasks
Returns tasks with thier group.

### Example

#### Request
```
GET /api/v1/groups/1/tasks HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 230
Content-Type: application/json; charset=utf-8
ETag: W/"8650fbb6a3829f9c40cbbf97690ebf53"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 6c4089ed-9ea1-448d-a429-b87fb4bdf1b3
X-Runtime: 0.005757
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "件名-9",
    "body": "本文-9",
    "group": {
      "id": 1,
      "subject": "グループ-10",
      "created_at": "2015-08-23T20:21:05.421+09:00",
      "updated_at": "2015-08-23T20:21:05.421+09:00"
    },
    "url": "http://www.example.com/api/v1/tasks/1"
  }
]
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
Content-Length: 191
Content-Type: application/json; charset=utf-8
ETag: W/"8851fec1e3b3215cd0651fbae1431920"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 7a0c9038-1bb8-4ee8-bb74-3abcb2989de9
X-Runtime: 0.007594
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "グループ-12",
    "tasks": [

    ],
    "url": "http://www.example.com/api/v1/groups/1"
  },
  {
    "id": 2,
    "subject": "グループ-13",
    "tasks": [

    ],
    "url": "http://www.example.com/api/v1/groups/2"
  }
]
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
X-Request-Id: 210a3d19-c327-4e4f-b42f-449869e619a2
X-Runtime: 0.002743
X-XSS-Protection: 1; mode=block
```

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
Content-Length: 137
Content-Type: application/json; charset=utf-8
ETag: W/"2c5c9e3af2af3b35733f6a6b695d639c"
Location: /api/v1/groups/1
Set-Cookie: request_method=PATCH; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 3d4d9413-bb74-437b-9279-d126a0b28aab
X-Runtime: 0.008576
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "changed subject",
  "tasks": [

  ],
  "created_at": "2015-08-23T20:21:05.470+09:00",
  "updated_at": "2015-08-23T20:21:05.477+09:00"
}
```
