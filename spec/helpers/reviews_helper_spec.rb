require 'rails_helper'

describe ReviewsHelper do
  
  context "#star_rating" do
    
    it 'does nothing for not a number' do
      expect(helper.start_rating('N/A')).to eq 'N/A'
    end

    it 'returns three black stars and two white stars for three' do
      expect(helper.start_rating(3)).to eq '★★★☆☆'
    end

    it 'returns four black stars and one white star for 3.5' do
      expect(helper.start_rating(3.5)).to eq '★★★★☆'
    end

  end

end



