require 'database_connection'
require 'features/web_helpers'
require 'pg'

describe DatabaseConnection do
  
  describe '#setup' do
    it 'opens a PG connection' do
      connection = DatabaseConnection.setup('bookmark_manager')
      expect(connection.db).to eq('bookmark_manager')
    end
  end

  describe '#query' do
    it 'queries the database with a given string' do
    connection = DatabaseConnection.setup('bookmark_manager_test')
    expect(connection).to receive(:exec).with("SELECT * FROM bookmarks;")
    DatabaseConnection.query("SELECT * FROM bookmarks;")
    end
  end

  describe '#connection' do
    it 'returns the current database connection name' do
      connection = DatabaseConnection.setup('bookmark_manager_test')
      expect(DatabaseConnection.connection).to eq('bookmark_manager_test')
    end
  end

end
