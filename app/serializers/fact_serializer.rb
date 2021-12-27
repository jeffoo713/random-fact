class FactSerializer < ActiveModel::Serializer
  has_many :comments

  attributes :content, :creator, :id, :updated_at, :avg_stars#, :test_method
end
