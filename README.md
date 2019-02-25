# Comp421 Deliverable 2
## Basics
1. SSH into db server:
```
ssh comp421.cs.mcgill.ca -l cs421g41
```
You will be prompted for the password.

2. To connect to database:
```
psql cs421
```
The password is the same as before.

## Set Up the Schema
(**WARNING:** this will nuke the database)

To set up database from scratch:
```
psql cs421 --echo-all < setup.sql > setup.log 2>&1
```
The password is the same as before.
