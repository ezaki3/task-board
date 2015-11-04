## GET /api/v1/boards/:id
Returns a board.

### Example

#### Request
```
GET /api/v1/boards?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=Y2NFbWlqZFIrQ2tHY1NvaGNzaTNQYUdaQlkwRjNUYWt4ajF2NTluTDlCMTMwK0dkVWxMQXNzbDZwWUQ3NmhhTUoxTnl6WEx5aDBMcEhnOVd3bDhBMlE9PS0tVHNJWElPZW00ck5NV2dNcW56bGZDQT09--87509285a4c69b8fae4566fb945b13a1b2005b1d;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 197
Content-Type: application/json; charset=utf-8
ETag: W/"b50baa0458bc842dfad644193d4005ca"
Set-Cookie: _task-board_session=WHk1TTRFaUxXMExIQUdlczBMQzAwWjhIblRLTlAxa0U2Mm81R0NDUC9FMlVyQW4venJxU1RST1ZaNkp1djRld3RHRVgyeWlDcnVFaHBwQ0tDdEk5UWc9PS0tY0JUSFM4NnU0c1lkTDNvVUYyZGtKdz09--dd310419060931ba3b4d37bedfd309e79847ab1b; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 2f586b79-37c7-4178-a8ba-20e9427d6fa4
X-Runtime: 0.004740
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
Cookie: _task-board_session=Y2NFbWlqZFIrQ2tHY1NvaGNzaTNQYUdaQlkwRjNUYWt4ajF2NTluTDlCMTMwK0dkVWxMQXNzbDZwWUQ3NmhhTUoxTnl6WEx5aDBMcEhnOVd3bDhBMlE9PS0tVHNJWElPZW00ck5NV2dNcW56bGZDQT09--87509285a4c69b8fae4566fb945b13a1b2005b1d;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 197
Content-Type: application/json; charset=utf-8
ETag: W/"b50baa0458bc842dfad644193d4005ca"
Set-Cookie: _task-board_session=WHk1TTRFaUxXMExIQUdlczBMQzAwWjhIblRLTlAxa0U2Mm81R0NDUC9FMlVyQW4venJxU1RST1ZaNkp1djRld3RHRVgyeWlDcnVFaHBwQ0tDdEk5UWc9PS0tY0JUSFM4NnU0c1lkTDNvVUYyZGtKdz09--dd310419060931ba3b4d37bedfd309e79847ab1b; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 2f586b79-37c7-4178-a8ba-20e9427d6fa4
X-Runtime: 0.004740
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
Cookie: _task-board_session=Y2NFbWlqZFIrQ2tHY1NvaGNzaTNQYUdaQlkwRjNUYWt4ajF2NTluTDlCMTMwK0dkVWxMQXNzbDZwWUQ3NmhhTUoxTnl6WEx5aDBMcEhnOVd3bDhBMlE9PS0tVHNJWElPZW00ck5NV2dNcW56bGZDQT09--87509285a4c69b8fae4566fb945b13a1b2005b1d;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 197
Content-Type: application/json; charset=utf-8
ETag: W/"b50baa0458bc842dfad644193d4005ca"
Set-Cookie: _task-board_session=WHk1TTRFaUxXMExIQUdlczBMQzAwWjhIblRLTlAxa0U2Mm81R0NDUC9FMlVyQW4venJxU1RST1ZaNkp1djRld3RHRVgyeWlDcnVFaHBwQ0tDdEk5UWc9PS0tY0JUSFM4NnU0c1lkTDNvVUYyZGtKdz09--dd310419060931ba3b4d37bedfd309e79847ab1b; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 2f586b79-37c7-4178-a8ba-20e9427d6fa4
X-Runtime: 0.004740
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
Updates a board (but not user_id).

### Example

#### Request
```
GET /api/v1/boards?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=Y2NFbWlqZFIrQ2tHY1NvaGNzaTNQYUdaQlkwRjNUYWt4ajF2NTluTDlCMTMwK0dkVWxMQXNzbDZwWUQ3NmhhTUoxTnl6WEx5aDBMcEhnOVd3bDhBMlE9PS0tVHNJWElPZW00ck5NV2dNcW56bGZDQT09--87509285a4c69b8fae4566fb945b13a1b2005b1d;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 197
Content-Type: application/json; charset=utf-8
ETag: W/"b50baa0458bc842dfad644193d4005ca"
Set-Cookie: _task-board_session=WHk1TTRFaUxXMExIQUdlczBMQzAwWjhIblRLTlAxa0U2Mm81R0NDUC9FMlVyQW4venJxU1RST1ZaNkp1djRld3RHRVgyeWlDcnVFaHBwQ0tDdEk5UWc9PS0tY0JUSFM4NnU0c1lkTDNvVUYyZGtKdz09--dd310419060931ba3b4d37bedfd309e79847ab1b; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 2f586b79-37c7-4178-a8ba-20e9427d6fa4
X-Runtime: 0.004740
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
Cookie: _task-board_session=Y2NFbWlqZFIrQ2tHY1NvaGNzaTNQYUdaQlkwRjNUYWt4ajF2NTluTDlCMTMwK0dkVWxMQXNzbDZwWUQ3NmhhTUoxTnl6WEx5aDBMcEhnOVd3bDhBMlE9PS0tVHNJWElPZW00ck5NV2dNcW56bGZDQT09--87509285a4c69b8fae4566fb945b13a1b2005b1d;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 197
Content-Type: application/json; charset=utf-8
ETag: W/"b50baa0458bc842dfad644193d4005ca"
Set-Cookie: _task-board_session=WHk1TTRFaUxXMExIQUdlczBMQzAwWjhIblRLTlAxa0U2Mm81R0NDUC9FMlVyQW4venJxU1RST1ZaNkp1djRld3RHRVgyeWlDcnVFaHBwQ0tDdEk5UWc9PS0tY0JUSFM4NnU0c1lkTDNvVUYyZGtKdz09--dd310419060931ba3b4d37bedfd309e79847ab1b; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 2f586b79-37c7-4178-a8ba-20e9427d6fa4
X-Runtime: 0.004740
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
Cookie: _task-board_session=Y2NFbWlqZFIrQ2tHY1NvaGNzaTNQYUdaQlkwRjNUYWt4ajF2NTluTDlCMTMwK0dkVWxMQXNzbDZwWUQ3NmhhTUoxTnl6WEx5aDBMcEhnOVd3bDhBMlE9PS0tVHNJWElPZW00ck5NV2dNcW56bGZDQT09--87509285a4c69b8fae4566fb945b13a1b2005b1d;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 197
Content-Type: application/json; charset=utf-8
ETag: W/"b50baa0458bc842dfad644193d4005ca"
Set-Cookie: _task-board_session=WHk1TTRFaUxXMExIQUdlczBMQzAwWjhIblRLTlAxa0U2Mm81R0NDUC9FMlVyQW4venJxU1RST1ZaNkp1djRld3RHRVgyeWlDcnVFaHBwQ0tDdEk5UWc9PS0tY0JUSFM4NnU0c1lkTDNvVUYyZGtKdz09--dd310419060931ba3b4d37bedfd309e79847ab1b; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 2f586b79-37c7-4178-a8ba-20e9427d6fa4
X-Runtime: 0.004740
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
Cookie: _task-board_session=Y2NFbWlqZFIrQ2tHY1NvaGNzaTNQYUdaQlkwRjNUYWt4ajF2NTluTDlCMTMwK0dkVWxMQXNzbDZwWUQ3NmhhTUoxTnl6WEx5aDBMcEhnOVd3bDhBMlE9PS0tVHNJWElPZW00ck5NV2dNcW56bGZDQT09--87509285a4c69b8fae4566fb945b13a1b2005b1d;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 197
Content-Type: application/json; charset=utf-8
ETag: W/"b50baa0458bc842dfad644193d4005ca"
Set-Cookie: _task-board_session=WHk1TTRFaUxXMExIQUdlczBMQzAwWjhIblRLTlAxa0U2Mm81R0NDUC9FMlVyQW4venJxU1RST1ZaNkp1djRld3RHRVgyeWlDcnVFaHBwQ0tDdEk5UWc9PS0tY0JUSFM4NnU0c1lkTDNvVUYyZGtKdz09--dd310419060931ba3b4d37bedfd309e79847ab1b; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 2f586b79-37c7-4178-a8ba-20e9427d6fa4
X-Runtime: 0.004740
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
