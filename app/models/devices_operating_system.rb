class DevicesOperatingSystem < ApplicationRecord
  belongs_to :devices
  belongs_to :operating_systems
end
