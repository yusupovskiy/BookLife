class Book < ActiveRecord::Base
  has_and_belongs_to_many :authors, join_table: :books_authors
  has_and_belongs_to_many :genres, join_table: :books_genres
end
