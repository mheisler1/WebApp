class CreateLocationTypes < ActiveRecord::Migration
  def change
    create_table :location_types do |t|
      t.string :location_type

      t.timestamps
    end
  end
end
