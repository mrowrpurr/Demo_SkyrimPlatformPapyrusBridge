scriptName PapyruSP_Connection1 extends SkyrimPlatformConnection

function MessageBox(string text)
    Debug.MessageBox("[Papyrus Connection One] " + text)
endFunction

event OnConnected()
    MessageBox("On Connected")
    Send("Message from Papyrus", "Sent by Connection1")
    MessageBox("RESPONSE:" + Request("TheAnswer", "Life, the Universe, and Everything"))
endEvent

event OnEvent(string eventName, string data)
    MessageBox("On Event " + eventName + " [Data] " + data)
endEvent

event OnRequest(string replyId, string query, string data)
    MessageBox("On Request " + query + " [Data] " + data + " [ReplyID] " + replyId)
    Reply(replyId, "Hello this is a Connection1 response to query: " + query)   
endEvent
