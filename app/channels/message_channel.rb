class MessageChannel < ApplicationCable::Channel
  def subscribed
    stream_for "message_channel_#{params[:talk_id]}"
    #talk = Talk.find(params[:talk_id])
    #stream_for talk
    # stream_from "some_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def MessegeRecieve
    #redirect_to("/talks/#{params[:talk_id]}")
    #render("/talks/show")
    #redirect_to("/")
    #TalksController.show
    #redirect_to("/talks/#{params[:talk_id]}")
  end

end
