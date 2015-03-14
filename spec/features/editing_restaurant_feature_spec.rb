require 'rails_helper'

describe 'editing restaurants' do

  context 'when logged in as another user' do
    before do
      @elena = User.create(email: "elena@hotmail.it", password: "12345678", password_confirmation: "12345678")
      @mike = User.create(email: "mike@hotmail.it", password: "12345678", password_confirmation: "12345678")
      @elena.restaurants.create(name:'KFC')
    end

    it 'should not allow you to edit a restaurant that you have not created' do
      login_as @mike
      expect(page).not_to have_link 'Edit KFC'
    end

  end

  context 'when logged in' do
    before do
      @elena = User.create(email: "elena@hotmail.it", password: "12345678", password_confirmation: "12345678")
      login_as @elena
      @elena.restaurants.create(name:'KFC')
    end

    it 'lets a user edit a restaurant' do
      visit '/restaurants'
      click_link 'Edit KFC'
      fill_in 'Name', with: 'Kentucky Fried Chicken'
      click_button 'Update Restaurant'
      expect(page).to have_content 'Kentucky Fried Chicken'
      expect(current_path).to eq '/restaurants'
    end
  end
  
end
