//Author: @Kasualix
import crafttweaker.api.event.entity.MCItemEvent;
import crafttweaker.api.events.CTEventManager;

CTEventManager.register<MCItemEvent>(event => {
    val entity = event.entityItem;
    val world = entity.world;
    if (world.remote) return;
    val item = entity.item.commandString;
    val dim = world.dimension;
    if ("wither_rose" in item && "neverise:witherstorm" in dim) entity.remove();
});