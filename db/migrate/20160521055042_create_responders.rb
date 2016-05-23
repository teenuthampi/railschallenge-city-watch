class CreateResponders < ActiveRecord::Migration
  def change
    create_table :responders do |t|
      t.string :emergency_code
      t.string :name
      t.string :type
      t.integer :capacity
      t.boolean :on_duty, default: false
      t.timestamps

    end
  end
end
