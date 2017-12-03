class MessageController < ApplicationController
  def create
    @message = Message.new(
      body: params[:body],
      talk_id: params[:talk_id],
      user_id: params[:user_id]
    )
    if @message.save
      redirect_to("/talks/#{@message.talk_id}")
    end
  end
end
