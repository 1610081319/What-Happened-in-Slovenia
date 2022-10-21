//Author: @Kasualix
import crafttweaker.api.event.tick.MCPlayerTickEvent;
import crafttweaker.api.util.text.MCTextComponent;
import crafttweaker.api.util.MCEquipmentSlotType;
import crafttweaker.api.events.CTEventManager;

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
    val server = player.world.asServerWorld().server;
    val name = player.uuid;
    val buff = "effect give " + name;
    val jump = buff + " minecraft:jump_boost 10 ";
    val dim = player.world.dimension;
    val x = player.position.x;
    val y = player.position.y;
    val z = player.position.z;
    val wroughtnaut_x = x + 10;
    val wroughtnaut_y = y + 10;
    val wroughtnaut_z = z + 10;

    if ("iromine" in dim && player.removeTag("ferrous_wroughtnaut")) server.executeCommand("execute in aoa3:iromine run summon mowziesmobs:ferrous_wroughtnaut " + wroughtnaut_x + " " + wroughtnaut_y + " " + wroughtnaut_z, true);
        
    if ("dungeons_arise:witherstorm" in dim) {
        player.addTag("if_you_die_in_witherstorm_you_should_respawn_in_witherstorm");
    } else {
        player.removeTag("if_you_die_in_witherstorm_you_should_respawn_in_witherstorm");
    }
    if ("nowhere" in dim) {
        player.addTag("if_you_die_in_nowhere_you_should_respawn_in_nowhere");
    } else {
        player.removeTag("if_you_die_in_nowhere_you_should_respawn_in_nowhere");
    }
    if (player.removeTag("here_we_go_overworld")) {
        player.removeTag("here_we_go_overworld");
        server.executeCommand("execute in minecraft:overworld run tp " + name + " 0 255 0", true);
        server.executeCommand("effect give " + name + " minecraft:slow_falling 60", true);
        player.addTag("wow_you_finally_go_to_the_overworld_and_now_you_need_to_kill_the_wither");
    }
    if (player.removeTag("storm_destroyer")) {
        player.removeTag("storm_destroyer");
        player.addTag("omg_you_destroyed_the_wither_storm_and_now_you_need_to_go_to_the_overworld");
        player.sendMessage(MCTextComponent.createTranslationTextComponent("eventMessage.neverise.after_storm.1"));
        player.sendMessage(MCTextComponent.createTranslationTextComponent("eventMessage.neverise.after_storm.2"));
        player.sendMessage(MCTextComponent.createTranslationTextComponent("eventMessage.neverise.after_storm.3"));
    }
    if (player.inventory.hasIItemStack(<item:minecraft:nether_star>) && player.removeTag("wow_you_finally_go_to_the_overworld_and_now_you_need_to_kill_the_wither")) {
        player.removeTag("wow_you_finally_go_to_the_overworld_and_now_you_need_to_kill_the_wither");
        player.addTag("the_wither_storm_age_ends_and_you_are_free");
        player.sendMessage(MCTextComponent.createTranslationTextComponent("eventMessage.neverise.nether_star.1"));
        player.sendMessage(MCTextComponent.createTranslationTextComponent("eventMessage.neverise.nether_star.2"));
        player.sendMessage(MCTextComponent.createTranslationTextComponent("eventMessage.neverise.nether_star.3"));
        player.sendMessage(MCTextComponent.createTranslationTextComponent("eventMessage.neverise.nether_star.4"));
        player.removeGameStage("before_wither");
        player.addGameStage("mcsaforge");
    }
    if (player.hasGameStage("mcsaforge")) player.addTag("mcsaforge");//gamestage真是太屑了，tag才是神
    if (player.removeTag("now_let_us_go_to_nowhere")) {
        player.removeTag("now_let_us_go_to_nowhere");
        player.addTag("wow_now_you_are_in_nowhere_and_you_need_to_go_to_lost_cities");
    }
    if (player.removeTag("here_we_go_lost_cities") && "overworld" in dim) {
        player.removeTag("here_we_go_lost_cities");
        server.executeCommand("execute in dungeons_arise:witherstorm run tp " + name + " 0 255 0", true);
        server.executeCommand("effect give " + name + " minecraft:slow_falling 60", true);
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
        val health = player.getHealth();
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
        val m_health = player.getMaxHealth();
        if (health <= m_health * 0.5 && k in helmet && k in chestplate && k in leggings && k in boots) {
            server.executeCommand(buff + " minecraft:strength 10 1", true);
            return;
        }

        if (l in helmet && l in chestplate && l in leggings && l in boots) server.executeCommand(buff + " minecraft:night_vision 10", true);
        if (a in helmet && a in chestplate && a in leggings && a in boots) server.executeCommand(jump + "3", true);

        if (r in helmet && r in chestplate && r in leggings && r in boots) {
            player.removePotionEffect(<effect:minecraft:poison>);
            val total_damage = one + two + three + four;
            val total_durability = 605 + 880 + 825 + 715;
            if (1.00 * total_damage >= 0.66 * total_durability) server.executeCommand(buff + " minecraft:resistance 10 1", true);
            if (1.00 * total_damage >= 0.33 * total_durability) server.executeCommand(buff + " minecraft:resistance 10 0", true);
        }
    }
});