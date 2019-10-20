# Bookmark Manager

#### User stories

```
As a user,
So I can see my bookmarks
I want to be able to show a list of my bookmarks

As a user,
So I can store a url
I want to add a bookmark to my bookmark manager

As a user,
So I can remove unwanted bookmarks
I want to delete existing bookmarks 

As a user,
So I can correct mistakes in my bookmarks
I want to update/edit existing bookmarks
```



#### Domain Models

![](https://github.com/DanGyi23/bookmark-mgr/blob/master/domain_models/domain_model1.png)

#### Creating Database

(Use migrations.sql file)

1. Within project directory, connect to psql with command: psql
2. Create the database with command: CREATE DATABASE bookmark_manager;
3. Connect to the database using command: \c bookmark_manager;
4. CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60), title VARCHAR(60));
