class CommentSerializer < ActiveModel::Serializer
  attributes :user, :post, :body

  has_one :user, :post, except: [:comment, :post]
end
