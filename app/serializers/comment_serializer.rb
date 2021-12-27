class CommentSerializer < ActiveModel::Serializer
  belongs_to :fact

  attributes :id, :content, :stars, :creator, :created_at
end
