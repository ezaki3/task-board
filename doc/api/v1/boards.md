## PATCH /api/v1/boards/:id
Returns a board.

### Example

#### Request

##### Header
```
PATCH /api/v1/boards/1
```


##### Body
```json


{
  "board": {
    "subject": "changed subject",
    "body": "ボード本文\n13",
    "priority": 1013,
    "created_by": 2013
  }
}
```


#### Response

##### Header
```
HTTP/1.1 200
```


##### Body
```json


{
  "id": 1,
  "subject": "changed subject",
  "priority": 1013,
  "created_at": "2015-11-14T07:34:16.408+09:00",
  "updated_at": "2015-11-14T07:34:16.416+09:00",
  "groups": [

  ],
  "members": [
    {
      "id": 2,
      "provider": "githuu",
      "uid": "11130",
      "nickname": "nice-gvl",
      "email": "nice-guy@example.cpf",
      "name": "Nice Gvr",
      "url": "http://nice-guy.example.cpf",
      "avatar_url": "https://nice-guy.example.com/nice-guy.pnz",
      "gravatar_id": "21",
      "created_at": "2015-11-14T07:34:16.406+09:00",
      "updated_at": "2015-11-14T07:34:16.406+09:00"
    }
  ]
}
```


## PATCH /api/v1/boards/dryrun
Returns ng and not creates.

### Example

#### Request

##### Header
```
PATCH /api/v1/boards/1
```


##### Body
```json


{
  "board": {
    "subject": "changed subject",
    "body": "ボード本文\n13",
    "priority": 1013,
    "created_by": 2013
  }
}
```


#### Response

##### Header
```
HTTP/1.1 200
```


##### Body
```json


{
  "id": 1,
  "subject": "changed subject",
  "priority": 1013,
  "created_at": "2015-11-14T07:34:16.408+09:00",
  "updated_at": "2015-11-14T07:34:16.416+09:00",
  "groups": [

  ],
  "members": [
    {
      "id": 2,
      "provider": "githuu",
      "uid": "11130",
      "nickname": "nice-gvl",
      "email": "nice-guy@example.cpf",
      "name": "Nice Gvr",
      "url": "http://nice-guy.example.cpf",
      "avatar_url": "https://nice-guy.example.com/nice-guy.pnz",
      "gravatar_id": "21",
      "created_at": "2015-11-14T07:34:16.406+09:00",
      "updated_at": "2015-11-14T07:34:16.406+09:00"
    }
  ]
}
```


## PATCH /api/v1/boards
Adds a new board.

### Example

#### Request

##### Header
```
PATCH /api/v1/boards/1
```


##### Body
```json


{
  "board": {
    "subject": "changed subject",
    "body": "ボード本文\n13",
    "priority": 1013,
    "created_by": 2013
  }
}
```


#### Response

##### Header
```
HTTP/1.1 200
```


##### Body
```json


{
  "id": 1,
  "subject": "changed subject",
  "priority": 1013,
  "created_at": "2015-11-14T07:34:16.408+09:00",
  "updated_at": "2015-11-14T07:34:16.416+09:00",
  "groups": [

  ],
  "members": [
    {
      "id": 2,
      "provider": "githuu",
      "uid": "11130",
      "nickname": "nice-gvl",
      "email": "nice-guy@example.cpf",
      "name": "Nice Gvr",
      "url": "http://nice-guy.example.cpf",
      "avatar_url": "https://nice-guy.example.com/nice-guy.pnz",
      "gravatar_id": "21",
      "created_at": "2015-11-14T07:34:16.406+09:00",
      "updated_at": "2015-11-14T07:34:16.406+09:00"
    }
  ]
}
```


## PATCH /api/v1/boards/:id/dryrun
Returns ng and not updates.

### Example

#### Request

##### Header
```
PATCH /api/v1/boards/1
```


##### Body
```json


{
  "board": {
    "subject": "changed subject",
    "body": "ボード本文\n13",
    "priority": 1013,
    "created_by": 2013
  }
}
```


#### Response

##### Header
```
HTTP/1.1 200
```


##### Body
```json


{
  "id": 1,
  "subject": "changed subject",
  "priority": 1013,
  "created_at": "2015-11-14T07:34:16.408+09:00",
  "updated_at": "2015-11-14T07:34:16.416+09:00",
  "groups": [

  ],
  "members": [
    {
      "id": 2,
      "provider": "githuu",
      "uid": "11130",
      "nickname": "nice-gvl",
      "email": "nice-guy@example.cpf",
      "name": "Nice Gvr",
      "url": "http://nice-guy.example.cpf",
      "avatar_url": "https://nice-guy.example.com/nice-guy.pnz",
      "gravatar_id": "21",
      "created_at": "2015-11-14T07:34:16.406+09:00",
      "updated_at": "2015-11-14T07:34:16.406+09:00"
    }
  ]
}
```


## PATCH /api/v1/boards
Returns boards.

### Example

#### Request

##### Header
```
PATCH /api/v1/boards/1
```


##### Body
```json


{
  "board": {
    "subject": "changed subject",
    "body": "ボード本文\n13",
    "priority": 1013,
    "created_by": 2013
  }
}
```


#### Response

##### Header
```
HTTP/1.1 200
```


##### Body
```json


{
  "id": 1,
  "subject": "changed subject",
  "priority": 1013,
  "created_at": "2015-11-14T07:34:16.408+09:00",
  "updated_at": "2015-11-14T07:34:16.416+09:00",
  "groups": [

  ],
  "members": [
    {
      "id": 2,
      "provider": "githuu",
      "uid": "11130",
      "nickname": "nice-gvl",
      "email": "nice-guy@example.cpf",
      "name": "Nice Gvr",
      "url": "http://nice-guy.example.cpf",
      "avatar_url": "https://nice-guy.example.com/nice-guy.pnz",
      "gravatar_id": "21",
      "created_at": "2015-11-14T07:34:16.406+09:00",
      "updated_at": "2015-11-14T07:34:16.406+09:00"
    }
  ]
}
```


## PATCH /api/v1/boards/:id
Deletes a board.

### Example

#### Request

##### Header
```
PATCH /api/v1/boards/1
```


##### Body
```json


{
  "board": {
    "subject": "changed subject",
    "body": "ボード本文\n13",
    "priority": 1013,
    "created_by": 2013
  }
}
```


#### Response

##### Header
```
HTTP/1.1 200
```


##### Body
```json


{
  "id": 1,
  "subject": "changed subject",
  "priority": 1013,
  "created_at": "2015-11-14T07:34:16.408+09:00",
  "updated_at": "2015-11-14T07:34:16.416+09:00",
  "groups": [

  ],
  "members": [
    {
      "id": 2,
      "provider": "githuu",
      "uid": "11130",
      "nickname": "nice-gvl",
      "email": "nice-guy@example.cpf",
      "name": "Nice Gvr",
      "url": "http://nice-guy.example.cpf",
      "avatar_url": "https://nice-guy.example.com/nice-guy.pnz",
      "gravatar_id": "21",
      "created_at": "2015-11-14T07:34:16.406+09:00",
      "updated_at": "2015-11-14T07:34:16.406+09:00"
    }
  ]
}
```


## PATCH /api/v1/boards/:id
Updates a board.

### Example

#### Request

##### Header
```
PATCH /api/v1/boards/1
```


##### Body
```json


{
  "board": {
    "subject": "changed subject",
    "body": "ボード本文\n13",
    "priority": 1013,
    "created_by": 2013
  }
}
```


#### Response

##### Header
```
HTTP/1.1 200
```


##### Body
```json


{
  "id": 1,
  "subject": "changed subject",
  "priority": 1013,
  "created_at": "2015-11-14T07:34:16.408+09:00",
  "updated_at": "2015-11-14T07:34:16.416+09:00",
  "groups": [

  ],
  "members": [
    {
      "id": 2,
      "provider": "githuu",
      "uid": "11130",
      "nickname": "nice-gvl",
      "email": "nice-guy@example.cpf",
      "name": "Nice Gvr",
      "url": "http://nice-guy.example.cpf",
      "avatar_url": "https://nice-guy.example.com/nice-guy.pnz",
      "gravatar_id": "21",
      "created_at": "2015-11-14T07:34:16.406+09:00",
      "updated_at": "2015-11-14T07:34:16.406+09:00"
    }
  ]
}
```
