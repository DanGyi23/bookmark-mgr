feature 'Viewing Bookmarks' do
  
  scenario 'visit index page' do
    visit '/'
    expect(page).to have_content("Bookmark Manager")
  end

  scenario 'visit bookmarks page & view bookmarks' do
    visit '/'
    click_button 'View Bookmarks'
    expect(page).to have_content('Bookmarks List')
  end

end