require 'pg'

def delete_db_rows
  conn = PG.connect( dbname: 'bookmark_manager_test' )
  conn.exec( "TRUNCATE bookmarks" )
end

def add_db_rows
  conn = PG.connect( dbname: 'bookmark_manager_test' )
  conn.exec( "INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com')" )
  conn.exec( "INSERT INTO bookmarks VALUES(2, 'http://www.google.com')" )
  conn.exec( "INSERT INTO bookmarks VALUES(3, 'http://www.bbc.co.uk/sport')" )
end