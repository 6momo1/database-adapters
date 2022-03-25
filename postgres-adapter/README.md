Run 

# Running the Database
To set up postgres docker container, run:
``` bash
docker-compose up -d
```

## Connect to the database with:

### psql
run:
``` bash
psql -h localhost -p 5432 -U postgres -W   
```

### pgAdmin

install pgAdmin and enter the credentials in the docker-compose file.


### docker command line:
run:
``` bash
# easy way:
docker exec -it postgresdb bash
psql -U postgres

# harder way:
# find the container_id to connect to:
docker ps -f "name=postgres"
# connect to database and populate it by running:
docker exec -it <CONTAINER_ID> /bin/bash
```
## Exit
Finally, take down the database by runnning:
```
docker-compose down
```

# Interacting with Postgres Commands

After you've connected to the database you can run the commands listed here:
https://www.postgresqltutorial.com/psql-commands/


# references: 
- postgresSQL Tutorial: https://www.postgresqltutorial.com/
- https://github.com/jdaarevalo/docker_postgres_with_data/
- https://betterprogramming.pub/connect-from-local-machine-to-postgresql-docker-container-f785f00461a7
- https://geshan.com.np/blog/2021/12/docker-postgres/
- https://levelup.gitconnected.com/creating-and-filling-a-postgres-db-with-docker-compose-e1607f6f882f
- https://www.tutorialspoint.com/postgresql
