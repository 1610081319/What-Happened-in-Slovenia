//Author: @Kasualix
import crafttweaker.api.event.entity.player.interact.MCRightClickBlockEvent;
import crafttweaker.api.util.MCEquipmentSlotType;
import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.util.BlockPos;

CTEventManager.register<MCRightClickBlockEvent>((event) => {
    val player = event.player;
    val world = player.world;
    if (world.remote) return;
    val server = world.asServerWorld().server;
    val item = player.getItemStackFromSlot(MCEquipmentSlotType.MAINHAND);
    val uuid = player.uuid;
    val exp = player.getExperienceTotal();
    val sneak = player.isSneaking();
    val bp = event.blockPos;
    val block = world.getBlockState(bp).commandString;
    val should_be_air as BlockPos[] = [
        bp.add(-1, 1, -1),
        bp.add(1, 1, -1),
        bp.add(1, 1, 1),
        bp.add(-1, 1, 1),
        bp.add(0, 0, 1),
        bp.add(0, 0, -1),
        bp.add(1, 0, 0),
        bp.add(-1, 0, 0),
        bp.add(1, 0, 1),
        bp.add(1, 0, -1),
        bp.add(-1, 0, 1),
        bp.add(-1, 0, -1),
        bp.add(2, 0, 1),
        bp.add(2, 0, -1),
        bp.add(2, 0, 2),
        bp.add(2, 0, -2),
        bp.add(-2, 0, 1),
        bp.add(-2, 0, -1),
        bp.add(-2, 0, 2),
        bp.add(-2, 0, -2),
        bp.add(-2, 0, 0),
        bp.add(2, 0, 0),
        bp.add(-1, 0, -2),
        bp.add(1, 0, -2),
        bp.add(-1, 0, 2),
        bp.add(1, 0, 2),
        bp.add(0, 0, 2),
        bp.add(0, 0, -2),
        bp.add(4, 0, 0),
        bp.add(4, 0, 1),
        bp.add(4, 0, -1),
        bp.add(4, 0, 2),
        bp.add(4, 0, -2),
        bp.add(4, 0, 3),
        bp.add(4, 0, -3),
        bp.add(-4, 0, 0),
        bp.add(-4, 0, 1),
        bp.add(-4, 0, -1),
        bp.add(-4, 0, 2),
        bp.add(-4, 0, -2),
        bp.add(-4, 0, 3),
        bp.add(-4, 0, -3),
        bp.add(0, 0, 4),
        bp.add(1, 0, 4),
        bp.add(-1, 0, 4),
        bp.add(2, 0, 4),
        bp.add(-2, 0, 4),
        bp.add(3, 0, 4),
        bp.add(-3, 0, 4),
        bp.add(0, 0, -4),
        bp.add(1, 0, -4),
        bp.add(-1, 0, -4),
        bp.add(2, 0, -4),
        bp.add(-2, 0, -4),
        bp.add(3, 0, -4),
        bp.add(-3, 0, -4),
        bp.add(3, 0, 3),
        bp.add(-3, 0, 3),
        bp.add(-3, 0, -3),
        bp.add(3, 0, -3),
        bp.add(3, 0, 0),
        bp.add(3, 0, -1),
        bp.add(3, 0, 1),
        bp.add(3, 0, -2),
        bp.add(3, 0, 2),
        bp.add(-3, 0, 0),
        bp.add(-3, 0, -1),
        bp.add(-3, 0, 1),
        bp.add(-3, 0, -2),
        bp.add(-3, 0, 2),
        bp.add(1, 0, -3),
        bp.add(-1, 0, -3),
        bp.add(2, 0, -3),
        bp.add(-2, 0, -3),
        bp.add(1, 0, 3),
        bp.add(-1, 0, 3),
        bp.add(2, 0, 3),
        bp.add(-2, 0, 3),
        bp.add(0, 0, -3),
        bp.add(0, 0, 3),
        bp.add(5, 0, 0),
        bp.add(5, 0, 1),
        bp.add(5, 0, -1),
        bp.add(-5, 0, 0),
        bp.add(-5, 0, 1),
        bp.add(-5, 0, -1),
        bp.add(0, 0, 5),
        bp.add(1, 0, 5),
        bp.add(-1, 0, 5),
        bp.add(0, 0, -5),
        bp.add(1, 0, -5),
        bp.add(-1, 0, -5),
        bp.add(0, 0, 6),
        bp.add(0, 0, -6),
        bp.add(6, 0, 0),
        bp.add(-6, 0, 0),
        bp.add(5, 1, 0),
        bp.add(5, 2, 0),
        bp.add(5, 3, 0),
        bp.add(-5, 1, 0),
        bp.add(-5, 2, 0),
        bp.add(-5, 3, 0),
        bp.add(0, 1, 5),
        bp.add(0, 2, 5),
        bp.add(0, 3, 5),
        bp.add(0, 1, -5),
        bp.add(0, 2, -5),
        bp.add(0, 3, -5),
        bp.add(0, 4, 5),
        bp.add(5, 4, 0),
        bp.add(-5, 4, 0),
        bp.add(0, 4, -5),
        bp.add(1, 2, 1),
        bp.add(-1, 2, 1),
        bp.add(-1, 2, -1),
        bp.add(1, 2, -1)
    ];
    if (exp >= 50 && player.removeTag("spaceking") && sneak && "aoa3:ancient_rock" in item.commandString) {
        val pos as string[] = item.tag.asString().split(" ");
        player.removeTag("spaceking");
        server.executeCommand("execute in " + world.dimension + " run tp " + uuid + " " + pos[9] + " " + pos[5] + " " + pos[1], true);
        player.giveExperiencePoints(-50);
    }
    if ("appliedenergistics2:quartz_block" in item.commandString && "ironchest:obsidian_chest" in block) {
        world.setBlockState(bp, <blockstate:appliedenergistics2:drive>);
        world.setBlockState(bp.up(1), <blockstate:appliedenergistics2:security_station:powered=false>);
        player.setItemStackToSlot(MCEquipmentSlotType.MAINHAND, <item:minecraft:air>);
    }
    if ("kubejs:example_item" in item.commandString && "chest" in block) {
        for air in 0 .. should_be_air.length {
            if ("air" in world.getBlockState(should_be_air[air]).commandString) {} else {
                return;
            }
        }
        world.setBlockState(bp, <blockstate:minecraft:soul_soil>);
        for first in 0 .. 12 {
            world.setBlockState(should_be_air[first], <blockstate:minecraft:soul_soil>);
        }
        for second in 12 .. 60 {
            world.setBlockState(should_be_air[second], <blockstate:minecraft:polished_blackstone>);
        }
        for third in 60 .. 80 {
            world.setBlockState(should_be_air[third], <blockstate:aoa3:ancient_rock>);
        }
        for fourth in 80 .. 108 {
            world.setBlockState(should_be_air[fourth], <blockstate:minecraft:blackstone_wall>);
        }
        for fifth in 108 .. 112 {
            world.setBlockState(should_be_air[fifth], <blockstate:iceandfire:dread_portal>);
        }
        for sixth in 112 .. 116 {
            world.setBlockState(should_be_air[sixth], <blockstate:bonetorch:bonetorch>);
        }
    }
});
