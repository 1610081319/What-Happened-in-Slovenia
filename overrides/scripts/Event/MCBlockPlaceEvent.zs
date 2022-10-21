//Author: @Kasualix
import crafttweaker.api.event.block.MCBlockPlaceEvent;
import crafttweaker.api.util.text.MCTextComponent;
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
    val storm_time = MCTextComponent.createTranslationTextComponent("eventMessage.neverise.storm_time");

    if ("player" in type) {
        if ("puzzle_master" in placed) {
            if ("celeve" in dim) return;
            event.cancel();
        }
        if ("wither_skeleton_skull" in placed && "command_block" in block) {
            server.executeCommand("tag @a add storm_time", true);
            server.executeCommand("tell @a " + storm_time.formattedText, true);
            server.executeCommand("time set night", true);

        }
    }
});