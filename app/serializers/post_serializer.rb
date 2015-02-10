class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body

  has_one :user, except: [:comment, :post]
  has_many :comment, except: [:post, :user]
end
