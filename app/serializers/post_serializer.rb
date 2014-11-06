class PostSerializer < ActiveModel::Serializer
  attributes :id, :author, :body, :created_at, :updated_at
end
