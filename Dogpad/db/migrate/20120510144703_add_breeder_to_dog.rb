class AddBreederToDog < ActiveRecord::Migration
  def change
    add_column :dogs, :Breeder_id, :integer
  end
end
