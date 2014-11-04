require 'rails_helper'

describe 'reviewing' do

	before do
   @elena = User.create(email: "elena@hotmail.it", password: "12345678", password_confirmation: "12345678")
   login_as @elena
   @elena.restaurants.create(name:'KFC')
	end

	it 'allows users to leave a review using a form' do
		visit '/restaurants'
		click_link 'Review KFC'
		fill_in 'Thoughts', with: 'so so'
		select '3', from: 'Rating'
		click_button 'Leave Review'
		expect(current_path).to eq '/restaurants'
		expect(page).to have_content('so so')
	end


end