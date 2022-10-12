//Author: @Kasualix
import crafttweaker.api.event.entity.living.MCLivingSpawnEvent;
import crafttweaker.api.util.MCEquipmentSlotType;
import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.item.IItemStack;

val helmet as IItemStack[] = [
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
val chestplate as IItemStack[] = [
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

CTEventManager.register<MCLivingSpawnEvent>((event) => {
    val entity = event.entityLiving;
    val world = entity.world;
    val classification = entity.type.classification.commandString;
    val random = world.random;
    val dim = world.dimension;
    var random_chest = random.nextInt(0, 114514);
    var random_head = random.nextInt(0, 114514);
    var gear_chest = random.nextInt(0, 45);
    var gear_head = random.nextInt(0, 45);
    if (world.remote) return;
    if (entity.removeTag("armored")) {
        entity.addTag("armored");
        return;
    }
    if (("monster" in classification) && ("overworld" in dim || "lostcities" in dim)) {
        if (random_head > random_chest) {
            entity.setItemStackToSlot(MCEquipmentSlotType.HEAD, helmet[gear_head]);
        } else {
            entity.setItemStackToSlot(MCEquipmentSlotType.CHEST, chestplate[gear_chest]);
        }
        entity.addTag("armored");
    }
});