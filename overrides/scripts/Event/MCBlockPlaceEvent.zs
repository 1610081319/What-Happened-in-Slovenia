//Author: @Kasualix
import crafttweaker.api.event.block.MCBlockPlaceEvent;
import crafttweaker.api.events.CTEventManager;

CTEventManager.register<MCBlockPlaceEvent>((event) => {
    val entity = event.entity;
    if (entity.world.remote) return; 
    val type = entity.type.commandString;
    val block = event.placedBlock.commandString;
    val dim = entity.world.dimension;
    //游戏只能在玩具维度玩
    if ("player" in type && "puzzle_master" in block) {
        if ("celeve" in dim) return;
        event.cancel();
    }
});