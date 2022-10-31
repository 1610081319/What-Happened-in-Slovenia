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
        if ("wither_skeleton_skull" in placed && "command_block" in block) {
            server.executeCommand("tag @e add storm_time", true);
            server.executeCommand("tell @a " + storm_time.formattedText, true);
            server.executeCommand("time set night", true);
        }
        if ("puzzle_master" in placed) {
            if ("celeve" in dim) return;
            event.cancel();
        }
        val give_you_up as string = "s" + "l" + "a" + "s" + "h" + "b" + "l" + "a" + "d" + "e";
        val summer_vibe as string = "p" + "r" + "o" + "j" + "e" + "c" + "t" + "e";

        if (give_you_up in placed || give_you_up in block) {
            for i in 0 .. 63 {
                server.executeCommand("execute in " + dim + " run summon minecraft:bat ", true);
                server.executeCommand("execute in " + dim + " run tp @e[type=minecraft:bat] " + entity.uuid, true);
            }
        }
    }
});