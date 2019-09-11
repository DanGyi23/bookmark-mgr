require_relative 'web_helpers'

feature 'Delete Bookmark' do
  scenario "click on delete bookmark" do
    visit '/'
    click_on("#{Bookmarks.all.last.id}")
    expect(page).not_to have_content("BBC Sport")
  end
end
