class Bookmarks
require 'pg'

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      conn = PG.connect( dbname: 'bookmark_manager_test' )
    else
      conn = PG.connect( dbname: 'bookmark_manager' )
    end
      conn.exec( "SELECT * FROM bookmarks;") do |result|
      result.map{ |bookmark| bookmark['title'] }
    end
  end

  def self.add(website,title)
    if ENV['ENVIRONMENT'] == 'test'
      conn = PG.connect( dbname: 'bookmark_manager_test' )
    else
      conn = PG.connect( dbname: 'bookmark_manager' )
    end
    conn.exec("INSERT INTO bookmarks (url, title) VALUES ('#{website}', '#{title}')")
  end
end
