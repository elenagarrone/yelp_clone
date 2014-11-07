require 'rails_helper'

describe ReviewsHelper do
  
  context "#star_rating" do
    
    it 'does nothing for not a number' do
      expect(helper.start_rating('N/A')).to eq 'N/A'
    end

  end

end



