class Fact < ApplicationRecord
  has_many :comments

  def avg_stars
    comments.average(:stars).round(1).to_f
  end

end
