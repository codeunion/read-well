require 'rails_helper'

RSpec.feature "Registration" do
  scenario "User signs up" do
    visit "/"

    click_link_or_button "Sign up"
    fill_in "Email", with: "zee@example.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_link_or_button "Sign up"

    # User is created
    expect(User.find_by(email: "zee@example.com")).to be_present

    # User is logged in
    expect(page).to have_content "Welcome! You have signed up successfully"
  end
end
