import crafttweaker.api.event.block.MCBlockPlaceEvent;
import crafttweaker.api.util.text.MCTextComponent;
import crafttweaker.api.events.CTEventManager;

CTEventManager.register<MCBlockPlaceEvent>((event) => {
    var entity = event.entity;
    var world = entity.world;
    if (world.remote) return; 

    if ("player" in entity.type.commandString) {
        var placed = event.placedBlock.commandString;
        var server = world.asServerWorld().server;
        if ("wither_skeleton_skull" in placed && "command_block" in event.placedAgainst.commandString) {
            server.executeCommand("tag @e add storm_time", true);
            server.executeCommand("tell @a " + game.localize("eventMessage.neverise.storm_time"), true);
            world.asServerWorld().setTimeToNight();
            return;
        }
        if ("puzzle_master" in placed && !("celeve" in world.dimension)) {
            event.cancel();
        }
    }
});