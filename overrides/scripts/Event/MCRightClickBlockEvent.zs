import crafttweaker.api.event.entity.player.interact.MCRightClickBlockEvent;
import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.util.MCEquipmentSlotType;
val aoa = "aoa player ";
CTEventManager.register<MCRightClickBlockEvent>((event) => {
    val player = event.player;
    if (player.world.remote) return;
    val cmd = player.world.asServerWorld().server;
    val item = player.getItemStackFromSlot(MCEquipmentSlotType.MAINHAND);
    val mainhand = item.commandString;
    val name = player.name;
    val exp = player.getExperienceTotal();
    if (exp >= 50 && player.removeTag("spaceking") && player.isSneaking() && "ancient_rock" in item.commandString && "aoa3" in item.commandString) {
        val pos as string[] = item.tag.asString().split(" ");
        player.removeTag("spaceking");
        cmd.executeCommand("tp " + name + " " + pos[9] + " " + pos[5] + " " + pos[1], true);
        player.giveExperiencePoints(-50);
    }
});