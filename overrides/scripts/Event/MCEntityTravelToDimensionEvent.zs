import crafttweaker.api.event.entity.MCEntityTravelToDimensionEvent;
import crafttweaker.api.events.CTEventManager;
CTEventManager.register<MCEntityTravelToDimensionEvent>(event => {
    val entity = event.entity;
    if (entity.world.remote) return; 
    if ("overworld" in event.dimension.commandString && entity.removeTag("start") && "nowhere" in entity.world.dimension && "player" in entity.type.commandString) {
        entity.removeTag("start");
        entity.addTag("lost");
        entity.world.asServerWorld().server.executeCommand("effect give " + entity.uuid + " minecraft:blindness 16 255", true);
    }
    if ("lostcities" in event.dimension.commandString && "nowhere" in entity.world.dimension && entity.removeTag("bto") && "player" in entity.type.commandString) {
        event.cancel();
        entity.addTag("overworld");
    }
});