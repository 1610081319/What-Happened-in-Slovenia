//Author: @Kasualix
import crafttweaker.api.util.text.MCTextComponent;
import crafttweaker.api.events.CTEventManager;
import mods.gamestages.events.GameStageAdded;

CTEventManager.register<GameStageAdded>((event) => {
    val player = event.player;
    if (player.world.remote) return;
    val stage = event.stage;
    
    if (stage == "enig") {
        player.sendMessage(" ");
        player.sendMessage(MCTextComponent.createTranslationTextComponent("eventMessage.neverise.login"));
    }
});