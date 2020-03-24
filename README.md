# admin-mongo-docker
An open source admin user interface for your MongoDB https://adminmongo.markmoffat.com/

## Docker

`docker run -d -p 1234:1234 imilindsingh/admin-mongo`

## Docker Compose

```yml
version: "3"

services:
  mongo-admin:
      image: imilindsingh/admin-mongo
      ports:
        - 1234:1234
```

Run 127.0.0.1:1234/
