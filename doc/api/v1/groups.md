## GET /api/v1/groups/:id
Deletes a group.

### Example

#### Request
```json
GET /api/v1/boards/1/groups?{} HTTP/1.1

```

#### Response
```json
HTTP/1.1 200


[
  {
    "id": 2,
    "subject": "グループ-10",
    "priority": 22,
    "url": "http://www.example.com/api/v1/groups/2"
  },
  {
    "id": 3,
    "subject": "グループ-11",
    "priority": 23,
    "url": "http://www.example.com/api/v1/groups/3"
  }
]
```

## GET /api/v1/groups/:id
Updates a group.

### Example

#### Request
```json
GET /api/v1/boards/1/groups?{} HTTP/1.1

```

#### Response
```json
HTTP/1.1 200


[
  {
    "id": 2,
    "subject": "グループ-10",
    "priority": 22,
    "url": "http://www.example.com/api/v1/groups/2"
  },
  {
    "id": 3,
    "subject": "グループ-11",
    "priority": 23,
    "url": "http://www.example.com/api/v1/groups/3"
  }
]
```

## GET /api/v1/boards/:board_id/groups/dryrun
Returns ng and not creates.

### Example

#### Request
```json
GET /api/v1/boards/1/groups?{} HTTP/1.1

```

#### Response
```json
HTTP/1.1 200


[
  {
    "id": 2,
    "subject": "グループ-10",
    "priority": 22,
    "url": "http://www.example.com/api/v1/groups/2"
  },
  {
    "id": 3,
    "subject": "グループ-11",
    "priority": 23,
    "url": "http://www.example.com/api/v1/groups/3"
  }
]
```

## GET /api/v1/groups/:id
Retruns a group.

### Example

#### Request
```json
GET /api/v1/boards/1/groups?{} HTTP/1.1

```

#### Response
```json
HTTP/1.1 200


[
  {
    "id": 2,
    "subject": "グループ-10",
    "priority": 22,
    "url": "http://www.example.com/api/v1/groups/2"
  },
  {
    "id": 3,
    "subject": "グループ-11",
    "priority": 23,
    "url": "http://www.example.com/api/v1/groups/3"
  }
]
```

## GET /api/v1/groups/:id/dryrun
Returns ng and not updates.

### Example

#### Request
```json
GET /api/v1/boards/1/groups?{} HTTP/1.1

```

#### Response
```json
HTTP/1.1 200


[
  {
    "id": 2,
    "subject": "グループ-10",
    "priority": 22,
    "url": "http://www.example.com/api/v1/groups/2"
  },
  {
    "id": 3,
    "subject": "グループ-11",
    "priority": 23,
    "url": "http://www.example.com/api/v1/groups/3"
  }
]
```

## GET /api/v1/boards/:board_id/groups
Adds a group.

### Example

#### Request
```json
GET /api/v1/boards/1/groups?{} HTTP/1.1

```

#### Response
```json
HTTP/1.1 200


[
  {
    "id": 2,
    "subject": "グループ-10",
    "priority": 22,
    "url": "http://www.example.com/api/v1/groups/2"
  },
  {
    "id": 3,
    "subject": "グループ-11",
    "priority": 23,
    "url": "http://www.example.com/api/v1/groups/3"
  }
]
```

## GET /api/v1/boards/:board_id/groups
Returns groups.

### Example

#### Request
```json
GET /api/v1/boards/1/groups?{} HTTP/1.1

```

#### Response
```json
HTTP/1.1 200


[
  {
    "id": 2,
    "subject": "グループ-10",
    "priority": 22,
    "url": "http://www.example.com/api/v1/groups/2"
  },
  {
    "id": 3,
    "subject": "グループ-11",
    "priority": 23,
    "url": "http://www.example.com/api/v1/groups/3"
  }
]
```
