class CreateUserSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :user_sessions do |t|
      t.string :session_id
      t.references :client, foreign_key: true
      t.references :device, foreign_key: true

      t.timestamps
    end
  end
end
