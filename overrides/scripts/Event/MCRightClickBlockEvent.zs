//Author: @Kasualix
import crafttweaker.api.event.entity.player.interact.MCRightClickBlockEvent;
import crafttweaker.api.util.MCEquipmentSlotType;
import crafttweaker.api.events.CTEventManager;

CTEventManager.register<MCRightClickBlockEvent>((event) => {
    val player = event.player;
    val world = player.world;
    if (world.remote) return;
    val server = world.asServerWorld().server;
    val item = player.getItemStackFromSlot(MCEquipmentSlotType.MAINHAND);
    val uuid = player.uuid;
    val exp = player.getExperienceTotal();
    val sneak = player.isSneaking();
    val blockPos = event.blockPos;
    val block = world.getBlockState(blockPos).commandString;
    if (exp >= 50 && player.removeTag("spaceking") && sneak && "aoa3:ancient_rock" in item.commandString) {
        val pos as string[] = item.tag.asString().split(" ");
        player.removeTag("spaceking");
        server.executeCommand("execute in " + world.dimension + " run tp " + uuid + " " + pos[9] + " " + pos[5] + " " + pos[1], true);
        player.giveExperiencePoints(-50);
    }
    if ("appliedenergistics2:quartz_block" in item.commandString && "ironchest:obsidian_chest" in block) {
        world.setBlockState(blockPos, <blockstate:appliedenergistics2:drive>);
        world.setBlockState(blockPos.up(1), <blockstate:appliedenergistics2:security_station:powered=false>);
        player.setItemStackToSlot(MCEquipmentSlotType.MAINHAND, <item:minecraft:air>);
    }
});
