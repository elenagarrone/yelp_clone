require 'rails_helper'

describe 'deleting restaurants' do

  context 'when logged in as another user' do

    before do
      @elena = User.create(email: "elena@hotmail.it", password: "12345678", password_confirmation: "12345678")
      @mike = User.create(email: "mike@hotmail.it", password: "12345678", password_confirmation: "12345678")
      @elena.restaurants.create(name:'KFC')
    end

    it "a user cannot remove a restaurant if it's not his own" do
      login_as @mike
      visit '/'
      expect(page).not_to have_link 'Delete KFC'
    end

  end

  context 'when logged in' do

    before do
      @elena = User.create(email: "elena@hotmail.it", password: "12345678", password_confirmation: "12345678")
      login_as @elena
      @elena.restaurants.create(name:'KFC')
    end

    it 'removes a restaurant when a user clicks a delete link' do
      visit '/restaurants'
      click_link 'Delete KFC'
      expect(page).not_to have_content 'KFC'
      expect(page).to have_content 'Restaurant deleted successfully'
    end
  end

end
