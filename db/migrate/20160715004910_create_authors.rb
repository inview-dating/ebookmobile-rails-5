class CreateAuthors < ActiveRecord::Migration[5.0]
  def change
    create_table :authors do |t|
      t.string :first_name
      t.string :last_name
      t.string :genre
      t.integer :birth_year
      t.integer :death_year

      t.timestamps
    end
  end
end
