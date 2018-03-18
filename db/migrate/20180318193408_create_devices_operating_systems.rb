class CreateDevicesOperatingSystems < ActiveRecord::Migration[5.0]
  def change
    create_table :devices_operating_systems do |t|
      t.integer :device_id
      t.integer :operating_system_id

      t.timestamps
    end
  end
end
