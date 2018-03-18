class CreateOsVersions < ActiveRecord::Migration[5.0]
  def change
    create_table :os_versions do |t|
      t.string :version
      t.references :device, foreign_key: true

      t.timestamps
    end
  end
end
