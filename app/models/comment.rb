class Comment < ApplicationRecord
  belongs_to :fact

  validates :content, presence: true, length: {minimum: 3}
  validates :creator, presence: true, length: {minimum: 3, maximum: 15}
end
