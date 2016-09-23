require 'rails_helper'

describe FanSignIn, type: :feature do
  #let(:valid_fan) { FactoryGirl.build(:valid_fan)}
  #let(:invalid_fan) { FactoryGirl.build(:invalid_fan)}

  include_context 'omniauth' do
    let(:user) { { id: 'test' } }
  end

  scenario "A valid fan signs into twitter successfully" do
    visit root_path
    expect(page).to have_content 'Please Login'
    expect(path).to have_title 'Sign In Page!'
    click_button 'Sign in with twitter'
    expect(current_path).to eq root_path
    expect(page).to have_content 'Welcome to your Dash yo!'
    expect(page).to have_content valid_fan.name
    expect(path).to have_title 'Some Title!'
  end

  scenario "An invalid fan receives an error from twitter" do
    click_button 'Sign in with twitter'
    expect(page).to have_content 'Please Login'
    expect(path).to have_title 'Sign In Page!'
    click_button 'Sign in with twitter'
    expect(current_path).to eq root_path
    expect(page).to have_content 'Womp bad login'
    expect(page).to_not have_content valid_fan.name
    expect(path).to have_title 'Sign In Page!'
  end

end
