require 'pg'
require 'bookmarks'

def delete_db_rows
  conn = PG.connect( dbname: 'bookmark_manager_test' )
  conn.exec( "TRUNCATE bookmarks" )
end

def add_db_rows
  Bookmarks.add(url: 'http://www.makersacademy.com', title: "Makers Academy")
  Bookmarks.add(url: 'http://www.google.com', title: "Google")
  Bookmarks.add(url: 'http://www.bbc.co.uk/sport', title: "BBC Sport")
end

def persisted_data(id:)
  connection = PG.connect(dbname: 'bookmark_manager_test')
  result = connection.query("SELECT * FROM bookmarks WHERE id = #{id};")
  result.first
end
