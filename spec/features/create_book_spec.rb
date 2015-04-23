require 'rails_helper'

RSpec.feature "Book creation" do
  scenario "User logs in and creates book" do
    visit "/"

    User.create(email: "zee@example.com", password: "password")

    click_link_or_button "Log in"
    fill_in "Email", with: "zee@example.com"
    fill_in "Password", with: "password"
    click_link_or_button "Log in"

    # User is logged in
    expect(page).to have_content "Signed in successfully."

    click_link_or_button "New book"
    fill_in "Title", with: "My Two Left Feet"
    fill_in "Author", with: "Deepak Chopra"

    click_link_or_button "Create book"

    # Book is created
    expect(page).to have_content "You created a book successfully"

    found_book = Book.find(title: "My Two Left Feet", author: "Deepak Chopra")
    expect(found_book).to be_present
  end
end