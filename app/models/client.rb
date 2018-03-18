class Client < ApplicationRecord
  has_many :user_sessions
  has_many :devices, through: :user_sessions
  before_create :attach_uuid

  def attach_uuid
    loop do
      token = SecureRandom.hex(12)
      break token unless Client.where(client_id: token).exists?
    end
  end
end
