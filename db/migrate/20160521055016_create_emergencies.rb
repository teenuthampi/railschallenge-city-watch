class CreateEmergencies < ActiveRecord::Migration
  def change
    create_table :emergencies do |t|
      t.string :code
      t.integer :fire_severity
      t.integer :medical_severity
      t.integer :police_severity
      t.datetime :resolved_at
      t.timestamps
    end
  end
end
