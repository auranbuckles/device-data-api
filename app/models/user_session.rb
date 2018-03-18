class UserSession < ApplicationRecord
  belongs_to :client
  belongs_to :device

  validates :session_id, presence: true
end
