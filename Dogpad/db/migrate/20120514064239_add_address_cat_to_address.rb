class AddAddressCatToAddress < ActiveRecord::Migration
  def change
    add_column :addresses, :AddressCat_id, :integer
  end
end
