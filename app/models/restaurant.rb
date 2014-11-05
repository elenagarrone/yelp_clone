class Restaurant < ActiveRecord::Base

	has_many :reviews, dependent: :destroy

	validates :name, length: {minimum: 3}, uniqueness: true
  belongs_to :user
	
  # def not_reviewed_by?(user)
  #   reviews.where(user_id: user).exists?
  # end

  def has_review(user)
      reviews.find_by(user: user)
  end

end
