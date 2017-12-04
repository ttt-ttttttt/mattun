#Channel名はMessageChannelだが、実際に作るストリームはtalk
App.MakeMessageChannel = (talk_id)->
  App.message = App.cable.subscriptions.create {channel: "MessageChannel", talk_id:talk_id},
  connected: ->

  disconnected: ->

  received: (data)->
    location.reload()
   #div_element = document.createElement("div")
   #div_element.innerHTML = data
   #parent_object = document.getElementById("piyo")
   #parent_object.appendChild(div_element)
