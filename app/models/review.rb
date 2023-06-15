class Review < ApplicationRecord
  belongs_to :recipe
  belongs_to :user


  def review_user_name
    User.find(user_id).first_name
  end

end
