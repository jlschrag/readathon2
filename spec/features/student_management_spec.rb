require 'spec_helper'

feature 'Student management' do
  scenario 'A user can do the CRUD actions for students' do
    visit root_path
    click_link "Students"
    expect(page).to have_content "Students"
    
    click_link "Add Student"
    fill_in "Name", with: "Bill"
    click_button "Create Student"
    expect(page).to have_content "Created"
    
    
    expect(page).to have_content "Bill"    
    click_link "Edit"
    fill_in "Name", with: "Frank"
    click_button "Update Student"
    expect(page).to have_content "Updated"
    
    expect(page).to have_content "Frank"  
    click_link "Delete"
    expect(page).to have_content "Destroyed"
    expect(page).to have_content "Students"
    
  end
  
  scenario 'A user sees all students in the system'


end