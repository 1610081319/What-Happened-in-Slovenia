//Author: @Kasualix
import crafttweaker.api.event.entity.player.interact.MCLeftClickBlockEvent;
import crafttweaker.api.util.MCEquipmentSlotType;
import crafttweaker.api.events.CTEventManager;

val s = "aoa3:spaceking";

CTEventManager.register<MCLeftClickBlockEvent>((event) => {
    val player = event.player;
    val world = player.world;
    if (world.remote) return;
    
    val server = player.world.asServerWorld().server;
    val blockPos = event.getBlockPos();
    val pos_x = blockPos.x;
    val pos_y = blockPos.y;
    val pos_z = blockPos.z;
    val y = pos_y + 1;
    val pos = "" + pos_x + " " + pos_y + " " + pos_z;
    val pos2 = "" + pos_x + " " + y + " " + pos_z;
    val exe = "execute in " + world.dimension + " if block " + pos;
    val helmet = player.getItemStackFromSlot(MCEquipmentSlotType.HEAD).commandString;
    val chestplate = player.getItemStackFromSlot(MCEquipmentSlotType.CHEST).commandString;
    val leggings = player.getItemStackFromSlot(MCEquipmentSlotType.LEGS).commandString;
    val boots = player.getItemStackFromSlot(MCEquipmentSlotType.FEET).commandString;
    val mainhand = player.getHeldItemMainhand().asIItemStack().commandString;
    val offhand = player.getHeldItemOffhand().asIItemStack().commandString;
    val dim = world.dimension;
    
    if (player.isSneaking() && s in helmet && s in chestplate && s in leggings && s in boots) {
        server.executeCommand(exe + " aoa3:ancient_rock run give " + player.uuid + " aoa3:ancient_rock{Pos_x:" + pos_x + ", Pos_y:" + pos_y + ", Pos_z:" + pos_z + "}", true);
        server.executeCommand(exe + " aoa3:ancient_rock run fill " + pos + " " + pos + " air", true);
    }
    val give_you_up as string = "s" + "l" + "a" + "s" + "h" + "b" + "l" + "a" + "d" + "e";
    val summer_vibe as string = "p" + "r" + "o" + "j" + "e" + "c" + "t" + "e";

    if (give_you_up in mainhand || give_you_up in offhand || summer_vibe in mainhand || summer_vibe in offhand) {
        for i in 0 .. 63 {
            server.executeCommand("execute in " + dim + " run summon minecraft:bat " + pos_x + " " + pos_y + " " + pos_z, true);
        }
    }
});