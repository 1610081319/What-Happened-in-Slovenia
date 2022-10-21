//Author: @Kasualix
import crafttweaker.api.event.entity.player.MCPlayerRespawnEvent;
import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.util.text.MCTextComponent;

CTEventManager.register<MCPlayerRespawnEvent>(event => {
    val player = event.player;
    val world = player.world;
    val server = world.asServerWorld().server;
    val pos = player.position;
    val end = event.isEndConquered();
    if (player.world.remote || end) return;
    
    if (player.removeTag("if_you_die_in_witherstorm_you_should_respawn_in_witherstorm")) {
        server.executeCommand("execute in neverise:witherstorm run tp " + player.uuid + " 0 205 0", true);
        server.executeCommand("effect give " + player.uuid + " minecraft:slow_falling 60", true);
    }
    if (player.removeTag("if_you_die_in_nowhere_you_should_respawn_in_nowhere")) server.executeCommand("execute in aoa3:nowhere run tp " + player.uuid + " 0 205 0", true);
    
    if (player.removeTag("inm")) {
        for i in 0 .. 64 {
            server.executeCommand("execute in " + world.dimension + " run summon minecraft:bat " + pos.x + " " + pos.y + " " + pos.z, true);
        }
        player.setHealth(1);
        player.sendMessage(MCTextComponent.createTranslationTextComponent("eventMessage.neverise.inm_respawn"));
    }
});