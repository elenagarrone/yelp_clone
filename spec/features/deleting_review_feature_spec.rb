require 'rails_helper'

describe 'deleting reviews' do

  context 'when logged in as another user' do

    before do
     @elena = User.create(email: "elena@hotmail.it", password: "12345678", password_confirmation: "12345678")
     @mike = User.create(email: "mike@hotmail.it", password: "12345678", password_confirmation: "12345678")
     login_as @elena
     @kfc = @elena.restaurants.create(name:'KFC')
     @kfc.reviews.create(thoughts: 'so so', rating: '3', user: @elena)
     logout @elena
    end

    it "a user cannot remove a restaurant if it's not his own" do
      login_as @mike
      visit '/'
      expect(page).not_to have_link 'Delete review'
    end

  end

  context 'when logged in' do
   
    before do
      @elena = User.create(email: "elena@hotmail.it", password: "12345678", password_confirmation: "12345678")
      login_as @elena
      @elena.restaurants.create(name:'KFC')
    end

    it 'removes a review when a user clicks a delete link' do
      visit '/restaurants'
      click_link 'Delete KFC'
      expect(page).not_to have_content 'KFC'
      expect(page).to have_content 'Restaurant deleted successfully'
    end
  end

end
