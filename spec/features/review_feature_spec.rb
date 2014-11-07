require 'rails_helper'

describe 'reviewing' do

  context 'leave a review' do

  	before do
     @elena = User.create(email: "elena@hotmail.it", password: "12345678", password_confirmation: "12345678")
     login_as @elena
     @kfc = @elena.restaurants.create(name:'KFC')
  	end

  	it 'allows users to leave a review using a form' do
  		visit '/restaurants'
  		click_link 'Review KFC'
  		leave_review('so so', '3')
  		expect(current_path).to eq '/restaurants'
  		expect(page).to have_content('so so')
  	end

    it 'should have only one review for each restaurant' do
      @kfc.reviews.create(thoughts: 'so so', rating: '3', user: @elena)
      visit '/'
      expect(page).not_to have_link('Review KFC')
    end

    it 'can be deleted' do
      @kfc.reviews.create(thoughts: 'so so', rating: '3', user: @elena)
      visit '/'
      expect(page).to have_link('Delete review')
    end

    def leave_review(thoughts, rating)
      visit '/'
      click_link 'Review KFC'
      fill_in 'Thoughts', with: thoughts
      select rating, from: 'Rating'
      click_button 'Leave Review'
    end

    it 'displays an avarage rating for all reviews' do
      leave_review('So so', '3')
      @mike = User.create(email: "mike@hotmail.it", password: "12345678", password_confirmation: "12345678")
      logout @elena
      login_as @mike
      leave_review('Great', '5')
      expect(page).to have_content('Avarage rating: ★★★★☆')
    end

  end
end