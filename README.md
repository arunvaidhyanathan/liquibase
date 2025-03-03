# liquibase
Liquibase for Database Versioning

## postgresql Details
url=jdbc:postgresql://localhost:5432/workflow
username=arun
password=password
schemas=cads


## Prerequisites

Ensure you have Java Development Kit (JDK 17+)
If you do not already have a Spring Boot application, you can create one with the Spring Initializer:
Under Project, select Maven Project depending on your preference.
Select Java as your Language.
Under Spring Boot, select the version you would like to use.
For Packaging, select Jar.
Use version 17 or later for Java.
Under Dependencies, select Liquibase Migration, Spring Data JPA, and database you plan to use, such as Postgresql.
GENERATE the project template

## Add Liquibase dependency

If you did not already add the Liquibase dependency when creating your project, you can add it manually by adding org.liquibase:liquibase-core as a dependency to your project.

## Add a Changelog File

Create a changelog file in your project. By default, The Spring Boot Liquibase integration looks for a file named db.changelog-master.xml in the src/main/resources/db/changelog directory.

<?xml version="1.0" encoding="UTF-8"?>
<databaseChangeLog
        xmlns="http://www.liquibase.org/xml/ns/dbchangelog"
        xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
        xsi:schemaLocation="http://www.liquibase.org/xml/ns/dbchangelog http://www.liquibase.org/xml/ns/dbchangelog/dbchangelog-latest.xsd">

   <changeSet id="1" author="my_name">
      <createTable tableName="test_table">
         <column name="test_id" type="int">
            <constraints primaryKey="true"/>
         </column>
         <column name="test_column" type="INT"/>
      </createTable>
   </changeSet>

</databaseChangeLog>

## Generate the Liquibase Change Log for baseline of the existing data base as SQL, JSON, XML and YAML

## Creating Springboot project
curl -s https://start.spring.io/starter.tgz -d type=maven-project -d language=java -d bootVersion=3.3.0 -d baseDir=liquibase-demo -d groupId=com.example -d artifactId=liquibase-demo -d name=liquibase-demo -d description=Demo project for Spring Boot with Liquibase -d packageName=com.example.liquibasedemo -d packaging=jar -d javaVersion=17 -d dependencies=liquibase,data-jpa,postgresql -o liquibase-demo.tgz


# Generate baseline changelog in different formats

# Generate SQL format
mvn liquibase:generateChangeLog -Dliquibase.diffTypes=tables,views,columns,indexes,foreignkeys,primarykeys,uniqueconstraints -Dliquibase.outputChangeLogFile=src/main/resources/db/changelog/baseline-changelog.sql

# Generate JSON format
mvn liquibase:generateChangeLog -Dliquibase.diffTypes=tables,views,columns,indexes,foreignkeys,primarykeys,uniqueconstraints -Dliquibase.outputChangeLogFile=src/main/resources/db/changelog/baseline-changelog.json -Dliquibase.outputFormat=json

# Generate YAML format
mvn liquibase:generateChangeLog -Dliquibase.diffTypes=tables,views,columns,indexes,foreignkeys,primarykeys,uniqueconstraints -Dliquibase.outputChangeLogFile=src/main/resources/db/changelog/baseline-changelog.yaml -Dliquibase.outputFormat=yaml

# Generate XML format
mvn liquibase:generateChangeLog -Dliquibase.diffTypes=tables,views,columns,indexes,foreignkeys,primarykeys,uniqueconstraints -Dliquibase.outputChangeLogFile=src/main/resources/db/changelog/baseline-changelog.xml