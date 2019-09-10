require_relative 'web_helpers'

feature 'Viewing Bookmarks' do

  scenario 'visit bookmarks page' do
    visit '/'
    expect(page).to have_content('Your Bookmarks')
  end

  scenario 'visit bookmarks page & view bookmarks' do
    visit '/'
    expect(page).to have_content('Google')
    expect(page).to have_content('Makers Academy')
    expect(page).to have_content('BBC Sport')

    expect(page).to have_link('Makers Academy', href: 'http://www.makersacademy.com')
    expect(page).to have_link('Google', href: 'http://www.google.com')
    expect(page).to have_link('BBC Sport', href: 'http://www.bbc.co.uk/sport')
  end

end
