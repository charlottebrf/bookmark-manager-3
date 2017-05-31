feature "Adding Links do" do
  scenario "I can add a new link to the links page" do
    visit '/links'
    find_button('Add link').click
    click_link('Add link')
    visit '/links/new'
    Link.create(url: 'http://www.codefirstgirls.org.uk/', title: 'Code First: Girls')
    expect(page.status_code).to eq 200
    visit '/links'
    within 'ul#links' do
      expect(page).to have_content('Code First: Girls')
    end
  end
end
