//Author: @Kasualix
import crafttweaker.api.event.entity.living.MCLivingDeathEvent;
import crafttweaker.api.events.CTEventManager;

CTEventManager.register<MCLivingDeathEvent>((event) => {
    val entity = event.entityLiving;
    if (entity.world.remote) return;
    val source = event.getSource().trueSource;
    if (source == null) return;
    val type = entity.type.commandString;
    
    if ("witherstormmod:command_block" in type) {
        source.addTag("storm_destroyer");
        source.removeTag("now_let_us_kill_the_command_block_in_the_wither_storm");
        source.removeTag("storm_time");
    }
    if ("ferrous_wroughtnaut" in type && "player" in source.type.commandString) source.addTag("iromine_passport");
});