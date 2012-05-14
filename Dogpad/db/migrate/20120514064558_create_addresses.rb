class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :company
      t.string :first_name
      t.string :last_name
      t.string :street
      t.string :zip
      t.string :city
      t.string :country
      t.string :phone
      t.string :mobile
      t.string :mail
      t.string :web
      t.references :AddressCat

      t.timestamps
    end
    add_index :addresses, :AddressCat_id
  end
end
