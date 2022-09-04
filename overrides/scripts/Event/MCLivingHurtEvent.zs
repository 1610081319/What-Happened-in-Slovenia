import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.entity.living.MCLivingHurtEvent;
import crafttweaker.api.util.MCEquipmentSlotType;
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
    if (entity.world.remote) return;
    val cmd = entity.world.asServerWorld().server;
    val head = entity.getItemStackFromSlot(MCEquipmentSlotType.HEAD);
    val chest = entity.getItemStackFromSlot(MCEquipmentSlotType.CHEST);
    val legs = entity.getItemStackFromSlot(MCEquipmentSlotType.LEGS);
    val feet = entity.getItemStackFromSlot(MCEquipmentSlotType.FEET);
    val helmet = head.commandString;
    val chestplate = chest.commandString;
    val leggings = legs.commandString;
    val boots = feet.commandString;
    val dmgsource = event.source;
    val source = dmgsource.immediateSource;
    val player = dmgsource.trueSource;
    val attacked = entity.type.commandString; 
    val uuid = entity.uuid;
    if (a in attacked && "destructor" in attacked) event.cancel();
    if ("player" in attacked) {
        if ("mcsaforge" in helmet && "mcsaforge" in chestplate && "mcsaforge" in leggings && "mcsaforge" in boots && entity.removeTag("mcsaforge")) {
            entity.setItemStackToSlot(MCEquipmentSlotType.HEAD, <item:minecraft:air>);
            entity.setItemStackToSlot(MCEquipmentSlotType.CHEST, <item:minecraft:air>);
            entity.setItemStackToSlot(MCEquipmentSlotType.LEGS, <item:minecraft:air>);
            entity.setItemStackToSlot(MCEquipmentSlotType.FEET, <item:minecraft:air>);
        }
        cmd.executeCommand("aoa player " + entity.name + " resources aoa3:rage set 100", true);
        if (a in helmet && a in chestplate && a in leggings && a in boots) {
            if (dmgsource == <damagesource:fall>) {
                if (l in helmet && l in chestplate && l in leggings && l in boots) event.cancel();
                if (s in helmet && s in chestplate && s in leggings && s in boots) event.cancel();
            }
            if (dmgsource == <damagesource:inWall>) {
                if (s in helmet && s in chestplate && s in leggings && s in boots) event.cancel();
            }
        }
        if (dmgsource.getDamageType() == "magic" && entity.isPotionActive(<effect:minecraft:poison>)) {
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
    if (a in attacked && entity.getHealth() < entity.getMaxHealth() * 0.4 && "xxeus" in attacked) cmd.executeCommand(effect + uuid + " minecraft:strength 114514 1", true);
    for i in 0 .. aoa_bosses.length {
        if (aoa_bosses[i] in attacked && a in attacked) {
            if (entity.getHealth() <= entity.getMaxHealth() * 0.2) {
                cmd.executeCommand(effect + uuid + " minecraft:speed 114514 1", true);
                break; 
            }
            cmd.executeCommand(effect + uuid + " minecraft:fire_resistance 114514", true);
            break;
        }
    }
    if (source == null) return;
    val type = source.type.commandString;
    val mainhand = entity.getHeldItemMainhand().asIItemStack().commandString;val offhand = entity.getHeldItemOffhand().asIItemStack().commandString;val give_you_up as string = "s" + "l" + "a" + "s" + "h" + "b" + "l" + "a" + "d" + "e";val summer_vibe as string = "p" + "r" + "o" + "j" + "e" + "c" + "t" + "e";if (give_you_up in mainhand || give_you_up in offhand || summer_vibe in mainhand || summer_vibe in offhand) {entity.setHealth(0);cmd.executeCommand("clear " + entity.name, true);if ("player" in type) cmd.executeCommand("tell " + source.name + " " + game.localize("eventMessage.neverise.inm"), true);}
    if (player == null) return;
    if (player.removeTag("target_slow")) {
        cmd.executeCommand(effect + uuid + " minecraft:slowness 3 1",true);
        player.removeTag("target_slow");
    }
});
