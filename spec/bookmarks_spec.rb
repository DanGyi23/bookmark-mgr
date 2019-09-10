require 'bookmarks'
require 'features/web_helpers'

describe Bookmarks do

  describe '#self.add' do
    it 'creates a new bookmark' do
    bookmark = Bookmarks.add(url: 'http://www.testbookmark.com', title: 'Test Bookmark')
    persisted_data = persisted_data(id: bookmark.id)

    expect(bookmark).to be_a Bookmarks
    expect(bookmark.id).to eq persisted_data['id']
    expect(bookmark.title).to eq 'Test Bookmark'
    expect(bookmark.url).to eq 'http://www.testbookmark.com'
    end
  end

  describe '#self.all' do
    it 'returns a list of bookmarks' do
      delete_db_rows
      bookmark = Bookmarks.add(url: "http://www.makersacademy.com", title: "Makers Academy")
      bookmarks = Bookmarks.all
      expect(bookmarks.length).to eq 1
      expect(bookmarks.first).to be_a Bookmarks
      expect(bookmarks.first.id).to eq bookmark.id
      expect(bookmarks.first.title).to eq 'Makers Academy'
      expect(bookmarks.first.url).to eq 'http://www.makersacademy.com'
    end
  end

  # describe '#delete' do
  #   it 'deletes a bookmark entry' do
  #     Bookmarks.delete(title/id)
  #     expect(bookmarks).not_to include(title/id)
  #   end
  # end
end
