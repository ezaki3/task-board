## GET /api/v1/users
Returns all users.

### Example

#### Request
```
GET /api/v1/users HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Cookie: _task-board_session=OUhibGJ0SmN4c0MrT1hmNGlQa3hKWHA3WTFaQTBwd1I2dlpjVFgyU2Jia255VGNyb1hRQk5haVVvL2krcE16MEZWZ3NESjVMbXY1UWtpcmo1ZmE3S0E9PS0tRjVKQS84YUFVa3oxaTdJQ0kxTlIyQT09--90a7a71f5a28b9a9b0b88e36c4bbe3ffb11d8546
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 706
Content-Type: application/json; charset=utf-8
ETag: W/"6e9a4844d44d5c23b31db830c6eb7c0e"
Set-Cookie: _task-board_session=dGZLU3ZaZlJDeW03OG1qcVR3NFFzQVg0L2Zscmw0ZDByUUZGS21QOEZkUVlFNWpXZ3JFTmJsRWtINFo0TkN0d1JrWWJ0ei82OExjZkdqNFV4b2lpZnc9PS0tTTJMNUxvWmhwYlNRYU4xZjNPY2MyUT09--75ff420c75910e0e2c28c194bb8f5c99b20cb4ef; path=/; HttpOnly
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: b23c94fb-1b0e-41da-8c7a-0a60ce918be9
X-Runtime: 0.011873
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "provider": "githug",
    "uid": "11116",
    "nickname": "nice-gvd",
    "email": "nice-guy@example.cor",
    "name": "Nice Gvd",
    "url": "http://www.example.com/api/v1/users/1",
    "avatar_url": "https://nice-guy.example.com/nice-guy.pnl",
    "gravatar_id": "7"
  },
  {
    "id": 2,
    "provider": "githuh",
    "uid": "11117",
    "nickname": "nice-gve",
    "email": "nice-guy@example.cos",
    "name": "Nice Gve",
    "url": "http://www.example.com/api/v1/users/2",
    "avatar_url": "https://nice-guy.example.com/nice-guy.pnm",
    "gravatar_id": "8"
  },
  {
    "id": 3,
    "provider": "githui",
    "uid": "11118",
    "nickname": "nice-gvf",
    "email": "nice-guy@example.cot",
    "name": "Nice Gvf",
    "url": "http://www.example.com/api/v1/users/3",
    "avatar_url": "https://nice-guy.example.com/nice-guy.pnn",
    "gravatar_id": "9"
  }
]
```

## GET /api/v1/users
Returns matching users.

### Example

#### Request
```
GET /api/v1/users?nickname=ppy HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Cookie: _task-board_session=bWJRNUJIdk9aYWM4MDQvdFlreEJ2cFR5ZWR5bkhnR0VvMzNISkwwNFNER0Q2eXdEL0lQcSt6UkdHM01vSXE2cldKdm55YnpWQjk2QW8weUkxRlhRbmc9PS0taXZQdHMrNS9YUzhoWHBsYTB3M1dpQT09--71445d2972ea0a7a4efe7b1975510e33f6cb8e5f
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 238
Content-Type: application/json; charset=utf-8
ETag: W/"57d3f36dce45a024f55f244402f82c1d"
Set-Cookie: _task-board_session=V1p0ajVZZy9PQkdXNFRCcHUzN2tUdzRyR0RZMzhvSFEvSXVZaXF0SlFuYjlWRmtwdklJNUNsT1JjTE5veG1WYjB1V1R1bGNURnlRcXF6ZE1KV3BCVUE9PS0tS1JoM1VqVUN5ZVJlLy9pd3FqaXFiUT09--ef07b24d0e31323d57730914a891bc4792fb2bac; path=/; HttpOnly
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: ff2f2604-d0aa-4655-bf41-d63c014609ef
X-Runtime: 0.003899
X-XSS-Protection: 1; mode=block

[
  {
    "id": 3,
    "provider": "githul",
    "uid": "11121",
    "nickname": "happy-cat",
    "email": "nice-guy@example.cow",
    "name": "Nice Gvi",
    "url": "http://www.example.com/api/v1/users/3",
    "avatar_url": "https://nice-guy.example.com/nice-guy.pnq",
    "gravatar_id": "12"
  }
]
```

## GET /api/v1/users
Returns orderd users asc.

### Example

#### Request
```
GET /api/v1/users?order_by=nickname HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Cookie: _task-board_session=WXp1K29xKzE4Tm54SnhKWHV5bmFTNnZaaWdZNUZhdVFHdUNHQWZzUVY3WFRUK2g2dnNBZ3NlY3JYNDlHMDk2MGJNZ0tkcnpNbEFHVGNaSTJFSW92RUE9PS0tbi9sY0J1MG1kcXBtNC82TFd0Z0hmUT09--416694f211b2c9f37f6f680317b4b1203d18e2f2
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 699
Content-Type: application/json; charset=utf-8
ETag: W/"4a6ffec2d0831c1dafc9f61ba530221e"
Set-Cookie: _task-board_session=elhwam1DL2FCQklxTUI5UVVaQytnbHBQWDNEOU9EQmt0am9UK040Y280QjFwdm96L2ZrLzU2dW5FQkQwV05mQ3JFbjJOVnJPQ09peTRjaUdqK0RIOEE9PS0tMEVid0VJWFBEU1JtQUhLYzNuRUQ1QT09--94ed6b40e378e51ea2ccc05126410676eb0a7d19; path=/; HttpOnly
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: d3619cdf-0147-4f42-8a38-3c59b60b7f16
X-Runtime: 0.003366
X-XSS-Protection: 1; mode=block

[
  {
    "id": 3,
    "provider": "githuo",
    "uid": "11124",
    "nickname": "aaa",
    "email": "nice-guy@example.coz",
    "name": "Nice Gvl",
    "url": "http://www.example.com/api/v1/users/3",
    "avatar_url": "https://nice-guy.example.com/nice-guy.pnt",
    "gravatar_id": "15"
  },
  {
    "id": 2,
    "provider": "githun",
    "uid": "11123",
    "nickname": "bbb",
    "email": "nice-guy@example.coy",
    "name": "Nice Gvk",
    "url": "http://www.example.com/api/v1/users/2",
    "avatar_url": "https://nice-guy.example.com/nice-guy.pns",
    "gravatar_id": "14"
  },
  {
    "id": 1,
    "provider": "githum",
    "uid": "11122",
    "nickname": "nice-gvh",
    "email": "nice-guy@example.cox",
    "name": "Nice Gvj",
    "url": "http://www.example.com/api/v1/users/1",
    "avatar_url": "https://nice-guy.example.com/nice-guy.pnr",
    "gravatar_id": "13"
  }
]
```

## GET /api/v1/users
Returns orderd users desc.

### Example

#### Request
```
GET /api/v1/users?order_by=nickname&direction=desc HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Cookie: _task-board_session=NWdXNDZEZ0dZTHdCNlhaVHkvaHlTNDY2dmxvZnRiNEZkWGpkVGdvd3hwZTVqTjAxa1Z6SUV4eXFQMnZsMkZ1MEQvVWN2aEFvT2xPcDhXUHF5eVpMREE9PS0tMTl4dVJVcmZXeFJjQ1VsaWNMZ3E3QT09--cfe27d957d8578fb53597e45c98669edbf93d4c2
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 699
Content-Type: application/json; charset=utf-8
ETag: W/"f8dfb3b402be8320b55b3fc49d606ef5"
Set-Cookie: _task-board_session=MldxbWZJQndHMU1NTHJ4NHIxR1ZkZ2c1ODdtY3hhSHVhcVpodjlMU0RyNnF4eENKRnhOQUNNVGVsMGcxYndZSzROTEdGbHVMU29LNzZvOUF1bWNUU1E9PS0tUkVLTXp0YlFKZzkvQzBCUDlTQzlaUT09--72bf77f05b24d49456cf309cbc0da24e9b1ac78e; path=/; HttpOnly
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 76d924c6-7677-4a18-a3d7-da4cf961bca5
X-Runtime: 0.003043
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1,
    "provider": "githup",
    "uid": "11125",
    "nickname": "nice-gvi",
    "email": "nice-guy@example.cpa",
    "name": "Nice Gvm",
    "url": "http://www.example.com/api/v1/users/1",
    "avatar_url": "https://nice-guy.example.com/nice-guy.pnu",
    "gravatar_id": "16"
  },
  {
    "id": 2,
    "provider": "githuq",
    "uid": "11126",
    "nickname": "bbb",
    "email": "nice-guy@example.cpb",
    "name": "Nice Gvn",
    "url": "http://www.example.com/api/v1/users/2",
    "avatar_url": "https://nice-guy.example.com/nice-guy.pnv",
    "gravatar_id": "17"
  },
  {
    "id": 3,
    "provider": "githur",
    "uid": "11127",
    "nickname": "aaa",
    "email": "nice-guy@example.cpc",
    "name": "Nice Gvo",
    "url": "http://www.example.com/api/v1/users/3",
    "avatar_url": "https://nice-guy.example.com/nice-guy.pnw",
    "gravatar_id": "18"
  }
]
```

## GET /api/v1/users/:id
Returns a user.

### Example

#### Request
```
GET /api/v1/users/2 HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Cookie: _task-board_session=OGhoSnVTK3FuQno2TzVHQ1BQTURBZ241MXdpUHlsR29qY2NEWGYrT1lta2Yzd2UwL2M4eUNnSVMzbDZLZ2wrVTl1d1lscG03bHcyNUFYSUswT3JHdXc9PS0tci9QOXFHYlNsclJNWktlNkFWSm9hdz09--8c054c922ac43f8959f934adf459743739c99acf
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 315
Content-Type: application/json; charset=utf-8
ETag: W/"3b6e16775875f5a8bc803961c16eef38"
Set-Cookie: _task-board_session=NUNzck1idlhxaHdBeFFlTlU3ekVCUVNtVFVHWmpxZUF1QndST3h6bGdGRmN6YnZIcjU2MSs0MG9BbEJuaHRUbkxMQ3VZbkxjcWJnNGJqMVZCVnVKRkE9PS0tc05Ha2Y1eFN4QXh1elVlQWQ1Y3pJQT09--92f59e503e5e2462ddf28670713df872a5def8d5; path=/; HttpOnly
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 598e4b4b-5918-4110-a47e-fa2b4a875851
X-Runtime: 0.003109
X-XSS-Protection: 1; mode=block

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
  "created_at": "2015-11-13T22:09:45.470+09:00",
  "updated_at": "2015-11-13T22:09:45.470+09:00"
}
```

## GET /api/v1/users/current
Returns user info who logged in.

### Example

#### Request
```
GET /api/v1/users/current HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Cookie: _task-board_session=WVAycmZDTkhyS1dRWnlaUUdGSEVud3RMQTBYaEZwWThUY2dubG9EUGpSdEFsdW5UV0Z3Q0lPUFp2VndlNjJFUlN5RjRicDZ1dVhDTTRRVHRIcFM5UEE9PS0tcmltWUZzZERmN0JtQzBKQjgreG1qZz09--d066f99beca069c41399fddbfba3b25913249d7d
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 315
Content-Type: application/json; charset=utf-8
ETag: W/"a7270baa0637e487b8bd40319efd27e2"
Set-Cookie: _task-board_session=dTY3Z28yQ1pzNStjTmg0QmxHNVFXVzArOUtSaCtNN1hiOUVJYVFtTUY1UUFOVEJxc0taQk1yLzV0bzc1VTJqTU5ERzk4bnJCemRWY1dTMEtXQ1preUE9PS0tbllaaTA3WUJFWkZPNmc0QjNBS1FyUT09--6db0dc88885f093a2aa6432aafaf7a9a769cbab4; path=/; HttpOnly
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: aeaf36f2-d977-43e4-ad6a-5c233bd41037
X-Runtime: 0.003618
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "provider": "githuv",
  "uid": "11131",
  "nickname": "nice-gvm",
  "email": "nice-guy@example.cpg",
  "name": "Nice Gvs",
  "url": "http://nice-guy.example.cpg",
  "avatar_url": "https://nice-guy.example.com/nice-guy.poa",
  "gravatar_id": "22",
  "created_at": "2015-11-13T22:09:45.477+09:00",
  "updated_at": "2015-11-13T22:09:45.477+09:00"
}
```
