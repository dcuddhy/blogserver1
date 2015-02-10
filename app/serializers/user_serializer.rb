class UserSerializer < ActiveModel::Serializer
  attributes :name, :id

  has_many :comment, :post, except: [:post, :comment]
end
