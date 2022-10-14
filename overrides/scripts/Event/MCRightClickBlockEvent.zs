//Author: @Kasualix
import crafttweaker.api.event.entity.player.interact.MCRightClickBlockEvent;
import crafttweaker.api.util.MCEquipmentSlotType;
import crafttweaker.api.events.CTEventManager;

CTEventManager.register<MCRightClickBlockEvent>((event) => {
    val player = event.player;
    val world = player.world;
    if (player.world.remote) return;
    //空间之主套装 远古岩石特性实现
    val server = world.asServerWorld().server;
    val item = player.getItemStackFromSlot(MCEquipmentSlotType.MAINHAND);
    val uuid = player.uuid;
    val exp = player.getExperienceTotal();
    val sneak = player.isSneaking();
    if (exp >= 50 && player.removeTag("spaceking") && sneak && "aoa3:ancient_rock" in item.commandString) {
        val pos as string[] = item.tag.asString().split(" ");
        player.removeTag("spaceking");
        server.executeCommand("execute in " + world.dimension + " run tp " + uuid + " " + pos[9] + " " + pos[5] + " " + pos[1], true);
        player.giveExperiencePoints(-50);
    }
});
