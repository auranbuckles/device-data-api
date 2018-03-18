class CreateDevices < ActiveRecord::Migration[5.0]
  def change
    create_table :devices do |t|
      t.string :family
      t.string :brand
      t.string :model
      t.string :type
      t.string :os_name
      t.string :os_version

      t.timestamps
    end
  end
end
