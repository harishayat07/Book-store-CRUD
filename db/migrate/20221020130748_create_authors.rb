class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :name
      t.integer :age
      t.string :gnder

      t.timestamps
    end
  end
end
