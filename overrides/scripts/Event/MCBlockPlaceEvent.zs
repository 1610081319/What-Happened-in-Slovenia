//Author: @Kasualix
import crafttweaker.api.event.block.MCBlockPlaceEvent;
import crafttweaker.api.events.CTEventManager;

CTEventManager.register<MCBlockPlaceEvent>((event) => {
    val entity = event.entity;
    val world = entity.world;
    if (world.remote) return; 
    val type = entity.type.commandString;
    val placed = event.placedBlock.commandString;
    val block = event.placedAgainst.commandString;
    val dim = world.dimension;
    val server = world.asServerWorld().server;
    
    if ("player" in type) {
        if ("puzzle_master" in placed) {
            if ("celeve" in dim) return;
            event.cancel();
        }
        if ("wither_skeleton_skull" in placed && "command_block" in block) {
            entity.addTag("storm_time");
            server.executeCommand("time set night", true);
        }
    }
});