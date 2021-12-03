scriptName PapyruSP_QuestScript extends Quest

event OnInit()
    SkyrimPlatformBridge.SendEvent("HelloFromQuest", "PapyruSP_Connection1")
    string response = SkyrimPlatformBridge.Request("QueryFromQuest", "PapyruSP_Connection2", "Hi from data")
    Debug.MessageBox("Quest for response from connection 2: " + response)
endEvent
