feature "add bookmark" do
  scenario "user adds bookmark to database" do
    visit '/'
    click_button 'Add new bookmark'
    fill_in 'website', with: "www.newbookmark.com"
    click_button 'Submit'
    click_button 'View Bookmarks'
    expect(page).to have_content "www.newbookmark.com"
  end
end
