
onEvent("block.right_click", event => {
    let server = event.server
    let block = event.block
    let summoner = event.item.id
    let dim = block.world.dimension
    let basic = "minecraft:polished_blackstone"
    let altar = "minecraft:soul_soil"
    let border = "aoa3:ancient_rock"
    let wall = "minecraft:blackstone_wall"
    let light = "iceandfire:dread_portal"
    let deco = "bonetorch:bonetorch"
    if (summoner == "minecraft:torch") {
        if (block.offset(1, 0, 1).id == altar && block.offset(-1, 0, -1).id == altar && block.offset(1, 0, -1) == altar && block.offset(-1, 0, 1).id == altar && block.offset(0, -1, 0).id == altar && block.offset(1, -1, 1).id == altar && block.offset(1, -1, 0).id == altar && block.offset(1, -1, -1).id == altar && block.offset(-1, -1, 0).id == altar && block.offset(-1, -1, 1).id == altar && block.offset(-1, -1, -1).id == altar && block.offset(0, -1, 1).id == altar && block.offset(0, -1, -1).id == altar 
        && block.offset(2, -1, 0).id == basic && block.offset(2, -1, 1).id == basic && block.offset(2, -1, 2).id == basic && block.offset(2, -1, -1).id == basic && block.offset(2, -1, -2).id == basic && block.offset(-2, -1, 0).id == basic && block.offset(-2, -1, 1).id == basic && block.offset(-2, -1, 2).id == basic && block.offset(-2, -1, -1).id == basic && block.offset(-2, -1, -2).id == basic && block.offset(0, -1, -2).id == basic && block.offset(0, -1, 2).id == basic && block.offset(-1, -1, -2).id == basic && block.offset(1, -1, -2).id == basic && block.offset(-1, -1, 2).id == basic && block.offset(1, -1, 2).id == basic 
        && block.offset(3, -1, 0).id == border && block.offset(3, -1, 1).id == border && block.offset(3, -1, 2).id == border && block.offset(3, -1, -1).id == border && block.offset(3, -1, -2).id == border && block.offset(-3, -1, 0).id == border && block.offset(-3, -1, 1).id == border && block.offset(-3, -1, 2).id == border && block.offset(-3, -1, -1).id == border && block.offset(-3, -1, -2).id == border && block.offset(0, -1, -3).id == border && block.offset(1, -1, -3).id == border && block.offset(2, -1, -3).id == border && block.offset(-1, -1, -3).id == border && block.offset(-2, -1, -3).id == border && block.offset(0, -1, 3).id == border && block.offset(1, -1, 3).id == border && block.offset(2, -1, 3).id == border && block.offset(-1, -1, 3).id == border && block.offset(-2, -1, 3).id == border 
        && block.offset(4, -1, 0).id == basic && block.offset(4, -1, 1).id == basic && block.offset(4, -1, -1).id == basic && block.offset(-4, -1, 0).id == basic && block.offset(-4, -1, 1).id == basic && block.offset(-4, -1, -1).id == basic && block.offset(0, -1, -4).id == basic && block.offset(1, -1, -4).id == basic && block.offset(-1, -1, -4).id == basic && block.offset(0, -1, 4).id == basic && block.offset(1, -1, 4).id == basic && block.offset(-1, -1, 4).id == basic && block.offset(4, -1, 2).id == basic && block.offset(4, -1, 3).id == basic && block.offset(4, -1, -2).id == basic && block.offset(4, -1, -3).id == basic && block.offset(-4, -1, 2).id == basic && block.offset(-4, -1, 3).id == basic && block.offset(-4, -1, -2).id == basic && block.offset(-4, -1, -3).id == basic && block.offset(-3, -1, -4).id == basic && block.offset(-2, -1, -4).id == basic && block.offset(3, -1, -4).id == basic && block.offset(2, -1, -4).id == basic && block.offset(-3, -1, 4).id == basic && block.offset(-2, -1, 4).id == basic && block.offset(3, -1, 4).id == basic && block.offset(2, -1, 4).id == basic && block.offset(3, -1, 3).id == basic && block.offset(-3, -1, -3).id == basic && block.offset(-3, -1, 3).id == basic && block.offset(3, -1, -3).id == basic 
        && block.offset(5, -1, 0).id == wall && block.offset(5, -1, 1).id == wall && block.offset(5, -1, -1).id == wall && block.offset(-5, -1, 0).id == wall && block.offset(-5, -1, 1).id == wall && block.offset(-5, -1, -1).id == wall && block.offset(0, -1, -5).id == wall && block.offset(1, -1, -5).id == wall && block.offset(-1, -1, -5).id == wall && block.offset(0, -1, 5).id == wall && block.offset(1, -1, 5).id == wall && block.offset(-1, -1, 5).id == wall && block.offset(0, -1, 6).id == wall && block.offset(0, -1, -6).id == wall && block.offset(6, -1, 0).id == wall && block.offset(-6, -1, 0).id == wall && block.offset(0, 0, 5).id == wall && block.offset(0, 0, -5).id == wall && block.offset(5, 0, 0).id == wall && block.offset(-5, 0, 0).id == wall && block.offset(0, 1, 5).id == wall && block.offset(0, 1, -5).id == wall && block.offset(5, 1, 0).id == wall && block.offset(-5, 1, 0).id == wall && block.offset(0, 2, 5).id == wall && block.offset(0, 2, -5).id == wall && block.offset(5, 2, 0).id == wall && block.offset(-5, 2, 0).id == wall 
        && block.offset(0, 3, 5).id == light && block.offset(0, 3, -5).id == light && block.offset(5, 3, 0).id == light && block.offset(-5, 3, 0).id == light
        && block.offset(1, 1, 1).id == deco && block.offset(-1, 1, 1).id == deco && block.offset(-1, 1, -1).id == deco && block.offset(1, 1, -1).id == deco) {
            if (block.id == "minecraft:diamond_block" && block.offset(0, 0, 1).id == "minecraft:bone_block" && block.offset(0, 0, -1).id == "minecraft:bone_block" && block.offset(1, 0, 0).id == "minecraft:bone_block" && block.offset(-1, 0, 0).id == "minecraft:bone_block") {
                server.scheduleInTicks(60, server, function(callback1) {
                    callback1.server.runCommandSilent(`execute in ` + dim + ` run fill ${block.x} ${block.y} ${block.z} ${block.x} ${block.y} ${block.z} aoa3:dimensional_fabric`)
                })
                server.scheduleInTicks(120, server, function(callback2) {
                    callback2.server.runCommandSilent(`execute in ` + dim + ` run fill ${block.x + 1} ${block.y} ${block.z + 1} ${block.x - 1} ${block.y} ${block.z - 1} aoa3:dimensional_fabric`)
                })
                server.scheduleInTicks(180, server, function(callback3) {
                    callback3.server.runCommandSilent(`execute in ` + dim + ` run fill ${block.x + 4} ${block.y} ${block.z + 4} ${block.x - 4} ${block.y + 4} ${block.z - 4} aoa3:dimensional_fabric`)
                })
                server.scheduleInTicks(240, server, function(callback4) {
                    callback4.server.runCommandSilent(`execute in ` + dim + ` run fill ${block.x + 4} ${block.y} ${block.z + 4} ${block.x - 4} ${block.y + 4} ${block.z - 4} minecraft:air`)
                    callback4.server.runCommandSilent(`execute in ` + dim + ` run summon aoa3:smash ${block.x} ${block.y} ${block.z}`)
                })
            }
        }
    }
})