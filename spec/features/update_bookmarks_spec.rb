require_relative 'web_helpers'

feature 'Update Bookmark' do
  scenario "Click update bookmark and change url/title" do
    visit '/'
    find("[id=update]").find("[name=#{Bookmarks.all.last.id}]").click
    fill_in 'website', with: "http://www.bbc.co.uk/sport/football"
    fill_in 'bookmark_title', with: "BBC Football"
    click_button "Submit"
    expect(page).not_to have_content("BBC Sport")
    expect(page).not_to have_link("http://www.bbc.co.uk/sport")
    expect(page).to have_content("BBC Football")
    expect(page).to have_link("http://www.bbc.co.uk/sport/football")
  end
end