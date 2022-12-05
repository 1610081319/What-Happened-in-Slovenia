import crafttweaker.api.event.entity.living.MCLivingDeathEvent; 
import crafttweaker.api.events.CTEventManager;

CTEventManager.register<MCLivingDeathEvent>((event) => {
    var entity = event.entityLiving;
    var world = entity.world;
    if (world.remote) return;
    var server = world.asServerWorld().server;
    var type = entity.type.commandString;
    var dim = world.dimension;
    var source = event.getSource().trueSource;

    if ("player" in type) {
        if ("void:withertsorm" in dim || "bowels" in dim) entity.addTag("witherespawn");
    }
    
    if (source == null) return;
    if ("player" in source.type.commandString) {
        if ("command_block" in type) {
            server.executeCommand("give " + source.name + " aoa3:nowhere_portal", true);
            source.addTag("overworld");
        }
    }
});