require 'bookmarks'

describe Bookmarks do
  it 'initializes with an array of bookmarks' do
    expect(Bookmarks.all).to eq(["Google.com", "Netflix.com", "Amazon.com"])
  end
end