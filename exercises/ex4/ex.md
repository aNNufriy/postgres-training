[Source: codewars.com](https://www.codewars.com/kata/580918e24a85b05ad000010c/train/sql)

### SQL Basics: Simple JOIN with COUNT

For this challenge you need to create a simple SELECT statement that will return all columns from the people table, and join to the toys table so that you can return the COUNT of the toys

*people* table schema
```
d INTEGER
ame VARCHAR(50)
```

*toys* table schema
```
id INTEGER
name VARCHAR(50)
people_id INTEGER
```

You should return all people fields as well as the toy count as "toy_count".

*NOTE: Your solution should use pure SQL.*
