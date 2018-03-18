class UserSession < ApplicationRecord
  belongs_to :client
  belongs_to :device
end
