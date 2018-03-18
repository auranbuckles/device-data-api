class CreateOsVersions < ActiveRecord::Migration[5.0]
  def change
    create_table :os_versions do |t|
      t.string :version
      t.integer :device_id

      t.timestamps
    end
  end
end
