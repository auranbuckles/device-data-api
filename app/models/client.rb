class Client < ApplicationRecord
  enum category: [ :web, :native ]

  has_many :user_sessions
  has_many :devices, through: :user_sessions
  before_create :attach_uuid

  validates :name, :category, presence: true

  def attach_uuid
    self.client_id = generate_uuid
  end

  def generate_uuid
    loop do
      token = SecureRandom.hex(12)
      break token unless Client.where(client_id: token).exists?
    end
  end
end
