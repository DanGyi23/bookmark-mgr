require_relative 'web_helpers'

feature 'Viewing Bookmarks' do

  scenario 'visit bookmarks page' do
    visit '/'
    click_button 'View Bookmarks'
    expect(page).to have_content('Your Bookmarks')
  end

  scenario 'visit bookmarks page & view bookmarks' do
    visit '/'
    click_button 'View Bookmarks'
    expect(page).to have_content('google.com')
    expect(page).to have_content('makersacademy.com')
    expect(page).to have_content('bbc.co.uk/sport')
  end

end
