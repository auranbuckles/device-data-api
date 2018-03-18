class Client < ApplicationRecord
  before_create :attach_uuid
  belongs_to :device

  def attach_uuid
    loop do
      token = SecureRandom.hex(12)
      break token unless Client.where(client_id: token).exists?
    end
  end
end
