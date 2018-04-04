#Channel名はMessageChannelだが、実際に作るストリームはtalk
App.MakeMessageChannel = (talk_id,message_id)->
  App.message = App.cable.subscriptions.create {channel: "MessageChannel", talk_id:talk_id , message_id:message_id},
  connected: ->
    scroll()


  disconnected: ->

  received: (data)->
    scroll()

    #<p class="text-left current-receive" style="margin-bottom:-3%;"><%= @chat_users[@message.user_id] %></p>
    #<div class="d-flex justify-content-start current-receive">
      #<div class="card message left">
        #<div id="talkReceiveText" class="card-body current-receive">
        #</div>
    # </div>
    #</div>
    #document.getElementById("talks").append = <p class="text-left current-receive" style="margin-bottom:-3%;"></p>
    #                                          <div class="d-flex justify-content-start current-receive">
    #                                            <div class="card message left">
    #                                              <div class="card-body current-receive">
    #                                                data.body
    #                                              </div>
    #                                            </div>
    #                                          </div>
    #$ ->
      #$("#talkRecieveText").append(data)
    #@perform("MessegeRecieve")
    #scroll()
    #alert data
    #location.href = "/talks/#{talk_id}"
    #location.reload()
    #div_element = document.createElement("div")
    #div_element.innerHTML = data
    #parent_object = document.getElementById("piyo")
    #parent_object.appendChild(div_element)
    #document.getElementById("talkReceiveText").append = data.body
    #$(".current-receive").css("display","block")
    #document.getElementById("talks").innerHTML += data.user_name
    #'<% @talks.each do |talk| %>
    #  <%= link_to("/talks/{talk.id}") do %>
    #    <li class="list-group-item d-flex justify-content-between align-items-center">
    #      <%= talk.name %>
    #    </li>
    #  <% end %>
    #<% end %>'

    #$("#talks").append('')

  scroll = ->
    obj = document.getElementById("talks")
    obj.scrollTop = obj.scrollHeight
