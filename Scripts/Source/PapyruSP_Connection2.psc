scriptName PapyruSP_Connection2 extends SkyrimPlatformConnection

function MessageBox(string text)
    Debug.MessageBox("[Papyrus Connection Two] " + text)
endFunction

event OnSetup()
    ConnectionName = "PapyruSP_Connection2" ; Optional, defaults to name of script
endEvent

event OnConnected()
    MessageBox("On Connected")
    Send("Message from Papyrus", "Sent by Connection2")
    MessageBox("RESPONSE:" + Request("TheAnswer", "Life, the Universe, and Everything"))
endEvent

event OnEvent(string eventName, string data)
    MessageBox("On Event " + eventName + " [Data] " + data)
endEvent

event OnRequest(string replyId, string query, string data)
    MessageBox("On Request " + query + " [Data] " + data + " [ReplyID] " + replyId)
    Reply(replyId, "Hello this is a Connection2 response to query: " + query)   
endEvent
