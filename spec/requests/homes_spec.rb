require 'spec_helper'

describe "Homes" do

  describe "Index page" do

    it "should have the content 'My SDSC Portal'" do
      visit '/home/index'
      expect(page).to have_content('My SDSC Portal')
    end
  end

  describe "About page" do

    it "should have the content 'About'" do
      visit '/home/about'
      expect(page).to have_content('About')
    end
  end

  describe "Dashboard page" do

    it "should have the content 'Dashboard'" do
      visit '/home/dashboard'
      expect(page).to have_content('Dashboard')
    end
  end
end
