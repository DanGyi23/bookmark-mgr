feature 'Viewing Bookmarks' do

  scenario 'visit bookmarks page' do
    visit '/'
    click_button 'View Bookmarks'
    expect(page).to have_content('Your Bookmarks')
  end

  scenario 'visit bookmarks page & view bookmarks' do
    visit '/'
    click_button 'View Bookmarks'
    expect(page).to have_content('Google.com')
    expect(page).to have_content('Netflix.com')
    expect(page).to have_content('Amazon.com')
  end

end