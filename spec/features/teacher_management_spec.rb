require 'spec_helper'

feature 'Teacher management' do
  scenario 'A user can do the CRUD actions for teachers' do
    # link to teacher management page
    visit root_path
    click_link "Teachers"
    expect(page).to have_content "Teachers"
    
    # click create new teacher
    click_link "Add Teacher"
    fill_in "Name", with: "Hans"
    click_button "Create Teacher"
    expect(page).to have_content "Created"
    expect(page).to have_content "Hans"    
    
    click_link "Edit"
    fill_in "Name", with: "Fritz"
    click_button "Update Teacher"
    expect(page).to have_content "Updated"
    
    expect(page).to have_content "Fritz"  
    click_link "Delete"
    expect(page).to have_content "Destroyed"
    expect(page).to have_content "Teachers"
  end

  scenario 'A user sees all teachers in the system'do
    FactoryGirl.create_list :teacher, 4
    visit teachers_path
    expect(page).to have_css ".teacher", count: 4
  end
end