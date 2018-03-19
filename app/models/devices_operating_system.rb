class DevicesOperatingSystem < ApplicationRecord
  belongs_to :devices, optional: true
  belongs_to :operating_systems, optional: true
end
