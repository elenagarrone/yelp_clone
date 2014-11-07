module ReviewsHelper

  def start_rating(rating)
    rating
  end

  def start_rating(rating)
    return rating unless rating.is_a?(Fixnum)
    remainder = (5 - rating)
    "★" * rating +  "☆" * remainder
  end

end
