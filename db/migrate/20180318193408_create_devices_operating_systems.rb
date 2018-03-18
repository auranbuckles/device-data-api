class CreateDevicesOperatingSystems < ActiveRecord::Migration[5.0]
  def change
    create_table :devices_operating_systems do |t|
      t.references :device, foreign_key: true
      t.references :operating_system, foreign_key: true

      t.timestamps
    end
  end
end
