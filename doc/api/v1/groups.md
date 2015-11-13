## GET /api/v1/groups/:id
Retruns a group.

### Example

#### Request
```
GET /api/v1/boards/1/groups?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=b0hEVW83R2FhUVhsT3p1L2hIelRjQkpLK1psZzFxTm9SczdPRkMvMFBvQkFTTXJhK0l6RXE1cHFsVy81OFczRlZNTmpxUTR6elBYNEZ3TmVsTWNUNGc9PS0tYW9xQzFuZFIrSjZKSmp5WndkWU5Bdz09--5330d84846e249576811ddd30d5a39c42b85650d;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 199
Content-Type: application/json; charset=utf-8
ETag: W/"e2c047cf2de59c8a93a0ff7ab2aaefc9"
Set-Cookie: _task-board_session=eTgwY1kzcUJPVmZ5WkxINnh0SW9wZURpeVVnYlJFaWw4c2RHcDJ5bTlTcVF2dEZOY2Zyb2lJQlQ4NGVEUmdFK00rM0gvUTBmbXh3S3BRZ0hpSDJZOXc9PS0tZzQvYkFmM1VVMllQeHRpUDN0V0tGdz09--eb238de141fc37ee39dc0524a912027274106c4b; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: b65b9e36-09d4-4940-88a3-61e20ebc293c
X-Runtime: 0.006569
X-XSS-Protection: 1; mode=block

[
  {
    "id": 2,
    "subject": "グループ-124",
    "priority": 88,
    "url": "http://www.example.com/api/v1/groups/2"
  },
  {
    "id": 3,
    "subject": "グループ-125",
    "priority": 89,
    "url": "http://www.example.com/api/v1/groups/3"
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
Cookie: _task-board_session=b0hEVW83R2FhUVhsT3p1L2hIelRjQkpLK1psZzFxTm9SczdPRkMvMFBvQkFTTXJhK0l6RXE1cHFsVy81OFczRlZNTmpxUTR6elBYNEZ3TmVsTWNUNGc9PS0tYW9xQzFuZFIrSjZKSmp5WndkWU5Bdz09--5330d84846e249576811ddd30d5a39c42b85650d;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 199
Content-Type: application/json; charset=utf-8
ETag: W/"e2c047cf2de59c8a93a0ff7ab2aaefc9"
Set-Cookie: _task-board_session=eTgwY1kzcUJPVmZ5WkxINnh0SW9wZURpeVVnYlJFaWw4c2RHcDJ5bTlTcVF2dEZOY2Zyb2lJQlQ4NGVEUmdFK00rM0gvUTBmbXh3S3BRZ0hpSDJZOXc9PS0tZzQvYkFmM1VVMllQeHRpUDN0V0tGdz09--eb238de141fc37ee39dc0524a912027274106c4b; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: b65b9e36-09d4-4940-88a3-61e20ebc293c
X-Runtime: 0.006569
X-XSS-Protection: 1; mode=block

[
  {
    "id": 2,
    "subject": "グループ-124",
    "priority": 88,
    "url": "http://www.example.com/api/v1/groups/2"
  },
  {
    "id": 3,
    "subject": "グループ-125",
    "priority": 89,
    "url": "http://www.example.com/api/v1/groups/3"
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
Cookie: _task-board_session=b0hEVW83R2FhUVhsT3p1L2hIelRjQkpLK1psZzFxTm9SczdPRkMvMFBvQkFTTXJhK0l6RXE1cHFsVy81OFczRlZNTmpxUTR6elBYNEZ3TmVsTWNUNGc9PS0tYW9xQzFuZFIrSjZKSmp5WndkWU5Bdz09--5330d84846e249576811ddd30d5a39c42b85650d;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 199
Content-Type: application/json; charset=utf-8
ETag: W/"e2c047cf2de59c8a93a0ff7ab2aaefc9"
Set-Cookie: _task-board_session=eTgwY1kzcUJPVmZ5WkxINnh0SW9wZURpeVVnYlJFaWw4c2RHcDJ5bTlTcVF2dEZOY2Zyb2lJQlQ4NGVEUmdFK00rM0gvUTBmbXh3S3BRZ0hpSDJZOXc9PS0tZzQvYkFmM1VVMllQeHRpUDN0V0tGdz09--eb238de141fc37ee39dc0524a912027274106c4b; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: b65b9e36-09d4-4940-88a3-61e20ebc293c
X-Runtime: 0.006569
X-XSS-Protection: 1; mode=block

[
  {
    "id": 2,
    "subject": "グループ-124",
    "priority": 88,
    "url": "http://www.example.com/api/v1/groups/2"
  },
  {
    "id": 3,
    "subject": "グループ-125",
    "priority": 89,
    "url": "http://www.example.com/api/v1/groups/3"
  }
]
```

## GET /api/v1/groups/:id
Updates a group.

### Example

#### Request
```
GET /api/v1/boards/1/groups?{} HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Cookie: _task-board_session=b0hEVW83R2FhUVhsT3p1L2hIelRjQkpLK1psZzFxTm9SczdPRkMvMFBvQkFTTXJhK0l6RXE1cHFsVy81OFczRlZNTmpxUTR6elBYNEZ3TmVsTWNUNGc9PS0tYW9xQzFuZFIrSjZKSmp5WndkWU5Bdz09--5330d84846e249576811ddd30d5a39c42b85650d;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 199
Content-Type: application/json; charset=utf-8
ETag: W/"e2c047cf2de59c8a93a0ff7ab2aaefc9"
Set-Cookie: _task-board_session=eTgwY1kzcUJPVmZ5WkxINnh0SW9wZURpeVVnYlJFaWw4c2RHcDJ5bTlTcVF2dEZOY2Zyb2lJQlQ4NGVEUmdFK00rM0gvUTBmbXh3S3BRZ0hpSDJZOXc9PS0tZzQvYkFmM1VVMllQeHRpUDN0V0tGdz09--eb238de141fc37ee39dc0524a912027274106c4b; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: b65b9e36-09d4-4940-88a3-61e20ebc293c
X-Runtime: 0.006569
X-XSS-Protection: 1; mode=block

[
  {
    "id": 2,
    "subject": "グループ-124",
    "priority": 88,
    "url": "http://www.example.com/api/v1/groups/2"
  },
  {
    "id": 3,
    "subject": "グループ-125",
    "priority": 89,
    "url": "http://www.example.com/api/v1/groups/3"
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
Cookie: _task-board_session=b0hEVW83R2FhUVhsT3p1L2hIelRjQkpLK1psZzFxTm9SczdPRkMvMFBvQkFTTXJhK0l6RXE1cHFsVy81OFczRlZNTmpxUTR6elBYNEZ3TmVsTWNUNGc9PS0tYW9xQzFuZFIrSjZKSmp5WndkWU5Bdz09--5330d84846e249576811ddd30d5a39c42b85650d;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 199
Content-Type: application/json; charset=utf-8
ETag: W/"e2c047cf2de59c8a93a0ff7ab2aaefc9"
Set-Cookie: _task-board_session=eTgwY1kzcUJPVmZ5WkxINnh0SW9wZURpeVVnYlJFaWw4c2RHcDJ5bTlTcVF2dEZOY2Zyb2lJQlQ4NGVEUmdFK00rM0gvUTBmbXh3S3BRZ0hpSDJZOXc9PS0tZzQvYkFmM1VVMllQeHRpUDN0V0tGdz09--eb238de141fc37ee39dc0524a912027274106c4b; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: b65b9e36-09d4-4940-88a3-61e20ebc293c
X-Runtime: 0.006569
X-XSS-Protection: 1; mode=block

[
  {
    "id": 2,
    "subject": "グループ-124",
    "priority": 88,
    "url": "http://www.example.com/api/v1/groups/2"
  },
  {
    "id": 3,
    "subject": "グループ-125",
    "priority": 89,
    "url": "http://www.example.com/api/v1/groups/3"
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
Cookie: _task-board_session=b0hEVW83R2FhUVhsT3p1L2hIelRjQkpLK1psZzFxTm9SczdPRkMvMFBvQkFTTXJhK0l6RXE1cHFsVy81OFczRlZNTmpxUTR6elBYNEZ3TmVsTWNUNGc9PS0tYW9xQzFuZFIrSjZKSmp5WndkWU5Bdz09--5330d84846e249576811ddd30d5a39c42b85650d;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 199
Content-Type: application/json; charset=utf-8
ETag: W/"e2c047cf2de59c8a93a0ff7ab2aaefc9"
Set-Cookie: _task-board_session=eTgwY1kzcUJPVmZ5WkxINnh0SW9wZURpeVVnYlJFaWw4c2RHcDJ5bTlTcVF2dEZOY2Zyb2lJQlQ4NGVEUmdFK00rM0gvUTBmbXh3S3BRZ0hpSDJZOXc9PS0tZzQvYkFmM1VVMllQeHRpUDN0V0tGdz09--eb238de141fc37ee39dc0524a912027274106c4b; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: b65b9e36-09d4-4940-88a3-61e20ebc293c
X-Runtime: 0.006569
X-XSS-Protection: 1; mode=block

[
  {
    "id": 2,
    "subject": "グループ-124",
    "priority": 88,
    "url": "http://www.example.com/api/v1/groups/2"
  },
  {
    "id": 3,
    "subject": "グループ-125",
    "priority": 89,
    "url": "http://www.example.com/api/v1/groups/3"
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
Cookie: _task-board_session=b0hEVW83R2FhUVhsT3p1L2hIelRjQkpLK1psZzFxTm9SczdPRkMvMFBvQkFTTXJhK0l6RXE1cHFsVy81OFczRlZNTmpxUTR6elBYNEZ3TmVsTWNUNGc9PS0tYW9xQzFuZFIrSjZKSmp5WndkWU5Bdz09--5330d84846e249576811ddd30d5a39c42b85650d;request_method=DELETE
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 199
Content-Type: application/json; charset=utf-8
ETag: W/"e2c047cf2de59c8a93a0ff7ab2aaefc9"
Set-Cookie: _task-board_session=eTgwY1kzcUJPVmZ5WkxINnh0SW9wZURpeVVnYlJFaWw4c2RHcDJ5bTlTcVF2dEZOY2Zyb2lJQlQ4NGVEUmdFK00rM0gvUTBmbXh3S3BRZ0hpSDJZOXc9PS0tZzQvYkFmM1VVMllQeHRpUDN0V0tGdz09--eb238de141fc37ee39dc0524a912027274106c4b; path=/; HttpOnly
request_method=; path=/; max-age=0; expires=Thu, 01 Jan 1970 00:00:00 -0000
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: b65b9e36-09d4-4940-88a3-61e20ebc293c
X-Runtime: 0.006569
X-XSS-Protection: 1; mode=block

[
  {
    "id": 2,
    "subject": "グループ-124",
    "priority": 88,
    "url": "http://www.example.com/api/v1/groups/2"
  },
  {
    "id": 3,
    "subject": "グループ-125",
    "priority": 89,
    "url": "http://www.example.com/api/v1/groups/3"
  }
]
```
