class CreateAddressCats < ActiveRecord::Migration
  def change
    create_table :address_cats do |t|
      t.string :name

      t.timestamps
    end
  end
end
