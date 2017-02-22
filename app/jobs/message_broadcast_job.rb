class MessageBroadcastJob < ApplicationJob
  queue_as :default

  def perform(message)
    ActionCable.server.broadcast "chat_rooms_#{chat_message.chat_room.id}_channel",
                                 message: render_message(message)
  end

  private

  def render_message(message)
    ChatMessagesController.render partial: 'messages/message', locals: {message: message}
  end

end