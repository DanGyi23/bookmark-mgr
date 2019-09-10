require 'pg'
require 'bookmarks'

def delete_db_rows
  conn = PG.connect( dbname: 'bookmark_manager_test' )
  conn.exec( "TRUNCATE bookmarks" )
end

def add_db_rows
  Bookmarks.add('http://www.makersacademy.com', "Makers Academy")
  Bookmarks.add('http://www.google.com', "Google")
  Bookmarks.add('http://www.bbc.co.uk/sport', "BBC Sport")
end
