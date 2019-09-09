require 'bookmarks'

describe Bookmarks do

  it 'retrieves all bookmarks from the database' do
    expect(Bookmarks.all).to eq ["http://www.makersacademy.com","http://www.google.com","http://www.bbc.co.uk/sport"]
  end
end
