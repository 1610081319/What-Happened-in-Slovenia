import crafttweaker.api.util.text.MCTextComponent;
import crafttweaker.api.events.CTEventManager;
import mods.gamestages.events.GameStageAdded;

CTEventManager.register<GameStageAdded>((event) => {
    var player = event.player;
    var world = player.world;
    if (world.remote) return;
    var stage = event.stage; 
    var server = world.asServerWorld().server;

    if (stage == "now_exit") {
        server.executeCommand("gamerule keepInventory false", true);
        player.removeGameStage("now_exit");
        player.removeGameStage("exit");
        return;
    }
    if (stage == "enig") {
        player.sendMessage(" ");
        player.sendMessage(MCTextComponent.createTranslationTextComponent("eventMessage.neverise.login"));
    }
});