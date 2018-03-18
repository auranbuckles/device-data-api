class OperatingSystem < ApplicationRecord
  has_many :devices_operating_systems
  has_many :devices, through: :devices_operating_systems
  has_many :os_versions
end
