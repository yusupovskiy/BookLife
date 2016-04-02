class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name, null: false, limit: 50
      t.date :written_at, null: false
      t.string :description, limit: 2000

      t.timestamps null: false
    end
  end
end
