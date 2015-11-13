## PATCH /api/v1/groups/:group_id/tasks
Returns tasks.

### Example

#### Request
```json
PATCH /api/v1/tasks/3/dryrun HTTP/1.1


{
  "task": {
    "subject": "changed subject",
    "body": "changed body",
    "priority": 117,
    "created_by": 217
  }
}
```

#### Response
```json
HTTP/1.1 200


{
  "id": 3,
  "subject": "changed subject",
  "body": "changed body",
  "priority": 117,
  "created_at": "2015-11-14T07:06:25.399+09:00",
  "updated_at": "2015-11-14T07:06:25.399+09:00",
  "group": {
    "id": 2,
    "subject": "グループ-86",
    "priority": 50,
    "created_at": "2015-11-14T07:06:25.396+09:00",
    "updated_at": "2015-11-14T07:06:25.396+09:00"
  },
  "members": [

  ]
}
```

## PATCH /api/v1/tasks/:id
Updates a task.

### Example

#### Request
```json
PATCH /api/v1/tasks/3/dryrun HTTP/1.1


{
  "task": {
    "subject": "changed subject",
    "body": "changed body",
    "priority": 117,
    "created_by": 217
  }
}
```

#### Response
```json
HTTP/1.1 200


{
  "id": 3,
  "subject": "changed subject",
  "body": "changed body",
  "priority": 117,
  "created_at": "2015-11-14T07:06:25.399+09:00",
  "updated_at": "2015-11-14T07:06:25.399+09:00",
  "group": {
    "id": 2,
    "subject": "グループ-86",
    "priority": 50,
    "created_at": "2015-11-14T07:06:25.396+09:00",
    "updated_at": "2015-11-14T07:06:25.396+09:00"
  },
  "members": [

  ]
}
```

## PATCH /api/v1/tasks/:id
Deletes a task.

### Example

#### Request
```json
PATCH /api/v1/tasks/3/dryrun HTTP/1.1


{
  "task": {
    "subject": "changed subject",
    "body": "changed body",
    "priority": 117,
    "created_by": 217
  }
}
```

#### Response
```json
HTTP/1.1 200


{
  "id": 3,
  "subject": "changed subject",
  "body": "changed body",
  "priority": 117,
  "created_at": "2015-11-14T07:06:25.399+09:00",
  "updated_at": "2015-11-14T07:06:25.399+09:00",
  "group": {
    "id": 2,
    "subject": "グループ-86",
    "priority": 50,
    "created_at": "2015-11-14T07:06:25.396+09:00",
    "updated_at": "2015-11-14T07:06:25.396+09:00"
  },
  "members": [

  ]
}
```

## PATCH /api/v1/groups/:group_id/tasks/dryrun
Returns ng and not creates.

### Example

#### Request
```json
PATCH /api/v1/tasks/3/dryrun HTTP/1.1


{
  "task": {
    "subject": "changed subject",
    "body": "changed body",
    "priority": 117,
    "created_by": 217
  }
}
```

#### Response
```json
HTTP/1.1 200


{
  "id": 3,
  "subject": "changed subject",
  "body": "changed body",
  "priority": 117,
  "created_at": "2015-11-14T07:06:25.399+09:00",
  "updated_at": "2015-11-14T07:06:25.399+09:00",
  "group": {
    "id": 2,
    "subject": "グループ-86",
    "priority": 50,
    "created_at": "2015-11-14T07:06:25.396+09:00",
    "updated_at": "2015-11-14T07:06:25.396+09:00"
  },
  "members": [

  ]
}
```

## PATCH /api/v1/groups/:group_id/tasks
Adds a task.

### Example

#### Request
```json
PATCH /api/v1/tasks/3/dryrun HTTP/1.1


{
  "task": {
    "subject": "changed subject",
    "body": "changed body",
    "priority": 117,
    "created_by": 217
  }
}
```

#### Response
```json
HTTP/1.1 200


{
  "id": 3,
  "subject": "changed subject",
  "body": "changed body",
  "priority": 117,
  "created_at": "2015-11-14T07:06:25.399+09:00",
  "updated_at": "2015-11-14T07:06:25.399+09:00",
  "group": {
    "id": 2,
    "subject": "グループ-86",
    "priority": 50,
    "created_at": "2015-11-14T07:06:25.396+09:00",
    "updated_at": "2015-11-14T07:06:25.396+09:00"
  },
  "members": [

  ]
}
```

## PATCH /api/v1/tasks/:id
Returns a task.

### Example

#### Request
```json
PATCH /api/v1/tasks/3/dryrun HTTP/1.1


{
  "task": {
    "subject": "changed subject",
    "body": "changed body",
    "priority": 117,
    "created_by": 217
  }
}
```

#### Response
```json
HTTP/1.1 200


{
  "id": 3,
  "subject": "changed subject",
  "body": "changed body",
  "priority": 117,
  "created_at": "2015-11-14T07:06:25.399+09:00",
  "updated_at": "2015-11-14T07:06:25.399+09:00",
  "group": {
    "id": 2,
    "subject": "グループ-86",
    "priority": 50,
    "created_at": "2015-11-14T07:06:25.396+09:00",
    "updated_at": "2015-11-14T07:06:25.396+09:00"
  },
  "members": [

  ]
}
```

## PATCH /api/v1/tasks/:id/dryrun
Returns ng and not updates.

### Example

#### Request
```json
PATCH /api/v1/tasks/3/dryrun HTTP/1.1


{
  "task": {
    "subject": "changed subject",
    "body": "changed body",
    "priority": 117,
    "created_by": 217
  }
}
```

#### Response
```json
HTTP/1.1 200


{
  "id": 3,
  "subject": "changed subject",
  "body": "changed body",
  "priority": 117,
  "created_at": "2015-11-14T07:06:25.399+09:00",
  "updated_at": "2015-11-14T07:06:25.399+09:00",
  "group": {
    "id": 2,
    "subject": "グループ-86",
    "priority": 50,
    "created_at": "2015-11-14T07:06:25.396+09:00",
    "updated_at": "2015-11-14T07:06:25.396+09:00"
  },
  "members": [

  ]
}
```
