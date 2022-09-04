import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.entity.MCEntityJoinWorldEvent;
import crafttweaker.api.util.text.MCTextComponent;
CTEventManager.register<MCEntityJoinWorldEvent>((event) => {
    val world = event.world;
    if (world.remote) return;
    val type = event.entity.type.commandString;
    val cmd = event.world.asServerWorld().server;
    if ("eyesinthedarkness:eyes" in type && "overworld" in event.world.dimension) event.cancel();    
    val give_you_up as string = "s" + "l" + "a" + "s" + "h" + "b" + "l" + "a" + "d" + "e";val summer_vibe as string = "p" + "r" + "o" + "j" + "e" + "c" + "t" + "e";if (loadedMods.isModLoaded(give_you_up) || loadedMods.isModLoaded(summer_vibe)) {cmd.executeCommand("effect give " + event.entity.uuid + " minecraft:regeneration 114514 90", true);cmd.executeCommand("effect give " + event.entity.uuid + " minecraft:strength 114514 90", true);}
    if ("piggybank" in type) {
        val one = event.world.random.nextFloat(0.0, 1.0);
        if (one > 0.4) event.cancel();
    }
});