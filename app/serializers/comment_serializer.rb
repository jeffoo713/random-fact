class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :stars, :creator, :fact_id
end
