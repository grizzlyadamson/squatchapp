require 'spec_helper'

describe 'StaticPages' do

  describe 'home page' do

    # test some content is there
    it 'should have the content "SquatchApp"' do
      visit '/static_pages/home'
      expect(page).to have_content('SquatchApp')
    end

    # test the browser title is correct
    it 'it should have the title "Home"' do
      visit '/static_pages/home'
      expect(page).to have_title('SquatchApp | Home')
    end
  end

  describe 'help page' do

    # test some content is there
    it 'should have the content "Help"' do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    # test the browser title is correct
    it 'should have the title "Help"' do
      visit '/static_pages/help'
      expect(page).to have_title('SquatchApp | Help')
    end
  end

  describe 'about page' do

    # test some content is there
    it 'should have the content "About SquatchApp"' do
      visit '/static_pages/about'
      expect(page).to have_content('About SquatchApp')
    end

    # test the browser title is correct
    it 'should have the title "About"' do
      visit '/static_pages/about'
      expect(page).to have_title('SquatchApp | About')
    end
  end
end
