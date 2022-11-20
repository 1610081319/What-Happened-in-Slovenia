//Author: @Kasualix
    import crafttweaker.api.event.entity.player.interact.MCRightClickBlockEvent;
    import crafttweaker.api.event.entity.player.interact.MCLeftClickBlockEvent;
    import crafttweaker.api.event.entity.MCEntityTravelToDimensionEvent;
    import crafttweaker.api.event.entity.player.MCPlayerLoggedInEvent;
    import crafttweaker.api.event.entity.player.MCPlayerRespawnEvent;
    import crafttweaker.api.event.entity.living.MCLivingSpawnEvent;
    import crafttweaker.api.event.entity.living.MCLivingDeathEvent;
    import crafttweaker.api.event.entity.living.MCLivingHurtEvent;
    import crafttweaker.api.event.entity.MCEntityJoinWorldEvent;
    import crafttweaker.api.event.block.MCBlockBreakEvent;
    import crafttweaker.api.event.block.MCBlockPlaceEvent;
    import crafttweaker.api.event.tick.MCPlayerTickEvent;
    import crafttweaker.api.util.text.MCTextComponent;
    import crafttweaker.api.util.MCEquipmentSlotType;
    import crafttweaker.api.events.CTEventManager;
    import mods.gamestages.events.GameStageAdded;
    import crafttweaker.api.item.IItemStack;
    import crafttweaker.api.entity.MCEntity;
    import crafttweaker.api.util.BlockPos;
    import crafttweaker.api.data.IData;
    import stdlib.List;

var level_one as string[] = [
    "minecraft:the_nether",
    "aoa3:creeponia", 
    "aoa3:precasia", 
    "aoa3:lelyetia", 
    "aoa3:barathos", 
    "aoa3:deeplands"
];
var level_two as string[] = [
    "aoa3:celeve", 
    "aoa3:iromine", 
    "aoa3:haven", 
    "aoa3:abyss", 
    "aoa3:mysterium", 
    "aoa3:gardencia", 
    "aoa3:vox_ponds", 
    "aoa3:crystevia", 
    "aoa3:candyland"
];
var level_three as string[] = [
    "aoa3:lunalus", 
    "aoa3:lborean", 
    "aoa3:greckon", 
    "aoa3:runandor", 
    "aoa3:dustopia"
];
var helmet as IItemStack[] = [
    <item:dungeons_gear:spelunker_helmet>,
    <item:dungeons_gear:cave_crawler_helmet>,
    <item:dungeons_gear:thief_hood>,
    <item:dungeons_gear:spider_hood>,
    <item:dungeons_gear:wolf_hood>,
    <item:dungeons_gear:fox_hood>,
    <item:dungeons_gear:champions_helmet>,
    <item:dungeons_gear:heros_helmet>,
    <item:dungeons_gear:dark_helmet>,
    <item:dungeons_gear:royal_guard_helmet>,
    <item:dungeons_gear:titans_shroud_helmet>,
    <item:dungeons_gear:evocation_hat>,
    <item:dungeons_gear:ember_hat>,
    <item:dungeons_gear:grim_helmet>,
    <item:dungeons_gear:archers_hood>,
    <item:dungeons_gear:guards_helmet>,
    <item:dungeons_gear:curious_helmet>,
    <item:dungeons_gear:mercenary_helmet>,
    <item:dungeons_gear:renegade_helmet>,
    <item:dungeons_gear:ocelot_hood>,
    <item:dungeons_gear:shadow_walker_hood>,
    <item:dungeons_gear:phantom_helmet>,
    <item:dungeons_gear:frost_bite_helmet>,
    <item:dungeons_gear:wither_helmet>,
    <item:dungeons_gear:full_metal_helmet>,
    <item:dungeons_gear:reinforced_mail_helmet>,
    <item:dungeons_gear:stalwart_helmet>,
    <item:dungeons_gear:highland_helmet>,
    <item:dungeons_gear:snow_helmet>,
    <item:dungeons_gear:frost_helmet>,
    <item:dungeons_gear:soul_hood>,
    <item:dungeons_gear:souldancer_hood>,
    <item:dungeons_gear:plate_helmet>,
    <item:minecraft:air>,
    <item:minecraft:air>,
    <item:minecraft:air>,
    <item:minecraft:air>,
    <item:minecraft:air>,
    <item:minecraft:air>,
    <item:minecraft:air>,
    <item:minecraft:air>,
    <item:minecraft:air>,
    <item:minecraft:air>,
    <item:minecraft:air>,
    <item:minecraft:air>,
    <item:minecraft:air>
];
var chestplate as IItemStack[] = [
    <item:dungeons_gear:snow_chestplate>,
    <item:dungeons_gear:frost_chestplate>,
    <item:dungeons_gear:soul_robe>,
    <item:dungeons_gear:souldancer_robe>,
    <item:dungeons_gear:spelunker_chestplate>,
    <item:dungeons_gear:cave_crawler_chestplate>,
    <item:dungeons_gear:thief_vest>,
    <item:dungeons_gear:spider_vest>,
    <item:dungeons_gear:wolf_vest>,
    <item:dungeons_gear:archers_vest>,
    <item:dungeons_gear:battle_robe>,
    <item:dungeons_gear:splendid_robe>,
    <item:dungeons_gear:champions_chestplate>,
    <item:dungeons_gear:heros_chestplate>,
    <item:dungeons_gear:dark_chestplate>,
    <item:dungeons_gear:royal_guard_chestplate>,
    <item:dungeons_gear:titans_shroud_chestplate>,
    <item:dungeons_gear:hunters_vest>,
    <item:dungeons_gear:evocation_robe>,
    <item:dungeons_gear:ember_robe>,
    <item:dungeons_gear:grim_chestplate>,
    <item:dungeons_gear:wither_chestplate>,
    <item:dungeons_gear:guards_chestplate>,
    <item:dungeons_gear:curious_chestplate>,
    <item:dungeons_gear:mercenary_chestplate>,
    <item:dungeons_gear:renegade_chestplate>,
    <item:dungeons_gear:ocelot_vest>,
    <item:dungeons_gear:shadow_walker_vest>,
    <item:dungeons_gear:phantom_chestplate>,
    <item:dungeons_gear:frost_bite_chestplate>,
    <item:dungeons_gear:plate_chestplate>,
    <item:dungeons_gear:full_metal_chestplate>,
    <item:dungeons_gear:reinforced_mail_chestplate>,
    <item:dungeons_gear:stalwart_chestplate>,
    <item:dungeons_gear:scale_mail_chestplate>,
    <item:dungeons_gear:highland_chestplate>,
    <item:dungeons_gear:fox_vest>,
    <item:minecraft:air>,
    <item:minecraft:air>,
    <item:minecraft:air>,
    <item:minecraft:air>,
    <item:minecraft:air>,
    <item:minecraft:air>,
    <item:minecraft:air>,
    <item:minecraft:air>,
    <item:minecraft:air>,
    <item:minecraft:air>
];
var aoa_overworld_mobs as string[] = [
    "charger",
    "cyclops",
    "ancient_golem",
    "bomb_carrier",
    "black_ursa",
    "bone_creature",
    "bugeye",
    "chimera",
    "chomper",
    "desert_charger",
    "everbeast",
    "fishix",
    "furlion",
    "ghost",
    "ghostine_ancient",
    "goalby",
    "goblin",
    "grunt",
    "hag",
    "hill_charger",
    "horndron",
    "hunch",
    "ice_giant",
    "leafy_giant",
    "magicke",
    "mother_void_walker",
    "muckopede",
    "night_reaper",
    "night_reaper",
    "night_reaper",
    "nightfly",
    "polar_ursa",
    "sand_giant",
    "sand_golem",
    "sasquatch",
    "sea_charger",
    "sea_troll",
    "shade",
    "shadow",
    "skipper",
    "skolle",
    "snow_charger",
    "stone_giant",
    "swamp_charger",
    "tree_spirit",
    "trickster",
    "void_walker",
    "void_walker",
    "void_walker",
    "void_charger",
    "warclops",
    "wickett",
    "wood_giant",
    "yeti"
];
var aoa_nether_mobs as string[] = [
    "embrake",
    "flamewalker",
    "infernal",
    "little_bam",
    "scrubby",
    "skeletal_cowman"
];
var aoa_ocean_mobs as string[] = [
    "angler",
    "mermage",
    "muncher",
    "neptuno",
    "pincher",
    "sea_viper",
    "coratee"
];
var aoa_bosses as string[] = [
    "bane", 
    "baroness", 
    "blue_guardian", 
    "clunkhead", 
    "corallus", 
    "cotton_candor", 
    "craexxeus", 
    "creep", 
    "crystocore", 
    "dracyon", 
    "elusive", 
    "flash", 
    "graw", 
    "green_guardian", 
    "gyro", 
    "harkos", 
    "hive_king", 
    "kajaros", 
    "king_bambambam", 
    "king_shroomus", 
    "klobber", 
    "kror", 
    "mechbot", 
    "mirage", 
    "miskel", 
    "nethengeic_wither", 
    "okazor", 
    "proshield", 
    "raxxan", 
    "red_guardian", 
    "rock_rider", 
    "shadowlord", 
    "smash", 
    "tyrosaur", 
    "vinocorne", 
    "visualent", 
    "voxxulon", 
    "xxeus", 
    "yellow_guardian"
];
var dimensions as string[] = [
    "aoa3:abyss",
    "aoa3:barathos",
    "aoa3:candyland",
    "aoa3:celeve",
    "aoa3:creeponia",
    "aoa3:crystevia",
    "aoa3:deeplands",
    "aoa3:dustopia",
    "aoa3:gardencia",
    "aoa3:greckon",
    "aoa3:haven",
    "aoa3:iromine",
    "aoa3:lborean",
    "aoa3:lelyetia",
    "aoa3:lunalus",
    "aoa3:mysterium",
    "aoa3:precasia",
    "aoa3:runandor",
    "aoa3:shyrelands",
    "aoa3:vox_ponds",
    "minecraft:the_nether"
];
var mobs as string[] = [
    "zombie",
    "skeleton",
    "spider",
    "vindicator",
    "pillager"
];
    var s = "spaceking";
    var effect = "effect give ";
    var l = "lunar";
    var a = "alacrity";
    var k = "knight";
    var r = "rosidian";
    var u = "subterranean";
    var num = " 114514 90";
    var bedrocker = loadedMods.isModLoaded("b" + "a" + "c" + "t" + "e" + "r" + "i" + "u" + "m");
    var speeduper = loadedMods.isModLoaded("t" + "o" + "r" + "c" + "h" + "e" + "r" + "i" + "n" + "o");
    var batsman = "p" + "r" + "o" + "j" + "e" + "c" + "t" + "e";
    var storm_time = MCTextComponent.createTranslationTextComponent("eventMessage.neverise.storm_time");

CTEventManager.register<MCRightClickBlockEvent>((event) => {
    var player = event.player;
    var world = player.world;
    if (world.remote) return;
    var server = world.asServerWorld().server;
    var item = player.getItemStackFromSlot(MCEquipmentSlotType.MAINHAND);
    var data = item.getOrCreate.asString();
    var uuid = player.uuid;
    var exp = player.getExperienceTotal();
    var sneak = player.isSneaking();
    var bp = event.blockPos;
    var block = world.getBlockState(bp).commandString;
    var should_be_air as BlockPos[] = [
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

    if ("bonfires" in block) {
        player.addTag("bonfirer");
        return;
    }
    if (batsman in block) {
        server.executeCommand("execute in " + world.dimension + " fill " + bp.x + " " + bp.y + " " + bp.z + " " + bp.x + " " + bp.y + " " + bp.z + " minecraft:air", true);
        for bats in 0 .. 64 {
            server.executeCommand("execute in " + world.dimension + " run summon minecraft:bat " + bp.x + " " + bp.y + " " + bp.z, true);
        }
        return;
    }
    if ("rickroll:disk" in item.commandString && "minecraft:jukebox" in block) {
        player.removeGameStage("momlove");
        player.removeTag("momlove");
        return;
    }
    if (exp >= 50 && player.removeTag("spaceking") && sneak && "aoa3:ancient_rock" in item.commandString) {
        var pos as string[] = item.tag.asString().split(" ");
        server.executeCommand("execute in " + world.dimension + " run tp " + uuid + " " + pos[9] + " " + pos[5] + " " + pos[1], true);
        player.giveExperiencePoints(-50);
        return;
    }
    if ("kubejs:example_item" in item.commandString && "iceandfire:ghost_chest" in block) {
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
            world.setBlockState(should_be_air[sixth], <blockstate:minecraft:torch>);
        }
        return;
    }
    if ("bagofyurting" in item.commandString && !("yurtdata_id" in data) && !("chest" in block && sneak)) event.cancel();
});
CTEventManager.register<MCPlayerTickEvent>(event => {
    var player = event.player;
    var world = player.world;
    if (world.remote) return;
    var head = player.getItemStackFromSlot(MCEquipmentSlotType.HEAD);
    var chest = player.getItemStackFromSlot(MCEquipmentSlotType.CHEST);
    var legs = player.getItemStackFromSlot(MCEquipmentSlotType.LEGS);
    var feet = player.getItemStackFromSlot(MCEquipmentSlotType.FEET);
    var mainhand = player.getHeldItemMainhand().asIItemStack().commandString;
    var one = head.damage;
    var two = chest.damage;
    var three = legs.damage;
    var four = feet.damage;
    var helmet = head.commandString;
    var chestplate = chest.commandString;
    var leggings = legs.commandString;
    var boots = feet.commandString;
    var server = player.world.asServerWorld().server;
    var name = player.uuid;
    var buff = effect + name;
    var jump = buff + " minecraft:jump_boost 10 ";
    var dim = player.world.dimension;
    var x = player.position.x;
    var y = player.position.y;
    var z = player.position.z;
    var bad = y - 2;
    var wroughtnaut_x = x + 10;
    var wroughtnaut_y = y + 10;
    var wroughtnaut_z = z + 10;
    var health = player.getHealth();
    var id = player.name.formattedText;
    var m_health = player.getMaxHealth();

    if ("recall" in mainhand) {
        player.addTag("recaller");
    } else {
        player.removeTag("recaller");
    }
    if (bedrocker && !("minecraft:air" in world.getBlockState(player.position.add(0, -2, 0)).commandString)) server.executeCommand("fill " + x + " " + bad + " " + z + " " + x + " " + bad + " " + z + " aoa3:dimensional_fabric", true);
    if (player.inventory.hasIItemStack(<item:rickroll:disk>) && !player.hasGameStage("momlove")) player.addGameStage("momlove");
    if (player.hasGameStage("momlove")) player.addTag("momlove");
    if (player.removeTag("exit")) player.addGameStage("exit");
    if (player.removeTag("ferrous_wroughtnaut")) server.executeCommand("execute in aoa3:iromine run summon mowziesmobs:ferrous_wroughtnaut " + wroughtnaut_x + " " + wroughtnaut_y + " " + wroughtnaut_z, true);
    if (player.removeTag("iromine_passport")) player.removeGameStage("iromine_passport");
    if ("neverise:witherstorm" in dim) {
        player.addTag("if_you_die_in_witherstorm_you_should_respawn_in_witherstorm");
    } else {
        player.removeTag("if_you_die_in_witherstorm_you_should_respawn_in_witherstorm");
    }
    if ("nowhere" in dim) {
        player.addTag("if_you_die_in_nowhere_you_should_respawn_in_nowhere");
    } else {
        player.removeTag("if_you_die_in_nowhere_you_should_respawn_in_nowhere");
    }
    if ("bowels" in dim) {
        player.addTag("if_you_die_in_bowel_you_should_respawn_in_witherstorm");
    } else {
        player.removeTag("if_you_die_in_bowel_you_should_respawn_in_witherstorm");
    }
    if (player.removeTag("here_we_go_overworld")) {
        server.executeCommand("execute in minecraft:overworld run tp " + name + " 0 255 0", true);
        server.executeCommand(effect + name + " minecraft:slow_falling 60", true);
        player.addTag("wow_you_finally_go_to_the_overworld_and_now_you_need_to_kill_the_wither");
    }
    if (speeduper) server.executeCommand(effect + " @e minecraft:speed 114514 255", true);
    if (player.removeTag("storm_destroyer")) {
        player.addTag("omg_you_destroyed_the_wither_storm_and_now_you_need_to_go_to_the_overworld");
        player.sendMessage(MCTextComponent.createTranslationTextComponent("eventMessage.neverise.after_storm.1"));
        player.sendMessage(MCTextComponent.createTranslationTextComponent("eventMessage.neverise.after_storm.2"));
        player.sendMessage(MCTextComponent.createTranslationTextComponent("eventMessage.neverise.after_storm.3"));
    }
    if (player.inventory.hasIItemStack(<item:minecraft:nether_star>) && player.removeTag("wow_you_finally_go_to_the_overworld_and_now_you_need_to_kill_the_wither")) {
        player.addTag("the_wither_storm_age_ends_and_you_are_free");
        player.sendMessage(MCTextComponent.createTranslationTextComponent("eventMessage.neverise.nether_star.1"));
        player.sendMessage(MCTextComponent.createTranslationTextComponent("eventMessage.neverise.nether_star.2"));
        player.sendMessage(MCTextComponent.createTranslationTextComponent("eventMessage.neverise.nether_star.3"));
        player.sendMessage(MCTextComponent.createTranslationTextComponent("eventMessage.neverise.nether_star.4"));
        player.removeGameStage("before_wither");
        player.addGameStage("mcsaforge");
        player.addGameStage("aoa_age");
    }
    if (player.hasGameStage("aoa_age")) player.addTag("aoa_age");
    if (player.hasGameStage("mcsaforge")) player.addTag("mcsaforge");
    if (player.removeTag("now_let_us_go_to_nowhere")) player.addTag("wow_now_you_are_in_nowhere_and_you_need_to_go_for_witherstorm");
    if (player.removeTag("here_we_go_for_witherstorm") && "overworld" in dim) {
        server.executeCommand("execute in neverise:witherstorm run tp " + name + " 0 255 0", true);
        server.executeCommand(effect + name + " minecraft:slow_falling 60", true);
        server.executeCommand("fill 0 255 0 0 255 0 minecraft:air", true);
        player.addTag("now_let_us_kill_the_command_block_in_the_wither_storm");
    }
    if ("aoa3:alacrity_bow" in mainhand) {
        player.addTag("target_slow");
    } else {
        player.removeTag("target_slow");
    }
    if (player.hasGameStage("unobtainable")) player.removeGameStage("unobtainable");
    if ("aoa3" in helmet && "aoa3" in chestplate && "aoa3" in leggings && "aoa3" in boots) {
        if (u in helmet && u in chestplate && u in leggings && u in boots) {
            server.executeCommand(buff + " minecraft:haste 10 4", true);
            return;
        }
        if (s in helmet && s in chestplate && s in leggings && s in boots) {
            player.addTag(s);
            if (player.isInWater()) player.setHealth(health - 0.05);
            return;
        } else {
            player.removeTag(s);
        }
        if (m_health * 0.5 >= health && k in helmet && k in chestplate && k in leggings && k in boots) {
            server.executeCommand(buff + " minecraft:strength 10 1", true);
            return;
        }

        if (l in helmet && l in chestplate && l in leggings && l in boots) server.executeCommand(buff + " minecraft:night_vision 10", true);
        if (a in helmet && a in chestplate && a in leggings && a in boots) server.executeCommand(jump + "3", true);

        if (r in helmet && r in chestplate && r in leggings && r in boots) {
            player.removePotionEffect(<effect:minecraft:poison>);
            var total_damage = one + two + three + four;
            var total_durability = 605 + 880 + 825 + 715;
            if (1.00 * total_damage >= 0.66 * total_durability) server.executeCommand(buff + " minecraft:resistance 10 1", true);
            if (1.00 * total_damage >= 0.33 * total_durability) server.executeCommand(buff + " minecraft:resistance 10 0", true);
        }
    }
});
CTEventManager.register<MCPlayerRespawnEvent>(event => {
    var player = event.player;
    var world = player.world;
    var end = event.isEndConquered();
    if (world.remote || end) return;
    var server = world.asServerWorld().server;
    var pos = player.position;
    var dim = world.dimension;
    var uuid = player.uuid;
    var exp = player.experienceTotal;
    player.giveExperiencePoints(- exp);

    if (player.removeTag("if_you_die_in_bowel_you_should_respawn_in_witherstorm")) {
        server.executeCommand("execute in neverise:witherstorm run tp " + uuid + " 0 205 0", true);
        server.executeCommand(effect + uuid + " minecraft:slow_falling 60", true);
    }
    if (player.removeTag("if_you_die_in_witherstorm_you_should_respawn_in_witherstorm")) {
        server.executeCommand("execute in neverise:witherstorm run tp " + uuid + " 0 205 0", true);
        server.executeCommand(effect + uuid + " minecraft:slow_falling 60", true);
    }
    if (player.removeTag("if_you_die_in_nowhere_you_should_respawn_in_nowhere")) server.executeCommand("execute in aoa3:nowhere run tp " + uuid + " 0 205 0", true);
});
CTEventManager.register<MCPlayerLoggedInEvent>(event => {
    var player = event.player;
    if (player.world.remote) return;
    if (player.hasGameStage("logged")) return;
    var server = player.world.asServerWorld().server;
    player.addGameStage("logged");
    player.addGameStage("before_wither");
    player.addGameStage("iromine_passport");
    player.addTag("now_let_us_go_to_nowhere");
    server.executeCommand("tp " + player.uuid + " 0 255 0", true);
    server.executeCommand("setblock 0 255 0 aoa3:nowhere_portal", true);
    player.give(<item:ftbquests:book>);
});
CTEventManager.register<MCLivingSpawnEvent>((event) => {
    var entity = event.entityLiving;
    var world = entity.world;
    if (world.remote) return;
    var type = entity.type.commandString;
    var server = world.asServerWorld().server;
    var classification = entity.type.classification.commandString;
    var random = world.random;
    var dim = world.dimension;
    var pos = entity.position;
    var random_start = random.nextInt(0, 200000);
    var random_chest = random.nextInt(0, 200000);
    var random_head = random.nextInt(0, 200000);
    var random_all = random.nextInt(0, 100);
    var gear_chest = random.nextInt(0, 45);
    var gear_head = random.nextInt(0, 45);
    var random_overworld_mob = random.nextInt(0, 53);
    var random_nether_mob = random.nextInt(0, 5);
    var random_ocean_mob = random.nextInt(0, 6);
    var x = pos.x;
    var y = pos.y;
    var z = pos.z;

    if ("overworld" in dim || "neverise:witherstorm" in dim || "nether" in dim) {
        if (entity.removeTag("armored")) {
            entity.addTag("armored");
            return;
        }
        if (("monster" in classification)) {
            if (random_start >= 100000) {
                if ("minecraft:guardian" in type) {
                    entity.remove();
                    server.executeCommand("exeucte in " + dim + " run summon aoa3:" + aoa_ocean_mobs[random_ocean_mob] + " " + x + " " + y + " " + z, true);
                }
                if (random_head > random_chest) {
                    entity.setItemStackToSlot(MCEquipmentSlotType.HEAD, helmet[gear_head]);
                    if (random_all > 64) entity.setItemStackToSlot(MCEquipmentSlotType.CHEST, chestplate[gear_chest]);
                    entity.addTag("armored");
                } else {
                    entity.setItemStackToSlot(MCEquipmentSlotType.CHEST, chestplate[gear_chest]);
                    if (random_all > 64) entity.setItemStackToSlot(MCEquipmentSlotType.HEAD, helmet[gear_head]);
                    entity.addTag("armored");
                }
            } else {
                if (("zombie" in type || "skeleton" in type || "creeper" in type || "spider" in type || "enderman" in type || "witch" in type) && "overworld" in dim) {
                    entity.remove();
                    server.executeCommand("execute in " + dim + " run summon aoa3:" + aoa_overworld_mobs[random_overworld_mob] + " " + x + " " + y + " " + z, true);
                }
                if ("nether" in dim && ("piglin" in type || "enderman" in type || "hoglin" in type)) {
                    entity.remove();
                    server.executeCommand("execute in " + dim + " run summon aoa3:" + aoa_nether_mobs[random_nether_mob] + " " + x + " " + y + " " + z, true);
                }
            }
        }
    }
});
CTEventManager.register<MCLivingHurtEvent>(event => {
    var entity = event.entityLiving;
    var world = entity.world;
    if (world.remote) return;
    var server = world.asServerWorld().server;
    var head = entity.getItemStackFromSlot(MCEquipmentSlotType.HEAD);
    var chest = entity.getItemStackFromSlot(MCEquipmentSlotType.CHEST);
    var legs = entity.getItemStackFromSlot(MCEquipmentSlotType.LEGS);
    var feet = entity.getItemStackFromSlot(MCEquipmentSlotType.FEET);
    var mainhand = entity.getHeldItemMainhand().asIItemStack().commandString;
    var offhand = entity.getHeldItemOffhand().asIItemStack().commandString;
    var helmet = head.commandString;
    var chestplate = chest.commandString;
    var leggings = legs.commandString;
    var boots = feet.commandString;
    var dmgsource = event.source;
    var source = dmgsource.immediateSource;
    var attacker = dmgsource.trueSource;
    var attacked = entity.type.commandString; 
    var uuid = entity.uuid;
    var dim = world.dimension;
    var random_sickness = world.random.nextDouble(0.00, 1.00);
    var pos = entity.position;
    var damage_cancel = world.random.nextDouble(0.00, 1.00);
    var find_dragon as List<MCEntity> = world.getEntitiesInArea(pos.add(50, -50, 50), pos.add(-50, 50, -50));
    var dmg_amt = event.amount;
    var dmgtype = dmgsource.getDamageType();
    var health = entity.getHealth();
    var m_health = entity.getMaxHealth();
    
    if ("aoa3:destructor" in attacked) event.setAmount(0.0);
    if ("player" in attacked) {
        if ("dragonsteel" in helmet && "dragonsteel" in chestplate && "dragonsteel" in leggings && "dragonsteel" in boots && 0.40 >= damage_cancel) {
            for finder in 0 .. find_dragon.length {
                var type = find_dragon[finder].type.commandString;
                if ("fire_dragon" in type || "ice_dragon" in type || "lightning_dragon" in type) {
                    if (find_dragon[finder].data.getAt("Owner") == null) {} else {
                        event.setAmount(0.0);
                        break;
                    }
                }
            }
        }
        if (entity.removeTag("storm_time")) {
            if (random_sickness >= 0.90) server.executeCommand(effect + uuid + " witherstormmod:wither_sickness 600 1", true);
            entity.addTag("storm_time");
        }
        if (entity.removeTag("mcsaforge")) {
            
            if ("mcsaforge" in helmet) entity.setItemStackToSlot(MCEquipmentSlotType.HEAD, <item:minecraft:air>);
            if ("mcsaforge" in chestplate) entity.setItemStackToSlot(MCEquipmentSlotType.CHEST, <item:minecraft:air>);
            if ("mcsaforge" in leggings) entity.setItemStackToSlot(MCEquipmentSlotType.LEGS, <item:minecraft:air>);
            if ("mcsaforge" in boots) entity.setItemStackToSlot(MCEquipmentSlotType.FEET, <item:minecraft:air>);
            if ("dungeons_gear" in mainhand) entity.setItemStackToSlot(MCEquipmentSlotType.MAINHAND, <item:minecraft:air>);
            if ("dungeons_gear" in offhand) entity.setItemStackToSlot(MCEquipmentSlotType.OFFHAND, <item:minecraft:air>);
            if ("gunswithoutroses" in mainhand) entity.setItemStackToSlot(MCEquipmentSlotType.MAINHAND, <item:minecraft:air>);
            if ("gunswithoutroses" in offhand) entity.setItemStackToSlot(MCEquipmentSlotType.OFFHAND, <item:minecraft:air>);
            if ("witherstormmod" in mainhand || "witherstormmod" in offhand) {
                if ("command_block" in mainhand) entity.setItemStackToSlot(MCEquipmentSlotType.MAINHAND, <item:minecraft:air>);
                if ("command_block" in offhand) entity.setItemStackToSlot(MCEquipmentSlotType.OFFHAND, <item:minecraft:air>);
            }
            entity.addTag("mcsaforge");
        }

        if (dmgsource == <damagesource:fall>) {
            if (l in helmet && l in chestplate && l in leggings && l in boots) event.setAmount(0.0);
            if (s in helmet && s in chestplate && s in leggings && s in boots) event.setAmount(0.0);
        }

        if (dmgsource == <damagesource:inWall>) {
            if (s in helmet && s in chestplate && s in leggings && s in boots) event.setAmount(0.0);
        }

        if (dmgtype == "magic" && entity.isPotionActive(<effect:minecraft:poison>)) {
            if ((r in helmet && r in chestplate && r in leggings) || (r in helmet && r in chestplate && r in boots) || (r in chestplate && r in leggings && r in boots)) {
                event.setAmount(dmg_amt * 0.2);
                return;
            }
            if ((r in helmet && r in chestplate) || (r in helmet && r in leggings) || (r in helmet && r in boots) || (r in chestplate && r in boots) || (r in leggings && r in boots)) {
                event.setAmount(dmg_amt * 0.4);
                return;
            }
            if (r in helmet || r in chestplate || r in leggings || r in boots) {
                event.setAmount(dmg_amt * 0.6);
                return;
            }
        }
    }

    if (a in attacked && m_health * 0.4 > health && "xxeus" in attacked) server.executeCommand(effect + uuid + " minecraft:strength 114514 1", true);//远古战神强化
    for i in 0 .. aoa_bosses.length {
        if (aoa_bosses[i] in attacked && "aoa3" in attacked) {
            if (m_health * 0.2 >= health) {
                server.executeCommand(effect + uuid + " minecraft:speed 114514 1", true);
                break; 
            }
            server.executeCommand(effect + uuid + " minecraft:fire_resistance 114514", true);
            break;
        }
    }

    if (attacker == null) return;
    if (attacker.removeTag("target_slow")) server.executeCommand(effect + uuid + " minecraft:slowness 3 1", true);
    
});
CTEventManager.register<MCLivingDeathEvent>((event) => {
    var entity = event.entityLiving;
    var world = entity.world;
    if (world.remote) return;
    var source = event.getSource().trueSource;
    var type = entity.type.commandString;
    var server = world.asServerWorld().server;
    var pos = entity.position;
    var dim = world.dimension;
    var data = entity.data.asString();
    var head = entity.getItemStackFromSlot(MCEquipmentSlotType.HEAD);
    var chest = entity.getItemStackFromSlot(MCEquipmentSlotType.CHEST);
    var legs = entity.getItemStackFromSlot(MCEquipmentSlotType.LEGS);
    var feet = entity.getItemStackFromSlot(MCEquipmentSlotType.FEET);
    var helmet = head.damage;
    var chestplate  = chest.damage;
    var leggings  = legs.damage;
    var boots  = feet.damage;
    var random = world.random.nextInt(100, 150);

    if ("player" in type) {
        if ("enigmaticlegacy:cursed_ring" in data) {
            entity.setItemStackToSlot(MCEquipmentSlotType.HEAD, head.withDamage(helmet + random));
            entity.setItemStackToSlot(MCEquipmentSlotType.CHEST, chest.withDamage(chestplate + random));
            entity.setItemStackToSlot(MCEquipmentSlotType.LEGS, legs.withDamage(leggings + random));
            entity.setItemStackToSlot(MCEquipmentSlotType.FEET, feet.withDamage(boots + random));
            if (helmet + random > head.maxDamage) entity.setItemStackToSlot(MCEquipmentSlotType.HEAD, <item:minecraft:air>);
            if (chestplate + random > chest.maxDamage) entity.setItemStackToSlot(MCEquipmentSlotType.CHEST, <item:minecraft:air>);
            if (leggings + random > legs.maxDamage) entity.setItemStackToSlot(MCEquipmentSlotType.LEGS, <item:minecraft:air>);
            if (boots + random > feet.maxDamage) entity.setItemStackToSlot(MCEquipmentSlotType.FEET, <item:minecraft:air>);
        }
        if (entity.removeTag("momlove")) {
            server.executeCommand("gamerule keepInventory true", true);
            entity.addTag("exit");
        }
    }
    if (source == null) return;
    if ("witherstormmod:command_block" in type) {
        source.addTag("storm_destroyer");
        source.removeTag("now_let_us_kill_the_command_block_in_the_wither_storm");
        server.executeCommand("tag @e remove storm_time", true);
    }
    if ("ferrous_wroughtnaut" in type && "player" in source.type.commandString) source.addTag("iromine_passport");
});
CTEventManager.register<MCLeftClickBlockEvent>((event) => {
    var player = event.player;
    var world = player.world;
    if (world.remote) return;
    
    var server = player.world.asServerWorld().server;
    var blockPos = event.getBlockPos();
    var pos_x = blockPos.x;
    var pos_y = blockPos.y;
    var pos_z = blockPos.z;
    var y = pos_y + 1;
    var pos = "" + pos_x + " " + pos_y + " " + pos_z;
    var pos2 = "" + pos_x + " " + y + " " + pos_z;
    var exe = "execute in " + world.dimension + " if block " + pos;
    var helmet = player.getItemStackFromSlot(MCEquipmentSlotType.HEAD).commandString;
    var chestplate = player.getItemStackFromSlot(MCEquipmentSlotType.CHEST).commandString;
    var leggings = player.getItemStackFromSlot(MCEquipmentSlotType.LEGS).commandString;
    var boots = player.getItemStackFromSlot(MCEquipmentSlotType.FEET).commandString;
    var mainhand = player.getHeldItemMainhand().asIItemStack().commandString;
    var offhand = player.getHeldItemOffhand().asIItemStack().commandString;
    var dim = world.dimension;
    
    if (player.isSneaking() && s in helmet && s in chestplate && s in leggings && s in boots) {
        server.executeCommand(exe + " aoa3:ancient_rock run give " + player.uuid + " aoa3:ancient_rock{Pos_x:" + pos_x + ", Pos_y:" + pos_y + ", Pos_z:" + pos_z + "}", true);
        server.executeCommand(exe + " aoa3:ancient_rock run fill " + pos + " " + pos + " air", true);
    }
});
CTEventManager.register<GameStageAdded>((event) => {
    var player = event.player;
    if (player.world.remote) return;
    var stage = event.stage;
    var server = event.player.world.asServerWorld().server;
    
    if (stage == "enig") {
        player.sendMessage(" ");
        player.sendMessage(MCTextComponent.createTranslationTextComponent("eventMessage.neverise.login"));
        return;
    }
    if (stage == "now_exit") {
        server.executeCommand("gamerule keepInventory false", true);
        player.removeGameStage("now_exit");
        player.removeGameStage("exit");
        return;
    }
});
CTEventManager.register<MCBlockBreakEvent>((event) => {
    var player = event.player;
    var world = player.world;
    if (world.remote) return;
    var state = event.state.commandString;
    var server = world.asServerWorld().server;
    var dim = world.dimension;
    var pos = player.position;
    var random_mob = world.random.nextInt(0, 4);
    if ("ba_bt:bt_land_spawner" in state) server.executeCommand("execute in " + dim + " run summon " + mobs[random_mob] + " " + pos.x + " " + pos.y + " " + pos.z, true);
});
CTEventManager.register<MCBlockPlaceEvent>((event) => {
    var entity = event.entity;
    var world = entity.world;
    if (world.remote) return; 
    var type = entity.type.commandString;
    var placed = event.placedBlock.commandString;
    var block = event.placedAgainst.commandString;
    var dim = world.dimension;
    var server = world.asServerWorld().server;

    if ("player" in type) {
        if ("wither_skeleton_skull" in placed && "command_block" in block) {
            server.executeCommand("tag @e add storm_time", true);
            server.executeCommand("tell @a " + storm_time.formattedText, true);
            server.executeCommand("time set night", true);
        }
        if ("puzzle_master" in placed) {
            if ("celeve" in dim) return;
            event.cancel();
        }
    }
});
CTEventManager.register<MCEntityJoinWorldEvent>((event) => {
    var world = event.world;
    if (world.remote) return;
    var entity = event.entity;
    var type = entity.type.commandString;
    var serverworld = world.asServerWorld();
    var server = serverworld.server;
    var dim = world.dimension;
    var uuid = entity.uuid;
    var pos = entity.position;
    var x = pos.x;
    var y = pos.y;
    var z = pos.z;
    var between = 200 - pos.y - 1;
    var random_angel = world.random.nextDouble(0.00, 1.00);

    if ("formidibomb" in type) {
        if ("neverise:witherstorm" in dim) {
            entity.setPosition(pos.x, 200.00, pos.z);
            world.setBlockState(pos.up(between), <blockstate:minecraft:stone>);
        } else {
            entity.remove();
        }
    } 
    if ("dimpaintings" in type && !("overworld" in dim)) event.cancel();
    if ("neverise:witherstorm" in dim && "aoa3" in type) event.cancel();
    if ("eyesinthedarkness:eyes" in type && !("greckon" in dim)) event.cancel();
    if ("overworld" in dim && ("upgrade_aquatic" in type)) event.cancel();
    if ("salmon" in type && "aoa3" in dim) event.cancel();
    if ("sushigocrafting" in type && !("overworld" in dim)) event.cancel();
    if ("weeping_angel" in type) {
        if ("neverise:witherstorm" in dim || "bowels" in dim || "nowhere" in dim) {
            event.cancel();
        } else {
            if (random_angel > 0.40) event.cancel();
        }
    }
    if (serverworld.isRaid(pos)) {
        server.executeCommand(effect + uuid + " minecraft:strength 114514 1", true);
        server.executeCommand(effect + uuid + " minecraft:regeneration 114514 1", true);
    }
    if ("ba_bt:land_golem" in type) {
        for silver in 0 .. 4 {
            server.executeCommand("execute in " + dim + " run summon ba_bt:silver_skeleton " + x + " " + y + " " + z, true);
        }
    }
    if ("witherstormmod:wither_storm" in type) {
        entity.updateData({Phase:5});
        entity.setPosition(x, 256.00, z);
    }
});
CTEventManager.register<MCEntityTravelToDimensionEvent>(event => {
    var entity = event.entity;
    var world = entity.world;
    if (world.remote) return;
    var type = entity.type.commandString;
    var here = world.dimension;
    var there = event.dimension.commandString;
    var server = world.asServerWorld().server;
    var random = world.random.nextInt(0, 20);
    var pos = entity.position;
    var x = pos.x;
    var y = pos.y;
    var air = y + 1;
    var z = pos.z;

    if ("player" in type) {
        if ("overworld" in there && "nowhere" in here) {
            if (entity.removeTag("wow_now_you_are_in_nowhere_and_you_need_to_go_for_witherstorm")) entity.addTag("here_we_go_for_witherstorm");
            if (entity.removeTag("omg_you_destroyed_the_wither_storm_and_now_you_need_to_go_to_the_overworld")) entity.addTag("here_we_go_overworld");
            return;
        }
        if ("neverise:witherstorm" in here && "nowhere" in there) {
            entity.addTag("here_we_go_overworld");
            event.cancel();
            return;
        }
        if ("iromine" in there) {
            if (entity.removeTag("iromined")) {
                entity.addTag("iromined");
                return;
            }
            entity.addTag("iromined");
            entity.addTag("ferrous_wroughtnaut");
            return;
        }
        if (entity.removeTag("aoa_age")) {
            if (entity.removeTag("bonfirer")) return;
            if (entity.removeTag("dim_randomized")) return;
            if (entity.removeTag("recaller")) return;
            if ("nether" in there || "aoa3" in there) {
                event.cancel();
                server.executeCommand("execute in " + dimensions[random]  + " run tp " + entity.name + " " + x + " " + y + " " + z, true);
                server.executeCommand("execute in " + dimensions[random]  + " run fill " + x + " " + y + " " + z + " " + x + " " + air + " " + z +" minecraft:air", true);
                entity.addTag("dim_randomized");
            }
        }
    }
});