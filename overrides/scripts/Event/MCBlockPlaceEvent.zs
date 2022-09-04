import crafttweaker.api.event.block.MCBlockPlaceEvent;
import crafttweaker.api.events.CTEventManager;
CTEventManager.register<MCBlockPlaceEvent>((event) => {
    val entity = event.entity;
    if (entity.world.remote) return; 
    if ("player" in entity.type.commandString && "puzzle_master" in event.placedBlock.commandString) {
        if ("celeve" in entity.world.dimension) return;
        event.cancel();
    }
});