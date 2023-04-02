class UserSerializer < ActiveModel::Serializer
  attributes :id, :username

  has_many :recipes, serializer: UserRecipeSerializer
  has_many :reviews
end
