require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('user will put their allergy score into form, page will show allergies', {:type => :feature}) do
  it('takes the score and shows the allergies related to score') do
    visit('/')
    fill_in('allergyscore', with: '4')
    click_button('Send')
    expect(page).to have_content("shellfish")
end
end
