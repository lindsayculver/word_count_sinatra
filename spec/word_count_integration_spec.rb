require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("The word count '/result' path", {:type => :feature}) do
  it('returns the number of word matches found') do
    visit('/')
    fill_in('phrase', :with => 'I am thankful for my thankful family and thankful friends')
    fill_in('match_word', :with => 'thankful')
    click_button('Count Word')
    expect(page).to have_content("3")
  end
end
