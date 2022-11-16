function killitems(server) {
    server.getEntities("@e[type=minecraft:item]").forEach(entity => {
        entity.kill()
    })
    //server.tell(`Items in the world are cleared.`)
    //server.tell(`If you wanna clear items manually, try /killitems.`)
    server.tell(`已清理掉落物。`)
    server.tell(`如果你想手动清理掉落物，请运行/killitems指令。`)
}

const minutes = 18

onEvent('server.load', function (event) {
    let server = event.server
    server.schedule((minutes - 1) * MINUTE, server, function (callback) {
        let data = callback.data
        //data.tell(`English: Items in the world will be cleared after one minute.`)
        data.tell(`一分钟后清理掉落物。`)
        data.schedule(MINUTE, data, function(callback2) {
            killitems(callback2.data)
        })
        callback.reschedule()
    })
})