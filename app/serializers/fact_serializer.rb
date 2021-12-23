class FactSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :creator, :id

  has_many :comments
end
