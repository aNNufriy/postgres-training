# SQL puzzlers for training and fun
I'm going to collect some SQL-tasks, used for my training to use basic SQL language.
## Howto
To get postgresql server up and running using advantages of docker-compose, use:

	docker-compose up -d
Now you have docker-container with postgresql ready to use.
Exercises are organized in exercises folder in ex&lt;N&gt; folders. Feel free to play with SQL-code and run them via startin script (&lt;N&gt; stands for exercise number here):

    ./runEx.sh ex<N>

## Exercises
### Ex.1: Students and teachers

There are entities Student and Teacher, every entity has a name.
Every student may have many teachers.
Every teacher may have many students.

Your task:
1. Organize database storing of this information in relational database.
2. Write SQL to query a list of all teachers and number of students for each of them.
