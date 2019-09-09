require 'bookmarks'

describe Bookmarks do
  it 'initializes with an array of bookmarks' do
    expect(subject.bookmarks.all).to eq("Google.com\nNetflix.com\nAmazon.com")
  end
end