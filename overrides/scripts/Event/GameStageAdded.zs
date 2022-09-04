import crafttweaker.api.events.CTEventManager;
import mods.gamestages.events.GameStageAdded;
import crafttweaker.api.util.text.MCTextComponent;
import crafttweaker.api.item.IItemStack;
CTEventManager.register<GameStageAdded>((event) => {
    val player = event.player;
    if (player.world.remote) return;
    if (event.stage == "enig") {
        val inventory = player.inventory;
        inventory.remove(<item:enigmaticlegacy:cursed_ring>);
        inventory.remove(<item:enigmaticlegacy:enigmatic_amulet>);
        player.sendMessage(" ");
        player.sendMessage(MCTextComponent.createTranslationTextComponent("eventMessage.neverise.login"));
    }
});