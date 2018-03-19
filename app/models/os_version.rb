class OsVersion < ApplicationRecord
  belongs_to :operating_system, optional: true
end
