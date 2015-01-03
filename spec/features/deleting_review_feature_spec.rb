require 'rails_helper'

describe 'deleting reviews' do

  before do
   @elena = User.create(email: "elena@hotmail.it", password: "12345678", password_confirmation: "12345678")
   @mike = User.create(email: "mike@hotmail.it", password: "12345678", password_confirmation: "12345678")
   login_as @elena
   @kfc = @elena.restaurants.create(name:'KFC')
   @kfc.reviews.create(thoughts: 'so so', rating: '3', user: @elena)
   logout @elena
  end

  context 'when logged in as another user' do

    it "a user cannot remove a review if it's not his own" do
      login_as @mike
      visit '/'
      expect(page).not_to have_link 'Delete review'
    end

  end

  context 'when logged in' do

    it 'removes a review when a user clicks a delete link' do
      login_as @elena
      visit '/'
      click_link 'Delete review'
      expect(page).to have_content 'Review deleted successfully'
    end
    
  end

end
