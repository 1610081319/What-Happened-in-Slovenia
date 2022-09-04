import crafttweaker.api.event.entity.living.MCLivingDeathEvent;
import crafttweaker.api.events.CTEventManager;
CTEventManager.register<MCLivingDeathEvent>((event) => {
    val entity = event.entityLiving;
    if (entity.world.remote) return;
    val source = event.getSource().trueSource;
    if (source == null) return;
    if ("witherstormmod:command_block" in entity.type.commandString) {
        source.addTag("storm_destroyer");
    }
});