require_relative 'web_helpers'

feature 'Delete Bookmark' do
  scenario "click on delete bookmark" do
    delete_db_rows
    add_db_rows
    visit '/'
    click_button 'View Bookmarks'
    click_button 'Delete' # value = url?
    expect(page).not_to have_content("BBC Sport")
  end
end

    
    
