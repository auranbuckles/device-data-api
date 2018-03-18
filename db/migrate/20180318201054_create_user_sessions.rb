class CreateUserSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :user_sessions do |t|
      t.string :session_id
      t.integer :client_id
      t.integer :device_id

      t.timestamps
    end
  end
end
