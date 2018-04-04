class MessageController < ApplicationController
  def create
    @message = Message.new(
      body: params[:body],
      talk_id: params[:talk_id],
      user_id: params[:user_id]
    )

    if @message.save
      MessageChannel.broadcast_to "message_channel_#{@message.talk_id}", @message#redirect_to("/talks/#{@message.talk_id}")#render("talks/show")
      redirect_to("/talks/#{@message.talk_id}")
      #render("talks/show")
      #App.message.perform("MessageController")
      #MessageChannel.perform("MessageController"
      #MessageChannel.MessageController
    end
  end
end
