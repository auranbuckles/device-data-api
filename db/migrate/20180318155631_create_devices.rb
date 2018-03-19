class CreateDevices < ActiveRecord::Migration[5.0]
  def change
    create_table :devices do |t|
      # device
      t.string :name
      t.string :brand
      t.string :model
      t.integer :device_type

      # # browser data
      # t.string :browser
      # t.string :browser_version
      # t.string :language
      #
      # # network data
      # t.string :network
      # t.string :ip # IP-tied meta data: location (geo cords), organization, connection type, carrier code, country

      t.timestamps
    end
  end
end
