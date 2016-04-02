class CreateBooksGenres < ActiveRecord::Migration
  def change
    create_table :books_genres, id: false do |t|
      t.integer :book_id, null: false
      t.integer :genre_id, null: false
    end

    add_foreign_key :books_genres, :books, on_delete: :cascade
    add_foreign_key :books_genres, :genres, on_delete: :cascade
    add_index :books_genres, [:book_id, :genre_id], unique: true
  end
end
