# How to setup MongoDb Replica Set with replica key

The repository is example for how to setup replica set in local machine with docker containers.

## How to run

1. Github Codespace
        
- Start database

```Bash
sh run.sh 
```

- Shutdown database
```Bash
sh shutdown.sh
```

- Connect to mongoDB primary instantce

```Bash
docker exec -it mongodb1 mongosh
```

2. In local machine

- Start database

```Bash
./run.sh 
```

- Shutdown database
```Bash
./shutdown.sh
```

- Connect to mongoDB primary instantce

```Bash
docker exec -it mongodb1 mongosh
```

## How to create replica key

```Bash
openssl rand -base64 756 > ./mongo/replica.key
chmod 400 ./mongo/replica.key
```

Reference document 
- [Deploy Replica Set With Keyfile Authentication](https://www.mongodb.com/docs/manual/tutorial/deploy-replica-set-with-keyfile-access-control/)
- [Create a replica set in MongoDB with Docker Compose](https://blog.tericcabrel.com/mongodb-replica-set-docker-compose/)
