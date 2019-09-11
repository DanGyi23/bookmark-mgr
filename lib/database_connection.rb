require 'pg'

class DatabaseConnection

  def self.setup(db_name)
    @conn = PG.connect( dbname: db_name)
  end

  def self.query(query_string)
    @conn.exec(query_string)
  end

end