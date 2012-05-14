class CreateNutereds < ActiveRecord::Migration
  def change
    create_table :nutereds do |t|
      t.string :name

      t.timestamps
    end
  end
end
