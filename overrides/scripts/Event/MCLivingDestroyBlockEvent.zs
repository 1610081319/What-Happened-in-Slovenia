//Author: @Kasualix
import crafttweaker.api.event.block.MCBlockBreakEvent;
import crafttweaker.api.events.CTEventManager;

CTEventManager.register<MCBlockBreakEvent>(event => {
    val entity = event.player;
    val world = entity.world;
    if (world.remote) return;
    if ("tnt" in entity.type.commandString) event.cancel();
});