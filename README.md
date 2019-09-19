# Forest Service Database

This projest is a database for the forest service. It includes a mysql database and a nodejs application. The application runs in docker containers.

# How To Contribute

### Setup
* Ensure that Docker is installed on your machine
* Ensure that docker-compose is installed on your machine
* Clone the git repo https://github.com/alexsimons/ForestryServiceDatabase.git
* From the root directory, run the following command:
	* `docker-compose up --build`

### Database
To contribute to the database, reference the following example:
* Create a new file `CreateExample.sql` in the `./sql-scripts/` directory
* Add the following sql query into the file:
	* `CREATE  TABLE example(example_name varchar(25), example_description varchar(25));`
* Save `CreateExample.sql`
* From the root directory, run the following command:
	* `docker-compose up --build`

### Node Application
To contribute to the node application, reference the following example:
* Make file changes in the `web-app` directory
* From the root directory, run the following command:
	* `docker-compose up --build`

