class Fact < ApplicationRecord
  has_many :comments

  validates :content, presence: true, length: {minimum: 10}
  validates :creator, presence: true, length: {minimum: 3, maximum: 15}

  # def avg_stars
  #   comments.average(:stars).round(1).to_f
  # end

  # def test_method
  #   "test method"
  # end

end
