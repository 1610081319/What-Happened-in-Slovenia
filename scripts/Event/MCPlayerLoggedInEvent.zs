import crafttweaker.api.event.entity.player.MCPlayerLoggedInEvent;
import crafttweaker.api.events.CTEventManager;

CTEventManager.register<MCPlayerLoggedInEvent>(event => {
    var player = event.player;
    var world = player.world;
    if (world.remote) return;
    if (player.removeTag("logged")) {
        player.addTag("logged");
        return;
    }
    player.addTag("logged");
    player.addGameStage("logged");
    player.addGameStage("before_wither");
    world.asServerWorld().server.executeCommand("execute in aoa3:nowhere run tp " + player.uuid + " 0 202 0", true);
}); 