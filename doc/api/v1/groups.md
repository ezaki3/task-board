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
Content-Length: 301
Content-Type: application/json; charset=utf-8
ETag: W/"6ecf792325b61e62e307e239a9241594"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 8f2b8942-96f9-46f4-a04e-6954dd27542d
X-Runtime: 0.003971
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "グループ-3",
  "board": {
    "id": 1,
    "subject": "グループ-11",
    "priority": 1012,
    "created_at": "2015-09-04T08:55:08.586+09:00",
    "updated_at": "2015-09-04T08:55:08.586+09:00"
  },
  "tasks": [

  ],
  "priority": 13,
  "created_at": "2015-09-04T08:55:08.587+09:00",
  "updated_at": "2015-09-04T08:55:08.587+09:00"
}
```

## POST /api/v1/groups
Adds a group.

### Example

#### Request
```
POST /api/v1/groups HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 72
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

group[subject]=%E3%82%B0%E3%83%AB%E3%83%BC%E3%83%97-4&group[priority]=14
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 163
Content-Type: application/json; charset=utf-8
ETag: W/"1a55de94ab87bd2e29865b6cf60d6c90"
Location: /api/v1/groups/1
Set-Cookie: request_method=POST; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: ce6b7004-448c-466a-8450-81138bc3cce5
X-Runtime: 0.003783
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "グループ-4",
  "board": null,
  "tasks": [

  ],
  "priority": 14,
  "created_at": "2015-09-04T08:55:08.601+09:00",
  "updated_at": "2015-09-04T08:55:08.601+09:00"
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

group[subject]=changed+subject&group[priority]=16
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 302
Content-Type: application/json; charset=utf-8
ETag: W/"df681deaf913f7670360f65b196c0d90"
Location: /api/v1/groups/1
Set-Cookie: request_method=PATCH; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: bc83ac6a-42a1-4869-870e-788fd2167b82
X-Runtime: 0.004491
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "subject": "changed subject",
  "board": {
    "id": 1,
    "subject": "グループ-12",
    "priority": 1013,
    "created_at": "2015-09-04T08:55:08.611+09:00",
    "updated_at": "2015-09-04T08:55:08.611+09:00"
  },
  "tasks": [

  ],
  "priority": 16,
  "created_at": "2015-09-04T08:55:08.612+09:00",
  "updated_at": "2015-09-04T08:55:08.616+09:00"
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
X-Request-Id: 5cea2328-4dfb-43d2-861b-665c69cce200
X-Runtime: 0.001932
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
Content-Length: 520
Content-Type: application/json; charset=utf-8
ETag: W/"21372ede6850d56df6ee0df9888f881a"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: ff6867f8-d898-4adb-9983-38fb41c7efe4
X-Runtime: 0.003923
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "グループ-9",
    "board": {
      "id": 1,
      "subject": "グループ-16",
      "priority": 1017,
      "created_at": "2015-09-04T08:55:08.642+09:00",
      "updated_at": "2015-09-04T08:55:08.642+09:00"
    },
    "tasks": [

    ],
    "priority": 20,
    "url": "http://www.example.com/api/v1/groups/1"
  },
  {
    "id": 2,
    "subject": "グループ-10",
    "board": {
      "id": 2,
      "subject": "グループ-17",
      "priority": 1018,
      "created_at": "2015-09-04T08:55:08.645+09:00",
      "updated_at": "2015-09-04T08:55:08.645+09:00"
    },
    "tasks": [

    ],
    "priority": 21,
    "url": "http://www.example.com/api/v1/groups/2"
  }
]
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
Content-Length: 272
Content-Type: application/json; charset=utf-8
ETag: W/"606f9e0cfdf2a06479877d8570c1bf72"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: c222d76d-0fd7-4dc2-9afe-f4e1b2d84ef1
X-Runtime: 0.004447
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "件名-1",
    "body": "本文-1",
    "group": {
      "id": 1,
      "subject": "グループ-11",
      "created_at": "2015-09-04T08:55:08.655+09:00",
      "updated_at": "2015-09-04T08:55:08.655+09:00",
      "priority": 22,
      "board_id": 1
    },
    "priority": 101,
    "url": "http://www.example.com/api/v1/tasks/1"
  }
]
```
