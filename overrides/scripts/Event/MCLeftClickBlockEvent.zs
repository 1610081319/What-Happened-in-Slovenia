import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.entity.player.interact.MCLeftClickBlockEvent;
import crafttweaker.api.util.MCEquipmentSlotType;
val a = "aoa3";
val s = "spaceking";
CTEventManager.register<MCLeftClickBlockEvent>((event) => {
    val player = event.player;
    if (player.world.remote) return;
    val cmd = player.world.asServerWorld().server;
    val pos_x = event.getBlockPos().x;
    val pos_y = event.getBlockPos().y;
    val pos_z = event.getBlockPos().z;
    val y = pos_y + 1;
    val pos = "" + pos_x + " " + pos_y + " " + pos_z;
    val pos2 = "" + pos_x + " " + y + " " + pos_z;
    val exe = "execute if block " + pos;
    val item = event.itemStack.commandString;
    val helmet = player.getItemStackFromSlot(MCEquipmentSlotType.HEAD).commandString;
    val chestplate = player.getItemStackFromSlot(MCEquipmentSlotType.CHEST).commandString;
    val leggings = player.getItemStackFromSlot(MCEquipmentSlotType.LEGS).commandString;
    val boots = player.getItemStackFromSlot(MCEquipmentSlotType.FEET).commandString;
    if (player.isSneaking() && a in helmet && a in chestplate && a in leggings && a in boots && s in helmet && s in chestplate && s in leggings && s in boots) {
        cmd.executeCommand(exe + " aoa3:ancient_rock run give " + player.name + " aoa3:ancient_rock{Pos_x:" + pos_x + ", Pos_y:" + pos_y + ", Pos_z:" + pos_z + "}", true);
        cmd.executeCommand(exe + " aoa3:ancient_rock run fill " + pos + " " + pos + " air", true);
    }
});