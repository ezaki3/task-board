## GET /api/v1/boards
Adds a new board.

### Example

#### Request
```json
GET /api/v1/boards?{} HTTP/1.1

```

#### Response
```json
HTTP/1.1 200


[
  {
    "id": 1,
    "subject": "ボード-116",
    "priority": 1085,
    "url": "http://www.example.com/api/v1/boards/1"
  },
  {
    "id": 2,
    "subject": "ボード-117",
    "priority": 1086,
    "url": "http://www.example.com/api/v1/boards/2"
  }
]
```

## GET /api/v1/boards/:id
Returns a board.

### Example

#### Request
```json
GET /api/v1/boards?{} HTTP/1.1

```

#### Response
```json
HTTP/1.1 200


[
  {
    "id": 1,
    "subject": "ボード-116",
    "priority": 1085,
    "url": "http://www.example.com/api/v1/boards/1"
  },
  {
    "id": 2,
    "subject": "ボード-117",
    "priority": 1086,
    "url": "http://www.example.com/api/v1/boards/2"
  }
]
```

## GET /api/v1/boards/:id/dryrun
Returns ng and not updates.

### Example

#### Request
```json
GET /api/v1/boards?{} HTTP/1.1

```

#### Response
```json
HTTP/1.1 200


[
  {
    "id": 1,
    "subject": "ボード-116",
    "priority": 1085,
    "url": "http://www.example.com/api/v1/boards/1"
  },
  {
    "id": 2,
    "subject": "ボード-117",
    "priority": 1086,
    "url": "http://www.example.com/api/v1/boards/2"
  }
]
```

## GET /api/v1/boards/:id
Deletes a board.

### Example

#### Request
```json
GET /api/v1/boards?{} HTTP/1.1

```

#### Response
```json
HTTP/1.1 200


[
  {
    "id": 1,
    "subject": "ボード-116",
    "priority": 1085,
    "url": "http://www.example.com/api/v1/boards/1"
  },
  {
    "id": 2,
    "subject": "ボード-117",
    "priority": 1086,
    "url": "http://www.example.com/api/v1/boards/2"
  }
]
```

## GET /api/v1/boards/:id
Updates a board.

### Example

#### Request
```json
GET /api/v1/boards?{} HTTP/1.1

```

#### Response
```json
HTTP/1.1 200


[
  {
    "id": 1,
    "subject": "ボード-116",
    "priority": 1085,
    "url": "http://www.example.com/api/v1/boards/1"
  },
  {
    "id": 2,
    "subject": "ボード-117",
    "priority": 1086,
    "url": "http://www.example.com/api/v1/boards/2"
  }
]
```

## GET /api/v1/boards/dryrun
Returns ng and not creates.

### Example

#### Request
```json
GET /api/v1/boards?{} HTTP/1.1

```

#### Response
```json
HTTP/1.1 200


[
  {
    "id": 1,
    "subject": "ボード-116",
    "priority": 1085,
    "url": "http://www.example.com/api/v1/boards/1"
  },
  {
    "id": 2,
    "subject": "ボード-117",
    "priority": 1086,
    "url": "http://www.example.com/api/v1/boards/2"
  }
]
```

## GET /api/v1/boards
Returns boards.

### Example

#### Request
```json
GET /api/v1/boards?{} HTTP/1.1

```

#### Response
```json
HTTP/1.1 200


[
  {
    "id": 1,
    "subject": "ボード-116",
    "priority": 1085,
    "url": "http://www.example.com/api/v1/boards/1"
  },
  {
    "id": 2,
    "subject": "ボード-117",
    "priority": 1086,
    "url": "http://www.example.com/api/v1/boards/2"
  }
]
```
