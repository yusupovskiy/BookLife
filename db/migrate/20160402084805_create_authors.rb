class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :given_name, null: false, limit: 50
      t.string :surname, null: false, limit: 50
      t.string :patronymic, null: true, limit: 50

      t.date :birthday_start, null: false
      t.date :birthday_end, null: false
      
      t.string :description, null: true, limit: 255

      t.timestamps null: false
    end
  end
end
