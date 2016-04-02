class ChangeDescriptionLengthForAuthorsAndBooks < ActiveRecord::Migration
  def change
    change_column :authors, :description, :string, null: true, limit: 4000
    change_column :books, :description, :string, null: true, limit: 4000
  end
end
