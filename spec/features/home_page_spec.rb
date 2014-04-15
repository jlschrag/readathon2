require 'spec_helper'

feature 'Home page' do
  scenario 'User views homepage' do
    visit root_path
    
    expect(page).to have_content "Welcome"
    expect(page).to have_title "Readathon2"
  end
end