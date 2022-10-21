//Author: @Kasualix
import crafttweaker.api.event.entity.player.MCPlayerLoggedInEvent;
import crafttweaker.api.events.CTEventManager;

CTEventManager.register<MCPlayerLoggedInEvent>(event => {
    val player = event.player;
    if (player.world.remote) return;
    if (player.hasGameStage("logged")) return;
    val server = player.world.asServerWorld().server;
    
    player.addGameStage("logged");
    player.addGameStage("before_wither");
    player.addGameStage("iromine_passport");
    player.addTag("now_let_us_go_to_nowhere");
    server.executeCommand("tp " + player.uuid + " 0 255 0", true);
    server.executeCommand("setblock 0 255 0 aoa3:nowhere_portal", true);
    player.give(<item:ftbquests:book>);
});