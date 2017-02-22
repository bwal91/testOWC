class ChatRoom < ApplicationRecord
  belongs_to :member
  has_many :chat_messages, dependent: :destroy
end
