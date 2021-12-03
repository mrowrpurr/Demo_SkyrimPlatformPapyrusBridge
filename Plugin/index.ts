import papyrusBridge, { getConnection } from 'papyrusBridge'
import { Debug, once, printConsole } from 'skyrimPlatform'

// Standard usage: manage specific connections
const connection1 = getConnection('PapyruSP_Connection1')
const connection2 = getConnection('PapyruSP_Connection2')

connection1.onConnected(source => {
    Debug.messageBox(`[SP Connection 1] onConnected ${JSON.stringify(source)}`)
})
connection2.onConnected(source => {
    Debug.messageBox(`[SP Connection 2] onConnected ${JSON.stringify(source)}`)
})

connection1.onEvent(event => {
    Debug.messageBox(`[SP Connection 1] onEvent ${JSON.stringify(event)}`)
})
connection2.onEvent(event => {
    Debug.messageBox(`[SP Connection 2] onEvent ${JSON.stringify(event)}`)
})

connection1.onRequest((request, reply) => {
    reply(`[SP Connection 1] Reply to ${JSON.stringify(request)}`)
})
connection2.onRequest((request, reply) => {
    reply(`[SP Connection 1] Reply to ${JSON.stringify(request)}`)
})

// Advanced usage: listen for events globally
papyrusBridge.onConnected(source => {
    once('update', () => {
        Debug.messageBox(`**[OnConnected] ${JSON.stringify(source)}`)
    })
})
papyrusBridge.onEvent(event => {
    once('update', () => {
        Debug.messageBox(`**[OnEvent] ${JSON.stringify(event)}`)
    })
})
papyrusBridge.onRequest(request => {
    once('update', () => {
        Debug.messageBox(`**[OnRequest] ${JSON.stringify(request)}`)
    })
})