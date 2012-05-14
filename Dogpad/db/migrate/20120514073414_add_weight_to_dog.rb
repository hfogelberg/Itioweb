class AddWeightToDog < ActiveRecord::Migration
  def change
    add_column :dogs, :weight, :float
  end
end
