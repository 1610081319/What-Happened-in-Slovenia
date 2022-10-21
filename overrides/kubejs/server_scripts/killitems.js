function killitems(server) {
    server.getEntities("@e[type=minecraft:item]").forEach(entity => {
        entity.kill()
    })
    server.tell(`已清理掉落物`)
    server.tell(`如果你想手动清理掉落物，请运行/killitems指令`)
}

const minutes = 20

onEvent('server.load', function (event) {
    let server = event.server
    server.schedule((minutes - 1) * MINUTE, server, function (callback) {
        let data = callback.data
        data.tell(`一分钟后将清理掉落物`)
        data.schedule(MINUTE, data, function(callback2) {
            killitems(callback2.data)
        })
        callback.reschedule()
    })
})