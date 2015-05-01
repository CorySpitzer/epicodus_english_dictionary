require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the dictionary app', :type => :feature) do
  describe('the root path') do
    it('visits the root path') do
      visit('/')
      expect(page).to(have_content('A very tiny dictionary'))
    end
  end

  describe('the add dictionary entry path') do
    it('fills in a word and definition and
        displays a link to the page of that word') do
      visit('/')
      fill_in('word', :with => 'cat')
      fill_in('definition', :with => 'A feline animal')
      click_button('Add')
      expect(page).to(have_content('Success'))
    end
  end
end
