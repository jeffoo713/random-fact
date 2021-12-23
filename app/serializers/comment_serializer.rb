class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :stars, :creator, :fact_id
end
