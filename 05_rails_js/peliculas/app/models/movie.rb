class Movie < ApplicationRecord
  has_many :category_movies
  has_many :categories, through: :category_movies
end
