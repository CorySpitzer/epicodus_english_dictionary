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
end
