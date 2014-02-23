require 'spec_helper'

describe "StaticPages" do
  # describe "GET /static_pages" do
  #   it "works! (now write some real specs)" do
  #     # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
  #     get static_pages_index_path
  #     response.status.should be(200)
  #   end
  # end

  describe "Home Page" do
  	it "should have the h1 'Sample App'" do
  		visit '/static_pages/home'
  		page.should have_selector('h1', :text => 'Sample App')
  	end

  	it "Should have the 'Home'" do
  		visit '/static_pages/home'
  		page.should have_selector('title',
  			:text => 'Ruby on Rails Tutorial Sample App | Home')
  	end
  end

  describe "Help Page" do
  	it "Should have the h1 'help'" do
  	  visit '/static_pages/help'
  	  page.should have_selector('h1', :text => 'Help')
  	end

  	it "Should have the 'Help'" do
  		visit '/static_pages/help'
  		page.should have_selector('title',
  			:text => 'Ruby on Rails Tutorial Sample App | Help')
  	end
  end

  describe "About Page" do
  	it "Should have the h1 'About Us'" do
  		visit '/static_pages/about'
  		page.should have_selector('h1', :text => 'About Us')
  	end

  	it "Should have the 'About Us'" do
  		visit '/static_pages/about'
  		page.should have_selector('title',
  			:text => 'Ruby on Rails Tutorial Sample App | About Us')
  	end
  end

  describe "Contact" do
    it "Should have the h1 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact')
    end

    it "Should have the 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('title',
        :text => 'Ruby on Rails Tutorial Sample App | Contact')
    end
  end
end
