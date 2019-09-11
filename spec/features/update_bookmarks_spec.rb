require_relative 'web_helpers'

feature 'Update Bookmark' do
  scenario "Click update bookmark and change url/title" do
    delete_db_rows
    bookmark = Bookmarks.add(url: 'https://www.test.com', title: 'Test Bookmark')
    visit '/'
    click_button 'Edit'
    expect(current_path).to eq "/#{bookmark.id}/edit"
    fill_in 'url', with: "http://www.bbc.co.uk/sport/football"
    fill_in 'title', with: "BBC Football"
    click_button "Submit"
    expect(current_path).to eq '/'
    expect(page).not_to have_content("Test Bookmark")
    expect(page).to have_content("BBC Football")
  end
end