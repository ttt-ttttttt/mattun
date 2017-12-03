class TalksController < ApplicationController
  before_action :authenticate_user, {only: [:index , :show]}

  def index
    @users = User.all
    @talks = Talk.new
    @talks = TalkUser.where(user_id:@current_user.id).map do |r|
      r.talk
    end
  end

  def show
    @users = User.all
    @talk = Talk.find_by(id: params[:id])
    @talks = Talk.new
    @talks = TalkUser.where(user_id:@current_user.id).map do |r|
      r.talk
    end
    @message = Message.new
    @messages = Message.where(talk_id: params[:id])
  end

  def create
    @talk = Talk.new(
      name: params[:name],
      talk_users_attributes: [{user_id: params[:user_id]},{user_id: @current_user.id}]
    )
    if @talk.save
      redirect_to("/talks/#{@talk.id}")
    else
      render("talks/index")
    end
  end

end
