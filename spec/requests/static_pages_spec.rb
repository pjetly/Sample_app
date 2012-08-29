require 'spec_helper'

describe "Static Pages" do

  let base_title = 'Ruby on Rails Tutorial Sample App'

  describe "Home Page" do
    it "should have the content 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Home')
      page.should have_selector('title', :text => "#{base_title} | Home")
    end
  end

  describe "Help Page" do
    it "should have the content help page" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
      page.should have_selector('title', :text => "#{base_title} | Help")
    end
  end

  describe "About Page" do
    it "should have the content 'About'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About')
      page.should have_selector('title', :text => "#{base_title} | About")
    end
  end

  describe "Contacts Page" do
    it "should have the H1 'Contacts'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact')
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Contact")
    end
  end


end
