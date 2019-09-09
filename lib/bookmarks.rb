class Bookmarks
require 'pg'

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      conn = PG.connect( dbname: 'bookmark_manager_test' )
    else
      conn = PG.connect( dbname: 'bookmark_manager' )
    end
      conn.exec( "SELECT * FROM bookmarks;") do |result|
      result.map{ |bookmark| bookmark['url'] }
    end
  end
end