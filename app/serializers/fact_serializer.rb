class FactSerializer < ActiveModel::Serializer
  attributes :content, :creator, :id

  has_many :comments
end
