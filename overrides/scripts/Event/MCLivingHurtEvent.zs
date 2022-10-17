//Author: @Kasualix
import crafttweaker.api.event.entity.living.MCLivingHurtEvent;
import crafttweaker.api.util.MCEquipmentSlotType;
import crafttweaker.api.events.CTEventManager;

val aoa_bosses as string[] = [
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

val effect = "effect give ";
val s = "spaceking";
val l = "lunar";
val a = "aoa3";
val r = "rosidian";

CTEventManager.register<MCLivingHurtEvent>(event => {
    val entity = event.entityLiving;
    val world = entity.world;
    if (world.remote) return;
    val server = entity.world.asServerWorld().server;
    val head = entity.getItemStackFromSlot(MCEquipmentSlotType.HEAD);
    val chest = entity.getItemStackFromSlot(MCEquipmentSlotType.CHEST);
    val legs = entity.getItemStackFromSlot(MCEquipmentSlotType.LEGS);
    val feet = entity.getItemStackFromSlot(MCEquipmentSlotType.FEET);
    val mainhand = entity.getHeldItemMainhand().asIItemStack().commandString;
    val offhand = entity.getHeldItemOffhand().asIItemStack().commandString;
    val helmet = head.commandString;
    val chestplate = chest.commandString;
    val leggings = legs.commandString;
    val boots = feet.commandString;
    val dmgsource = event.source;
    val source = dmgsource.immediateSource;
    val attacker = dmgsource.trueSource;
    val attacked = entity.type.commandString; 
    val uuid = entity.uuid;
    val dim = world.dimension;

    if (a in attacked && "destructor" in attacked) event.cancel();//灭世者不该受到任何伤害！
    if ("player" in attacked) {
        server.executeCommand("aoa player " + uuid + " resources aoa3:rage set 100", true);//满怒火
        if (entity.removeTag("mcsaforge")) {
            //凋灵之后，故事模式、地下城、Guns Without Roses 的装备作废
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


        if (a in helmet && a in chestplate && a in leggings && a in boots) {

            if (dmgsource == <damagesource:fall>) {
                //月球套和空间之主套免疫摔落
                if (l in helmet && l in chestplate && l in leggings && l in boots) event.cancel();
                if (s in helmet && s in chestplate && s in leggings && s in boots) event.cancel();
            }

            if (dmgsource == <damagesource:inWall>) {
                //空间之主套免疫窒息
                if (s in helmet && s in chestplate && s in leggings && s in boots) event.cancel();
            }

        }

        val dmgtype = dmgsource.getDamageType();

        if (dmgtype == "magic" && entity.isPotionActive(<effect:minecraft:poison>)) {
            //伊恩套毒伤衰减
            if ((r in helmet && r in chestplate && r in leggings) || (r in helmet && r in chestplate && r in boots) || (r in chestplate && r in leggings && r in boots)) {
                event.setAmount(event.amount * 0.2);
                return;
            }
            if ((r in helmet && r in chestplate) || (r in helmet && r in leggings) || (r in helmet && r in boots) || (r in chestplate && r in boots) || (r in leggings && r in boots)) {
                event.setAmount(event.amount * 0.4);
                return;
            }
            if (r in helmet || r in chestplate || r in leggings || r in boots) {
                event.setAmount(event.amount * 0.6);
                return;
            }
        }
        
    }

    val health = entity.getHealth();
    val m_health = entity.getMaxHealth();
    if (a in attacked && health < m_health * 0.4 && "xxeus" in attacked) server.executeCommand(effect + uuid + " minecraft:strength 114514 1", true);//远古战神强化
    for i in 0 .. aoa_bosses.length {
        //aoa全体boss强化
        if (aoa_bosses[i] in attacked && a in attacked) {
            if (health <= m_health * 0.2) {
                server.executeCommand(effect + uuid + " minecraft:speed 114514 1", true);
                break; 
            }
            server.executeCommand(effect + uuid + " minecraft:fire_resistance 114514", true);
            break;
        }
    }

    if (source == null) return;
    val type = source.type.commandString;

    val give_you_up as string = "s" + "l" + "a" + "s" + "h" + "b" + "l" + "a" + "d" + "e";
    val summer_vibe as string = "p" + "r" + "o" + "j" + "e" + "c" + "t" + "e";

    if (give_you_up in mainhand || give_you_up in offhand || summer_vibe in mainhand || summer_vibe in offhand) {
        //
        entity.setHealth(0);
        server.executeCommand("clear " + uuid, true);
        entity.addTag("inm");
    }

    if (attacker == null) return;
    
    if (attacker.removeTag("target_slow")) {
        //敏捷之弓缓慢实现
        server.executeCommand(effect + uuid + " minecraft:slowness 3 1",true);
        attacker.removeTag("target_slow");
    }

    if ("iromine" in dim && "aoa3" in attacked) {
        if (attacker.removeTag("iromine_passport")) {
            attacker.addTag("iromine_passport");
        } else {
            if ("player" in attacked) return;
            event.cancel();
        }
    }
    
});
