class CreatePayTypes < ActiveRecord::Migration
  def change
    create_table :pay_types do |t|
      t.string :pay_type

      t.timestamps
    end
  end
end
