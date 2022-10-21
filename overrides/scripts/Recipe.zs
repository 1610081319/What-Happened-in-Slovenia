//Author: @Kasualix
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.SmithingManager;

val all as IItemStack[] = [
    <item:paraglider:paraglider>,
    <item:paraglider:deku_leaf>,
    <item:relics:amphibian_boot>,
    <item:relics:out_runner>,
    <item:relics:ice_breaker>,
    <item:relics:enders_hand>,
    <item:relics:magma_walker>,
    <item:relics:drowned_belt>,
    <item:relics:rage_glove>,
    <item:relics:hunter_belt>,
    <item:relics:ice_skates>,
    <item:witherstormmod:command_block_sword>,
    <item:witherstormmod:command_block_axe>,
    <item:witherstormmod:command_block_pickaxe>,
    <item:witherstormmod:command_block_hoe>,
    <item:witherstormmod:command_block_shovel>,
    <item:aoa3:nowhere_realmstone>,
    <item:sophisticatedbackpacks:crafting_upgrade>,
    <item:aoa3:gold_trophy>,
    <item:aoa3:ornate_trophy>,
    <item:meetyourfight:fossil_bait>,
    <item:meetyourfight:devils_ante>,
    <item:meetyourfight:haunted_bell>,
    <item:relics:runic_anvil>,
    <item:relics:pedestal>,
    <item:relics:runic_altar>,
    <item:relics:bloody_lectern>,
    <item:aoa3:carved_rune_of_power>,
    <item:appliedenergistics2:vibration_chamber>,
    <item:appliedenergistics2:quartz_block>,
    <item:appliedenergistics2:64k_storage_cell>,
    <item:appliedenergistics2:1k_storage_cell>,
    <item:appliedenergistics2:4k_storage_cell>,
    <item:appliedenergistics2:16k_storage_cell>,
    <item:appliedenergistics2:drive>
];
val sword_names as string[] = [
    "rapier",
    "bee_stinger",
    "freezing_foil",
    "soul_scythe",
    "frost_scythe",
    "jailors_scythe",
    "cutlass",
    "dancers_sword",
    "nameless_blade",
    "sparkler",
    "sword",
    "stone_sword",
    "gold_sword",
    "diamond_sword",
    "hawkbrand",
    "sinister_sword",
    "katana",
    "dark_katana",
    "masters_katana",
    "soul_knife",
    "eternal_knife",
    "truthseeker",
    "claymore",
    "broadsword",
    "heartstealer",
    "great_axeblade",
    "frost_slayer",
    "grave_bane",
    "venom_glaive",
    "glaive",
    "tempest_knife",
    "resolute_tempest_knife",
    "chill_gale_knife"
];
val swords as IItemStack[] = [
    <item:dungeons_gear:rapier>,
    <item:dungeons_gear:bee_stinger>,
    <item:dungeons_gear:freezing_foil>,
    <item:dungeons_gear:soul_scythe>,
    <item:dungeons_gear:frost_scythe>,
    <item:dungeons_gear:jailors_scythe>,
    <item:dungeons_gear:cutlass>,
    <item:dungeons_gear:dancers_sword>,
    <item:dungeons_gear:nameless_blade>,
    <item:dungeons_gear:sparkler>,
    <item:dungeons_gear:sword>,
    <item:dungeons_gear:stone_sword>,
    <item:dungeons_gear:gold_sword>,
    <item:dungeons_gear:diamond_sword>,
    <item:dungeons_gear:hawkbrand>,
    <item:dungeons_gear:sinister_sword>,
    <item:dungeons_gear:katana>,
    <item:dungeons_gear:dark_katana>,
    <item:dungeons_gear:masters_katana>,
    <item:dungeons_gear:soul_knife>,
    <item:dungeons_gear:eternal_knife>,
    <item:dungeons_gear:truthseeker>,
    <item:dungeons_gear:claymore>,
    <item:dungeons_gear:broadsword>,
    <item:dungeons_gear:heartstealer>,
    <item:dungeons_gear:great_axeblade>,
    <item:dungeons_gear:frost_slayer>,
    <item:dungeons_gear:grave_bane>,
    <item:dungeons_gear:venom_glaive>,
    <item:dungeons_gear:glaive>,
    <item:dungeons_gear:tempest_knife>,
    <item:dungeons_gear:resolute_tempest_knife>,
    <item:dungeons_gear:chill_gale_knife>
];
val axe_names as string[] = [
    "axe",
    "gold_axe",
    "firebrand",
    "highland_axe",
    "double_axe",
    "cursed_axe",
    "whirlwind"
];
val axes as IItemStack[] = [
    <item:dungeons_gear:axe>,
    <item:dungeons_gear:gold_axe>,
    <item:dungeons_gear:firebrand>,
    <item:dungeons_gear:highland_axe>,
    <item:dungeons_gear:double_axe>,
    <item:dungeons_gear:cursed_axe>,
    <item:dungeons_gear:whirlwind>
]; 
val trophy = <item:aoa3:trophy>;
val gold_trophy = <item:aoa3:gold_trophy>;
val rune = <item:aoa3:unpowered_rune>;
val air = <item:minecraft:air>;
val orb = <item:paraglider:spirit_orb>;
val gold = <item:minecraft:gold_ingot>;
val hell = <item:aoa3:hellstone>;
val book = <item:witherstormmod:command_block_book>; 
val sword = <item:witherstormmod:command_block_sword>;
val axe = <item:witherstormmod:command_block_axe>;
val baronyte = <item:aoa3:baronyte_ingot>;
val certus = <item:appliedenergistics2:certus_quartz_crystal>;
val iron = <item:minecraft:iron_ingot>;
val red = <item:minecraft:redstone>;
val glass = <tag:items:forge:glass>;
val basalt = <item:minecraft:basalt>;

for i in 0 .. all.length {
    recipes.removeRecipe(all[i]);
}
recipes.removeByModid("omni_card");

for j in 0 .. sword_names.length {
    smithing.addRecipe("command_sword_" + sword_names[j], sword, swords[j], book);
}
for k in 0 .. axe_names.length {
    smithing.addRecipe("command_axe_" + axe_names[k], axe, axes[k], book);
}
craftingTable.addShaped("gold_trophy", gold_trophy, [
    [trophy, trophy],
    [trophy, trophy]
]);
craftingTable.addShaped("ornate_trophy", <item:aoa3:ornate_trophy>, [
    [gold_trophy, gold_trophy],
    [gold_trophy, gold_trophy]
]);
craftingTable.addShaped("power_rune", <item:aoa3:carved_rune_of_power>, [
    [rune, <item:witherstormmod:withered_nether_star>, rune],
    [rune, <item:aoa3:ancient_rock>, rune],
    [rune, rune, rune]
]);
craftingTable.addShaped("puzzle_master", <item:lootgames:puzzle_master>, [
    [air, orb, air],
    [orb, <item:aoa3:circus_coin>, orb],
    [air, orb, air]
]);
craftingTable.addShaped("fossil_bait", <item:meetyourfight:fossil_bait>, [
    [air, <item:aoa3:toxic_lump>, air],
    [<item:minecraft:red_dye>, <item:aoa3:skelecanth>, <item:minecraft:red_dye>],
    [air, <item:aoa3:toxic_lump>, air]
]);
craftingTable.addShaped("devils_ante", <item:meetyourfight:devils_ante>, [
    [hell, baronyte, hell],
    [baronyte, <item:minecraft:diamond>, baronyte],
    [hell, baronyte, hell]
]);
craftingTable.addShaped("haunted_bell", <item:meetyourfight:haunted_bell>, [
    [air, gold, air],
    [gold, <item:aoa3:haunted_eyes_leaves>, gold],
    [gold, <item:aoa3:haunted_eyes_leaves>, gold]
]);
craftingTable.addShaped("plg", <item:plg:pl532480>, [
    [iron, certus, iron],
    [iron, <item:minecraft:emerald_block>, iron],
    [basalt, basalt, basalt]
]);
craftingTable.addShaped("certus_quartz_block", <item:appliedenergistics2:quartz_block>, [
    [certus, certus],
    [certus, certus]
]);
craftingTable.addShaped("storage_cell", <item:appliedenergistics2:64k_storage_cell>, [
    [glass, red, glass],
    [red, <item:appliedenergistics2:quartz_block>, red],
    [iron, iron, iron]
]);