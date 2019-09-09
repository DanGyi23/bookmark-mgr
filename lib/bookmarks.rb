class Bookmarks
require 'pg'

  def self.all
    conn = PG.connect( dbname: 'bookmark_manager' )
    conn.exec( "SELECT * FROM bookmarks;") do |result|
      result.map{ |bookmark| bookmark['url'] }
    end
  end
end
