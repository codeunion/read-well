require 'rails_helper'

RSpec.feature "Registration" do
  scenario "User signs up" do
    visit "/"

    click_link_or_button "Sign up"
    fill_in "Email", with: "zee@example.com"
    fill_in "Password", with: "password"
    click_link_or_button "Sign up"

    expect(page).to have_content "Welcome zee@example.com"
  end
end
