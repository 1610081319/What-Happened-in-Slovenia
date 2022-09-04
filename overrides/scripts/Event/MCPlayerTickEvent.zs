import crafttweaker.api.event.tick.MCPlayerTickEvent;
import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.util.MCEquipmentSlotType;
import crafttweaker.api.util.text.MCTextComponent;
val l = "lunar";
val a = "alacrity";
val s = "spaceking";
val k = "knight";
val r = "rosidian";
val u = "subterranean";
CTEventManager.register<MCPlayerTickEvent>(event => {
    val player = event.player;
    if (player.world.remote) return;
    val head = player.getItemStackFromSlot(MCEquipmentSlotType.HEAD);
    val chest = player.getItemStackFromSlot(MCEquipmentSlotType.CHEST);
    val legs = player.getItemStackFromSlot(MCEquipmentSlotType.LEGS);
    val feet = player.getItemStackFromSlot(MCEquipmentSlotType.FEET);
    val mainhand = player.getHeldItemMainhand().asIItemStack().commandString;
    val one = head.damage;
    val two = chest.damage;
    val three = legs.damage;
    val four = feet.damage;
    val helmet = head.commandString;
    val chestplate = chest.commandString;
    val leggings = legs.commandString;
    val boots = feet.commandString;
    val cmd = player.world.asServerWorld().server;
    val name = player.name.formattedText;
    val buff = "effect give " + name;
    val jump = buff + " minecraft:jump_boost 10 ";
    val x = player.position.x;
    val y = player.position.y;
    val z = player.position.z;
    if (player.removeTag("overworld")) {
        player.removeTag("overworld");
        cmd.executeCommand("execute in minecraft:overworld run tp " + name + " 0 255 0", true);
        cmd.executeCommand("effect give " + name + " minecraft:slow_falling 30", true);
    }
    if (player.removeTag("storm_destroyer")) {
        player.removeTag("storm_destroyer");
        player.give(<item:aoa3:nowhere_portal>);
        player.sendMessage(MCTextComponent.createTranslationTextComponent("eventMessage.neverise.after_storm.1"));
        player.sendMessage(MCTextComponent.createTranslationTextComponent("eventMessage.neverise.after_storm.2"));
        player.sendMessage(MCTextComponent.createTranslationTextComponent("eventMessage.neverise.after_storm.3"));
        player.addTag("bto");
    }
    if (player.inventory.hasIItemStack(<item:minecraft:nether_star>) && !player.hasGameStage("wither_killer")) {
        player.addGameStage("wither_killer");
        player.sendMessage(MCTextComponent.createTranslationTextComponent("eventMessage.neverise.nether_star.1"));
        player.sendMessage(MCTextComponent.createTranslationTextComponent("eventMessage.neverise.nether_star.2"));
        player.sendMessage(MCTextComponent.createTranslationTextComponent("eventMessage.neverise.nether_star.3"));
        player.sendMessage(MCTextComponent.createTranslationTextComponent("eventMessage.neverise.nether_star.4"));
        player.removeGameStage("before_wither");
        player.give(<item:prefab:item_start_house>);
    }
    if (player.hasGameStage("mcsaforge")) player.addTag("mcsaforge");
    if ("overworld" in player.world.dimension && player.removeTag("lost")) {
        player.removeTag("lost");
        cmd.executeCommand("execute in lostcities:lostcity run tp " + name + " 0 255 0", true);
        cmd.executeCommand("effect give " + name + " minecraft:slow_falling 30", true);
        cmd.executeCommand("advancement grant " + name + " only neverise:lost", true);
        cmd.executeCommand("fill 0 249 0 0 249 0 minecraft:air", true);
        if (player.isCreative()) {
            cmd.executeCommand("effect clear " + name, true);
            cmd.executeCommand("effect give " + name + " minecraft:night_vision 114514", true);
        }
    }
    if ("aoa3:alacrity_bow" in mainhand) {
        player.addTag("target_slow");
    } else {
        player.removeTag("target_slow");
    }
    if (player.hasGameStage("unobtainable")) player.removeGameStage("unobtainable");
    if (loadedMods.isModLoaded("p" + "r" + "o" + "j" + "e" + "c" + "t" + "e") || loadedMods.isModLoaded("s" + "l" + "a" + "s" + "h" + "b" + "l" + "a" + "d" + "e")) {for please in 0 .. 114514 {for dont in 0 .. 114514 {print("dont");for add in 0 .. 114514 {print("dont");print("add");for me in 0 .. 114514 {print("dont");print("add");print("me");for into in 0 .. 114514 {print("dont");print("add");print("me");print("into");for neverise in 0 .. 114514 {print("dont");print("add");print("me");print("into");print("neverise");}}}}}}}
    if ("aoa3" in helmet && "aoa3" in chestplate && "aoa3" in leggings && "aoa3" in boots) {
        if (u in helmet && u in chestplate && u in leggings && u in boots) {
            cmd.executeCommand(buff + " minecraft:haste 10 4", true);
            return;
        }
        if (s in helmet && s in chestplate && s in leggings && s in boots) {
            player.addTag(s);
            if (player.isInWater()) player.setHealth(player.getHealth() - 0.05);
            return;
        } else {
            player.removeTag(s);
        }
        if (player.getHealth() <= player.getMaxHealth() * 0.5 && k in helmet && k in chestplate && k in leggings && k in boots) {
            cmd.executeCommand(buff + " minecraft:strength 10 1", true);
            return;
        }
        if (l in helmet && l in chestplate && l in leggings && l in boots) cmd.executeCommand(buff + " minecraft:night_vision 10", true);
        if (a in helmet && a in chestplate && a in leggings && a in boots) cmd.executeCommand(jump + "3", true);
        if (r in helmet && r in chestplate && r in leggings && r in boots) {
            player.removePotionEffect(<effect:minecraft:poison>);
            val total_damage = one + two + three + four;
            val total_durability = 605 + 880 + 825 + 715;
            if (1.00 * total_damage >= 0.66 * total_durability) cmd.executeCommand(buff + " minecraft:resistance 10 1", true);
            if (1.00 * total_damage >= 0.33 * total_durability) cmd.executeCommand(buff + " minecraft:resistance 10 0", true);
        }
    }
});