feature "Creating links" do
  
  scenario "I can create a new link" do
    visit '/links'
    fill_in 'title', with: 'Code First: Girls'
    fill_in 'url', with: 'http://www.codefirstgirls.org.uk'
    click_button 'Create link'
    expect(current_path).to eq '/links'
    within 'ul#links' do
      expect(page).to have_content('Code First: Girls')
    end
  end
end
