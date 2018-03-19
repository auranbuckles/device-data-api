class Device < ApplicationRecord
  enum device_type: [ :desktop, :smartphone, :tablet, :console, :portable_media_player, :tv, :car_browser, :camera ]

  has_many :user_sessions
  has_many :clients, through: :user_sessions
  has_many :devices_operating_systems
  has_many :operating_systems, through: :devices_operating_systems
end
