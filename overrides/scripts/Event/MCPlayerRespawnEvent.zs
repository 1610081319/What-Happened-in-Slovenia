//Author: @Kasualix
import crafttweaker.api.event.entity.player.MCPlayerRespawnEvent;
import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.util.text.MCTextComponent;

CTEventManager.register<MCPlayerRespawnEvent>(event => {
    val player = event.player;
    val world = player.world;
    val cmd = world.asServerWorld().server;
    val pos = player.position;
    if (player.world.remote) return;
    //tag已经注释了一切
    if (player.removeTag("if_you_die_in_lostcities_you_should_respawn_in_lostcities")) {
        cmd.executeCommand("execute in lostcities:lostcity run tp " + player.uuid + " 0 205 0", true);
        cmd.executeCommand("effect give " + player.uuid + " minecraft:slow_falling 60", true);
    }
    if (player.removeTag("if_you_die_in_nowhere_you_should_respawn_in_nowhere")) cmd.executeCommand("execute in aoa3:nowhere run tp " + player.uuid + " 0 205 0", true);
    
    if (player.removeTag("inm")) {
        for i in 0 .. 64 {
            cmd.executeCommand("execute in " + world.dimension + " run summon minecraft:bat " + pos.x + " " + pos.y + " " + pos.z, true);
        }
        player.setHealth(1);
        player.sendMessage(MCTextComponent.createTranslationTextComponent("eventMessage.neverise.inm_respawn"));
    }
});