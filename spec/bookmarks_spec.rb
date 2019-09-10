require 'bookmarks'
require 'features/web_helpers'

describe Bookmarks do

  it 'retrieves all bookmarks from the database' do
    expect(Bookmarks.all).to eq ["Makers Academy","Google","BBC Sport"]
  end

end
