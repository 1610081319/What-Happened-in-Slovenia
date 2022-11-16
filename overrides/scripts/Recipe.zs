//Author: @Kasualix
    import crafttweaker.api.SmithingManager;
    import crafttweaker.api.item.IItemStack;

var all as IItemStack[] = [
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
    <item:relics:runic_anvil>,
    <item:relics:pedestal>,
    <item:relics:runic_altar>,
    <item:relics:bloody_lectern>,
    <item:sushigocrafting:avocado_slices>
];
var sword_names as string[] = [
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
var swords as IItemStack[] = [
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
var axe_names as string[] = [
    "axe",
    "gold_axe",
    "firebrand",
    "highland_axe",
    "double_axe",
    "cursed_axe",
    "whirlwind"
];
var axes as IItemStack[] = [
    <item:dungeons_gear:axe>,
    <item:dungeons_gear:gold_axe>,
    <item:dungeons_gear:firebrand>,
    <item:dungeons_gear:highland_axe>,
    <item:dungeons_gear:double_axe>,
    <item:dungeons_gear:cursed_axe>,
    <item:dungeons_gear:whirlwind>
]; 

    var uncrafter = loadedMods.isModLoaded("c" + "o" + "r" + "a" + "i" + "l" + "_" + "r" + "e" + "c" + "y" + "c" + "l" + "e" + "r");
    var trophy = <item:aoa3:trophy>;
    var gold_trophy = <item:aoa3:gold_trophy>;
    var rune = <item:aoa3:unpowered_rune>;
    var air = <item:minecraft:air>;
    var orb = <item:paraglider:spirit_orb>;
    var certus = <item:appliedenergistics2:certus_quartz_crystal>;
    var book = <item:witherstormmod:command_block_book>; 
    var sword = <item:witherstormmod:command_block_sword>;
    var axe = <item:witherstormmod:command_block_axe>;
    var iron = <item:minecraft:iron_ingot>;
    var red = <item:minecraft:redstone>;
    var glass = <tag:items:forge:glass>;
    var basalt = <item:minecraft:basalt>;
    var cobblestone = <tag:items:forge:cobblestone>;
    var stick = <tag:items:forge:rods/wooden>;

var mods as string[] = [
    "omni_card"
];
if (uncrafter) recipes.removeAll();
for i in 0 .. all.length {
    recipes.removeRecipe(all[i]);
}
for j in 0 .. sword_names.length {
    smithing.addRecipe("command_sword_" + sword_names[j], sword, swords[j], book);
}
for k in 0 .. axe_names.length {
    smithing.addRecipe("command_axe_" + axe_names[k], axe, axes[k], book);
}
for l in 0 .. mods.length {
    recipes.removeByModid(mods[l]);
}
craftingTable.addShaped("gold_trophy", gold_trophy, [
    [trophy, trophy],
    [trophy, trophy]
]);
craftingTable.addShaped("ornate_trophy", <item:aoa3:ornate_trophy>, [
    [gold_trophy, gold_trophy],
    [gold_trophy, gold_trophy]
]);
craftingTable.addShaped("puzzle_master", <item:lootgames:puzzle_master>, [
    [air, orb, air],
    [orb, <item:aoa3:circus_coin>, orb],
    [air, orb, air]
]);
craftingTable.addShaped("plg", <item:plg:pl532480>, [
    [iron, certus, iron],
    [iron, <item:minecraft:emerald_block>, iron],
    [basalt, basalt, basalt]
]);
craftingTable.addShaped("stone_pickaxe", <item:minecraft:stone_pickaxe>, [
    [cobblestone, cobblestone, cobblestone],
    [air, stick, air],
    [air, stick, air]
]);
craftingTable.addShapedMirrored("stone_axe", <item:minecraft:stone_axe>, [
    [cobblestone, cobblestone, air],
    [cobblestone,stick, air],
    [air, stick, air]
]);
craftingTable.addShaped("stone_shovel", <item:minecraft:stone_shovel>, [
    [air, cobblestone, air],
    [air, stick, air],
    [air, stick, air]
]);
craftingTable.addShaped("stone_sword", <item:minecraft:stone_sword>, [
    [air, cobblestone, air],
    [air, cobblestone, air],
    [air, stick, air]
]);
craftingTable.addShaped("stone_hoe", <item:minecraft:stone_hoe>, [
    [cobblestone, cobblestone, air],
    [air, stick, air],
    [air, stick, air]
]);
    craftingTable.addShapeless("avocado", <item:sushigocrafting:avocado_slices> * 2, [<item:sushigocrafting:avocado>]);