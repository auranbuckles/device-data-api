class Device < ApplicationRecord
  has_many :user_sessions
  has_many :clients, through: :user_sessions
  has_many :devices_operating_systems
  has_many :operating_systems, through: :devices_operating_systems
end
