## PATCH /api/v1/groups/:id
Retruns a group.

### Example

#### Request

##### Header
```
PATCH /api/v1/groups/2
```


##### Body
```json


{
  "group": {
    "subject": "changed subject",
    "body": "グループ本文\n15",
    "priority": 25,
    "created_by": 35
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
  "id": 2,
  "subject": "changed subject",
  "priority": 25,
  "created_at": "2015-11-14T07:34:16.720+09:00",
  "updated_at": "2015-11-14T07:34:16.728+09:00",
  "board": {
    "id": 1,
    "subject": "ボード-23",
    "priority": 1025,
    "created_at": "2015-11-14T07:34:16.717+09:00",
    "updated_at": "2015-11-14T07:34:16.717+09:00"
  },
  "members": [

  ],
  "tasks": [

  ]
}
```


## PATCH /api/v1/boards/:board_id/groups
Adds a group.

### Example

#### Request

##### Header
```
PATCH /api/v1/groups/2
```


##### Body
```json


{
  "group": {
    "subject": "changed subject",
    "body": "グループ本文\n15",
    "priority": 25,
    "created_by": 35
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
  "id": 2,
  "subject": "changed subject",
  "priority": 25,
  "created_at": "2015-11-14T07:34:16.720+09:00",
  "updated_at": "2015-11-14T07:34:16.728+09:00",
  "board": {
    "id": 1,
    "subject": "ボード-23",
    "priority": 1025,
    "created_at": "2015-11-14T07:34:16.717+09:00",
    "updated_at": "2015-11-14T07:34:16.717+09:00"
  },
  "members": [

  ],
  "tasks": [

  ]
}
```


## PATCH /api/v1/groups/:id/dryrun
Returns ng and not updates.

### Example

#### Request

##### Header
```
PATCH /api/v1/groups/2
```


##### Body
```json


{
  "group": {
    "subject": "changed subject",
    "body": "グループ本文\n15",
    "priority": 25,
    "created_by": 35
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
  "id": 2,
  "subject": "changed subject",
  "priority": 25,
  "created_at": "2015-11-14T07:34:16.720+09:00",
  "updated_at": "2015-11-14T07:34:16.728+09:00",
  "board": {
    "id": 1,
    "subject": "ボード-23",
    "priority": 1025,
    "created_at": "2015-11-14T07:34:16.717+09:00",
    "updated_at": "2015-11-14T07:34:16.717+09:00"
  },
  "members": [

  ],
  "tasks": [

  ]
}
```


## PATCH /api/v1/boards/:board_id/groups/dryrun
Returns ng and not creates.

### Example

#### Request

##### Header
```
PATCH /api/v1/groups/2
```


##### Body
```json


{
  "group": {
    "subject": "changed subject",
    "body": "グループ本文\n15",
    "priority": 25,
    "created_by": 35
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
  "id": 2,
  "subject": "changed subject",
  "priority": 25,
  "created_at": "2015-11-14T07:34:16.720+09:00",
  "updated_at": "2015-11-14T07:34:16.728+09:00",
  "board": {
    "id": 1,
    "subject": "ボード-23",
    "priority": 1025,
    "created_at": "2015-11-14T07:34:16.717+09:00",
    "updated_at": "2015-11-14T07:34:16.717+09:00"
  },
  "members": [

  ],
  "tasks": [

  ]
}
```


## PATCH /api/v1/groups/:id
Deletes a group.

### Example

#### Request

##### Header
```
PATCH /api/v1/groups/2
```


##### Body
```json


{
  "group": {
    "subject": "changed subject",
    "body": "グループ本文\n15",
    "priority": 25,
    "created_by": 35
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
  "id": 2,
  "subject": "changed subject",
  "priority": 25,
  "created_at": "2015-11-14T07:34:16.720+09:00",
  "updated_at": "2015-11-14T07:34:16.728+09:00",
  "board": {
    "id": 1,
    "subject": "ボード-23",
    "priority": 1025,
    "created_at": "2015-11-14T07:34:16.717+09:00",
    "updated_at": "2015-11-14T07:34:16.717+09:00"
  },
  "members": [

  ],
  "tasks": [

  ]
}
```


## PATCH /api/v1/boards/:board_id/groups
Returns groups.

### Example

#### Request

##### Header
```
PATCH /api/v1/groups/2
```


##### Body
```json


{
  "group": {
    "subject": "changed subject",
    "body": "グループ本文\n15",
    "priority": 25,
    "created_by": 35
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
  "id": 2,
  "subject": "changed subject",
  "priority": 25,
  "created_at": "2015-11-14T07:34:16.720+09:00",
  "updated_at": "2015-11-14T07:34:16.728+09:00",
  "board": {
    "id": 1,
    "subject": "ボード-23",
    "priority": 1025,
    "created_at": "2015-11-14T07:34:16.717+09:00",
    "updated_at": "2015-11-14T07:34:16.717+09:00"
  },
  "members": [

  ],
  "tasks": [

  ]
}
```


## PATCH /api/v1/groups/:id
Updates a group.

### Example

#### Request

##### Header
```
PATCH /api/v1/groups/2
```


##### Body
```json


{
  "group": {
    "subject": "changed subject",
    "body": "グループ本文\n15",
    "priority": 25,
    "created_by": 35
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
  "id": 2,
  "subject": "changed subject",
  "priority": 25,
  "created_at": "2015-11-14T07:34:16.720+09:00",
  "updated_at": "2015-11-14T07:34:16.728+09:00",
  "board": {
    "id": 1,
    "subject": "ボード-23",
    "priority": 1025,
    "created_at": "2015-11-14T07:34:16.717+09:00",
    "updated_at": "2015-11-14T07:34:16.717+09:00"
  },
  "members": [

  ],
  "tasks": [

  ]
}
```
