class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
      t.integer :height
      t.date :dob
      t.date :dod
      t.references :Gender
      t.references :Nutered

      t.timestamps
    end
    add_index :dogs, :Gender_id
    add_index :dogs, :Nutered_id
  end
end
