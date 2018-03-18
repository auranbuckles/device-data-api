class Client < ApplicationRecord
  before_create :attach_uuid
  belongs_to :device

  def attach_uuid
    loop do
      token = SecureRandom.random_number(100000000..999999999)
      break token unless Client.where(client_id: token).exists?
    end
  end
end
