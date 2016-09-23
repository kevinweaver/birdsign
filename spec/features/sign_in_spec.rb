require 'rails_helper'

RSpec.describe SignIn, type: :feature do
  #let(:valid_fan) { FactoryGirl.build(:valid_fan)}
  #let(:invalid_fan) { FactoryGirl.build(:invalid_fan)}

  scenario "A valid fan signs into twitter successfully" do
    given_user_navigates_to_root
    user_clicks_sign_in
    click_button 'Sign in with twitter'
    #expect(page).to have_content 'Account created successfully!'
  end

  scenario "An invalid fan receives an error from twitter" do
    click_button 'Sign in with twitter'
    #expect(page).to have_content 'Account created successfully!'
  end

end
