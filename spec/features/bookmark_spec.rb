feature "The bookmark manager has a homepage" do
  scenario "User is able to view the Bookmark Manager " do
    expect(page).to have_content "Welcome to Bookmark Manager"
  end
  scenario "As a user I am able to see a list of links on the Bookmark Manager homepage" do
    find_link('link1').visible?
  end
end
