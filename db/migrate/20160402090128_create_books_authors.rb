class CreateBooksAuthors < ActiveRecord::Migration
  def change
    create_table :books_authors, id: false do |t|
      # t.belongs_to :book, null: false
      # t.belongs_to :author, null: false
      t.integer :book_id, null: false
      t.integer :author_id, null: false
    end

    add_foreign_key :books_authors, :books, on_delete: :cascade
    add_foreign_key :books_authors, :authors, on_delete: :cascade
    add_index :books_authors, [:book_id, :author_id], unique: true
  end
end
