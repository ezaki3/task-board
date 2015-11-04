## GET /api/v1/groups/:id
Retruns a group.

### Example

#### Request
```
GET /api/v1/boards/1/groups?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=WHpPNEVieVF5WWNYbzQ1Q3Q4N29DdEEvNTVqRWJmUUZoVmorTE13M1Nid1NNQ1dPemw0MUY3ZXhqQzFiZWlrT3ZnSEpBSSs0UXNOd25xRUZzUDhoWHc9PS0tUCtwQ2p4YzRNYTN3VmQ0TnVDK0pTUT09--f717cebba61e44302ff182fecfe76273d9681c0d;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 199
Content-Type: application/json; charset=utf-8
ETag: W/"6e06100cad7732ea72497686382d6874"
Set-Cookie: _task-board_session=VEV3OFZyYk5TejhidFF3MGRDSDRZSEoySE9RUlNFUm5WSmpmaWlGWmdBWFZLZ3hUaHdoai9tc1NSdlduNkZUSkxZcHBuY1o4TER5VG1seC9jQWlqbWc9PS0tcGxlaFd1Q1NhR2sxaEx2eC83MlpDZz09--9947d0da888d69cdbb3a57848293200878ac22e5; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: c7da06ba-d4f3-42fd-996a-b243aaa8a5a4
X-Runtime: 0.003881
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "グループ-122",
    "priority": 86,
    "url": "http://www.example.com/api/v1/groups/1"
  },
  {
    "id": 2,
    "subject": "グループ-123",
    "priority": 87,
    "url": "http://www.example.com/api/v1/groups/2"
  }
]
```

## GET /api/v1/boards/:board_id/groups
Adds a group.

### Example

#### Request
```
GET /api/v1/boards/1/groups?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=WHpPNEVieVF5WWNYbzQ1Q3Q4N29DdEEvNTVqRWJmUUZoVmorTE13M1Nid1NNQ1dPemw0MUY3ZXhqQzFiZWlrT3ZnSEpBSSs0UXNOd25xRUZzUDhoWHc9PS0tUCtwQ2p4YzRNYTN3VmQ0TnVDK0pTUT09--f717cebba61e44302ff182fecfe76273d9681c0d;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 199
Content-Type: application/json; charset=utf-8
ETag: W/"6e06100cad7732ea72497686382d6874"
Set-Cookie: _task-board_session=VEV3OFZyYk5TejhidFF3MGRDSDRZSEoySE9RUlNFUm5WSmpmaWlGWmdBWFZLZ3hUaHdoai9tc1NSdlduNkZUSkxZcHBuY1o4TER5VG1seC9jQWlqbWc9PS0tcGxlaFd1Q1NhR2sxaEx2eC83MlpDZz09--9947d0da888d69cdbb3a57848293200878ac22e5; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: c7da06ba-d4f3-42fd-996a-b243aaa8a5a4
X-Runtime: 0.003881
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "グループ-122",
    "priority": 86,
    "url": "http://www.example.com/api/v1/groups/1"
  },
  {
    "id": 2,
    "subject": "グループ-123",
    "priority": 87,
    "url": "http://www.example.com/api/v1/groups/2"
  }
]
```

## GET /api/v1/boards/:board_id/groups/dryrun
Returns ng and not creates.

### Example

#### Request
```
GET /api/v1/boards/1/groups?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=WHpPNEVieVF5WWNYbzQ1Q3Q4N29DdEEvNTVqRWJmUUZoVmorTE13M1Nid1NNQ1dPemw0MUY3ZXhqQzFiZWlrT3ZnSEpBSSs0UXNOd25xRUZzUDhoWHc9PS0tUCtwQ2p4YzRNYTN3VmQ0TnVDK0pTUT09--f717cebba61e44302ff182fecfe76273d9681c0d;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 199
Content-Type: application/json; charset=utf-8
ETag: W/"6e06100cad7732ea72497686382d6874"
Set-Cookie: _task-board_session=VEV3OFZyYk5TejhidFF3MGRDSDRZSEoySE9RUlNFUm5WSmpmaWlGWmdBWFZLZ3hUaHdoai9tc1NSdlduNkZUSkxZcHBuY1o4TER5VG1seC9jQWlqbWc9PS0tcGxlaFd1Q1NhR2sxaEx2eC83MlpDZz09--9947d0da888d69cdbb3a57848293200878ac22e5; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: c7da06ba-d4f3-42fd-996a-b243aaa8a5a4
X-Runtime: 0.003881
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "グループ-122",
    "priority": 86,
    "url": "http://www.example.com/api/v1/groups/1"
  },
  {
    "id": 2,
    "subject": "グループ-123",
    "priority": 87,
    "url": "http://www.example.com/api/v1/groups/2"
  }
]
```

## GET /api/v1/groups/:id
Updates a group (but not user_id).

### Example

#### Request
```
GET /api/v1/boards/1/groups?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=WHpPNEVieVF5WWNYbzQ1Q3Q4N29DdEEvNTVqRWJmUUZoVmorTE13M1Nid1NNQ1dPemw0MUY3ZXhqQzFiZWlrT3ZnSEpBSSs0UXNOd25xRUZzUDhoWHc9PS0tUCtwQ2p4YzRNYTN3VmQ0TnVDK0pTUT09--f717cebba61e44302ff182fecfe76273d9681c0d;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 199
Content-Type: application/json; charset=utf-8
ETag: W/"6e06100cad7732ea72497686382d6874"
Set-Cookie: _task-board_session=VEV3OFZyYk5TejhidFF3MGRDSDRZSEoySE9RUlNFUm5WSmpmaWlGWmdBWFZLZ3hUaHdoai9tc1NSdlduNkZUSkxZcHBuY1o4TER5VG1seC9jQWlqbWc9PS0tcGxlaFd1Q1NhR2sxaEx2eC83MlpDZz09--9947d0da888d69cdbb3a57848293200878ac22e5; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: c7da06ba-d4f3-42fd-996a-b243aaa8a5a4
X-Runtime: 0.003881
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "グループ-122",
    "priority": 86,
    "url": "http://www.example.com/api/v1/groups/1"
  },
  {
    "id": 2,
    "subject": "グループ-123",
    "priority": 87,
    "url": "http://www.example.com/api/v1/groups/2"
  }
]
```

## GET /api/v1/groups/:id/dryrun
Returns ng and not updates.

### Example

#### Request
```
GET /api/v1/boards/1/groups?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=WHpPNEVieVF5WWNYbzQ1Q3Q4N29DdEEvNTVqRWJmUUZoVmorTE13M1Nid1NNQ1dPemw0MUY3ZXhqQzFiZWlrT3ZnSEpBSSs0UXNOd25xRUZzUDhoWHc9PS0tUCtwQ2p4YzRNYTN3VmQ0TnVDK0pTUT09--f717cebba61e44302ff182fecfe76273d9681c0d;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 199
Content-Type: application/json; charset=utf-8
ETag: W/"6e06100cad7732ea72497686382d6874"
Set-Cookie: _task-board_session=VEV3OFZyYk5TejhidFF3MGRDSDRZSEoySE9RUlNFUm5WSmpmaWlGWmdBWFZLZ3hUaHdoai9tc1NSdlduNkZUSkxZcHBuY1o4TER5VG1seC9jQWlqbWc9PS0tcGxlaFd1Q1NhR2sxaEx2eC83MlpDZz09--9947d0da888d69cdbb3a57848293200878ac22e5; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: c7da06ba-d4f3-42fd-996a-b243aaa8a5a4
X-Runtime: 0.003881
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "グループ-122",
    "priority": 86,
    "url": "http://www.example.com/api/v1/groups/1"
  },
  {
    "id": 2,
    "subject": "グループ-123",
    "priority": 87,
    "url": "http://www.example.com/api/v1/groups/2"
  }
]
```

## GET /api/v1/groups/:id
Deletes a group.

### Example

#### Request
```
GET /api/v1/boards/1/groups?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=WHpPNEVieVF5WWNYbzQ1Q3Q4N29DdEEvNTVqRWJmUUZoVmorTE13M1Nid1NNQ1dPemw0MUY3ZXhqQzFiZWlrT3ZnSEpBSSs0UXNOd25xRUZzUDhoWHc9PS0tUCtwQ2p4YzRNYTN3VmQ0TnVDK0pTUT09--f717cebba61e44302ff182fecfe76273d9681c0d;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 199
Content-Type: application/json; charset=utf-8
ETag: W/"6e06100cad7732ea72497686382d6874"
Set-Cookie: _task-board_session=VEV3OFZyYk5TejhidFF3MGRDSDRZSEoySE9RUlNFUm5WSmpmaWlGWmdBWFZLZ3hUaHdoai9tc1NSdlduNkZUSkxZcHBuY1o4TER5VG1seC9jQWlqbWc9PS0tcGxlaFd1Q1NhR2sxaEx2eC83MlpDZz09--9947d0da888d69cdbb3a57848293200878ac22e5; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: c7da06ba-d4f3-42fd-996a-b243aaa8a5a4
X-Runtime: 0.003881
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "グループ-122",
    "priority": 86,
    "url": "http://www.example.com/api/v1/groups/1"
  },
  {
    "id": 2,
    "subject": "グループ-123",
    "priority": 87,
    "url": "http://www.example.com/api/v1/groups/2"
  }
]
```

## GET /api/v1/boards/:board_id/groups
Returns groups.

### Example

#### Request
```
GET /api/v1/boards/1/groups?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=WHpPNEVieVF5WWNYbzQ1Q3Q4N29DdEEvNTVqRWJmUUZoVmorTE13M1Nid1NNQ1dPemw0MUY3ZXhqQzFiZWlrT3ZnSEpBSSs0UXNOd25xRUZzUDhoWHc9PS0tUCtwQ2p4YzRNYTN3VmQ0TnVDK0pTUT09--f717cebba61e44302ff182fecfe76273d9681c0d;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 199
Content-Type: application/json; charset=utf-8
ETag: W/"6e06100cad7732ea72497686382d6874"
Set-Cookie: _task-board_session=VEV3OFZyYk5TejhidFF3MGRDSDRZSEoySE9RUlNFUm5WSmpmaWlGWmdBWFZLZ3hUaHdoai9tc1NSdlduNkZUSkxZcHBuY1o4TER5VG1seC9jQWlqbWc9PS0tcGxlaFd1Q1NhR2sxaEx2eC83MlpDZz09--9947d0da888d69cdbb3a57848293200878ac22e5; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: c7da06ba-d4f3-42fd-996a-b243aaa8a5a4
X-Runtime: 0.003881
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "subject": "グループ-122",
    "priority": 86,
    "url": "http://www.example.com/api/v1/groups/1"
  },
  {
    "id": 2,
    "subject": "グループ-123",
    "priority": 87,
    "url": "http://www.example.com/api/v1/groups/2"
  }
]
```
