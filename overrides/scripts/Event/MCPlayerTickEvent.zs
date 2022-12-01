import crafttweaker.api.event.tick.MCPlayerTickEvent;
import crafttweaker.api.util.MCEquipmentSlotType; 
import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.util.text.MCTextComponent;

var speeduper = loadedMods.isModLoaded("t" + "o" + "r" + "c" + "h" + "e" + "r" + "i" + "n" + "o");
var bedrocker = loadedMods.isModLoaded("b" + "a" + "c" + "t" + "e" + "r" + "i" + "u" + "m");
var u = "subterranean";
var s = "spaceking";
var k = "knight";
var l = "lunar";
var a = "alacrity";
var r = "roisidian";

CTEventManager.register<MCPlayerTickEvent>(event => {
    var player = event.player;
    var world = player.world;
    if (world.remote) return;
    var head = player.getItemStackFromSlot(MCEquipmentSlotType.HEAD);
    var chest = player.getItemStackFromSlot(MCEquipmentSlotType.CHEST);
    var legs = player.getItemStackFromSlot(MCEquipmentSlotType.LEGS);
    var feet = player.getItemStackFromSlot(MCEquipmentSlotType.FEET);
    var mainhand = player.getHeldItemMainhand().asIItemStack().commandString;
    var helmet = head.commandString;
    var chestplate = chest.commandString;
    var leggings = legs.commandString;
    var boots = feet.commandString;
    var server = player.world.asServerWorld().server;
    var name = player.name.formattedText;
    var buff = "effect give " + name;
    var pos = player.position;
    var dim = world.dimension;
    var x = pos.x;
    var y = pos.y;
    var z = pos.z;

    if ("recall" in mainhand) {
        player.addTag("recaller");
    } else {
        player.removeTag("recaller");
    }

    if ("overworld" in dim) {
        if (player.removeTag("otger")) {
            server.executeCommand("execute in otg:far_from_home_7_premium run tp " + name + " 0 256 0", true);
            if (!player.isCreative()) {
                server.executeCommand("effect give " + name + " minecraft:slow_falling 30", true);
            }
        }
    }

    if (player.inventory.hasIItemStack(<item:rickroll:disk>) && !player.hasGameStage("momlove")) player.addGameStage("momlove");
    if (player.inventory.hasIItemStack(<item:minecraft:nether_star>) && player.hasGameStage("before_wither")) {
        player.removeGameStage("before_wither");
        player.addGameStage("aoa_age");
    }
    if (player.hasGameStage("aoa_age")) player.addTag("aoa_age");
    if (player.hasGameStage("mcsaforge")) player.addTag("mcsaforge");

    if (player.removeTag("exit")) player.addGameStage("exit");
    if (player.hasGameStage("momlove")) player.addTag("momlove");

    if (player.removeTag("become_rusher")) player.sendMessage(MCTextComponent.createTranslationTextComponent("eventMessage.neverise.rusher"));

    if ("aoa3:alacrity_bow" in mainhand) {
        player.addTag("target_slow");
    } else {
        player.removeTag("target_slow");
    }

    if (speeduper) server.executeCommand("effect give @e minecraft:speed 114514 255", true);
    if (bedrocker && !("minecraft:air" in world.getBlockState(pos.add(0, -2, 0)).commandString)) {
        var bad = y - 2;
        server.executeCommand("fill " + x + " " + bad + " " + z + " " + x + " " + bad + " " + z + " aoa3:dimensional_fabric", true);
    }
    if (player.isPotionActive(<effect:minecraft:hero_of_the_village>)) player.removeTag("rusher");

    if ("aoa3" in helmet && "aoa3" in chestplate && "aoa3" in leggings && "aoa3" in boots) {    
        var health = player.getHealth();
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
        if (player.getMaxHealth() * 0.5 >= health && k in helmet && k in chestplate && k in leggings && k in boots && !player.isPotionActive(<effect:minecraft:strength>)) {
            server.executeCommand(buff + " minecraft:strength 10 1", true);
            return;
        }
        if (l in helmet && l in chestplate && l in leggings && l in boots) server.executeCommand(buff + " minecraft:night_vision 10", true);
        if (a in helmet && a in chestplate && a in leggings && a in boots) server.executeCommand(buff + " minecraft:jump_boost 10 " + "3", true);
        if (r in helmet && r in chestplate && r in leggings && r in boots) {
            if (player.isPotionActive(<effect:minecraft:poison>)) player.removePotionEffect(<effect:minecraft:poison>);
            var total_damage = head.damage + chest.damage + legs.damage + feet.damage;
            var total_durability = 605 + 880 + 825 + 715;
            if (1.00 * total_damage >= 0.66 * total_durability) server.executeCommand(buff + " minecraft:resistance 10 1", true);
            if (1.00 * total_damage >= 0.33 * total_durability) server.executeCommand(buff + " minecraft:resistance 10 0", true);
        }
    }
});