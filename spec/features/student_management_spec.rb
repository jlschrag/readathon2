require 'spec_helper'

feature 'Student management' do
  scenario 'A user can do the CRUD actions for students' do
    FactoryGirl.create :teacher, name: "Mrs. Smith"
    FactoryGirl.create :teacher, name: "Mrs. Jones"
    
    visit root_path
    click_link "Students"
    expect(page).to have_content "Students"
    
    click_link "Add Student"
    fill_in "Name", with: "Bill"
    select('Mrs. Smith', :from => 'Teacher')
    click_button "Create Student"
    expect(page).to have_content "Created"
    
    expect(page).to have_content "Bill"    
    click_link "Edit"
    fill_in "Name", with: "Frank"
    select('Mrs. Jones', :from => 'student_teacher_id')
    click_button "Update Student"
    expect(page).to have_content "Updated"
    
    expect(page).to have_content "Frank"  
    click_link "Delete"
    expect(page).to have_content "Destroyed"
    expect(page).to have_content "Students"
    
  end
  
  scenario 'A user sees all students in the system'do
    FactoryGirl.create_list :student, 4
    visit students_path
    expect(page).to have_css ".student", count: 4
  end
end