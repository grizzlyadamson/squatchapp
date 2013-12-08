require 'spec_helper'

describe 'StaticPages' do

  let(:base_title) { 'SquatchApp' }
  let(:static_pages) {'/static_pages/'}

  describe 'home page' do

    # test some content is there
    it 'should have the content "SquatchApp"' do
      visit "#{static_pages}/home"
      expect(page).to have_content('SquatchApp')
    end

    # test the browser title is correct
    it 'it should have the title "Home"' do
      visit "#{static_pages}/home"
      expect(page).to have_title("#{base_title} | Home")
    end
  end

  describe 'help page' do

    # test some content is there
    it 'should have the content "Help"' do
      visit "#{static_pages}/help"
      expect(page).to have_content('Help')
    end

    # test the browser title is correct
    it 'should have the title "Help"' do
      visit "#{static_pages}/help"
      expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe 'about page' do

    # test some content is there
    it 'should have the content "About SquatchApp"' do
      visit "#{static_pages}/about"
      expect(page).to have_content('About SquatchApp')
    end

    # test the browser title is correct
    it 'should have the title "About"' do
      visit "#{static_pages}/about"
      expect(page).to have_title("#{base_title} | About")
    end
  end

  describe 'contact page' do

    # test some content is there
    it 'should have the content "Contact"' do
      visit "#{static_pages}/contact"
      expect(page).to have_content('Contact')
    end

    # test the browser title is correct
    it 'should have the title "Contact"' do
      visit "#{static_pages}/contact"
      expect(page).to have_title("#{base_title} | Contact")
    end
  end
end
