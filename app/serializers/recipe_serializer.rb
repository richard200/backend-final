class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :instructions, :ingredients, :prep_time

  belongs_to :category
  belongs_to :user

  has_many :reviews, serializer: RecipeReviewsSerializer
end
