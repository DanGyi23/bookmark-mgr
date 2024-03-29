feature "add bookmark" do
  scenario "user adds bookmark to database" do
    visit '/'
    fill_in 'url', with: "http://www.newbookmark.com"
    fill_in 'title', with: "New Bookmark"
    click_button 'Submit'
    expect(page).to have_content "New Bookmark"
    expect(page).to have_link('New Bookmark', href: 'http://www.newbookmark.com')
  end
end
