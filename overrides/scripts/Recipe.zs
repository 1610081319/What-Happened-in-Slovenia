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
    <item:sushigocrafting:avocado_slices>,
    <item:gateways:gate_pearl>.withTag({gateway: "gateways:spider_gate_small"}),
    <item:gateways:gate_pearl>.withTag({gateway: "gateways:witch_gate_small"}),
    <item:gateways:gate_pearl>.withTag({gateway: "gateways:zombie_gate_small"}),
    <item:gateways:gate_pearl>.withTag({gateway: "gateways:spider_gate"}),
    <item:gateways:gate_pearl>.withTag({gateway: "gateways:witch_gate"}),
    <item:gateways:gate_pearl>.withTag({gateway: "gateways:zombie_gate"}),
    <item:gateways:gate_pearl>.withTag({gateway: "gateways:blaze_gate"}),
    <item:gateways:gate_pearl>.withTag({gateway: "gateways:creeper_gate"}),
    <item:gateways:gate_pearl>.withTag({gateway: "gateways:enderman_gate"}),
    <item:gateways:gate_pearl>.withTag({gateway: "gateways:ghast_gate"}),
    <item:gateways:gate_pearl>.withTag({gateway: "gateways:blaze_gate_large"}),
    <item:gateways:gate_pearl>.withTag({gateway: "gateways:creeper_gate_large"}),
    <item:gateways:gate_pearl>.withTag({gateway: "gateways:enderman_gate_large"}),
    <item:gateways:gate_pearl>.withTag({gateway: "gateways:ghast_gate_large"}),
    <item:gateways:gate_pearl>.withTag({gateway: "gateways:magma_cube_gate_large"}),
    <item:gateways:gate_pearl>.withTag({gateway: "gateways:shulker_gate_large"}),
    <item:gateways:gate_pearl>.withTag({gateway: "gateways:skeleton_gate_large"}),
    <item:gateways:gate_pearl>.withTag({gateway: "gateways:slime_gate_large"}),
    <item:gateways:gate_pearl>.withTag({gateway: "gateways:spider_gate_large"}),
    <item:gateways:gate_pearl>.withTag({gateway: "gateways:witch_gate_large"}),
    <item:gateways:gate_pearl>.withTag({gateway: "gateways:zombie_gate_large"}),
    <item:gateways:gate_pearl>.withTag({gateway: "gateways:magma_cube_gate"}),
    <item:gateways:gate_pearl>.withTag({gateway: "gateways:shulker_gate"}),
    <item:gateways:gate_pearl>.withTag({gateway: "gateways:skeleton_gate"}),
    <item:gateways:gate_pearl>.withTag({gateway: "gateways:slime_gate"}),
    <item:gateways:gate_pearl>.withTag({gateway: "gateways:blaze_gate_small"}),
    <item:gateways:gate_pearl>.withTag({gateway: "gateways:creeper_gate_small"}),
    <item:gateways:gate_pearl>.withTag({gateway: "gateways:enderman_gate_small"}),
    <item:gateways:gate_pearl>.withTag({gateway: "gateways:ghast_gate_small"}),
    <item:gateways:gate_pearl>.withTag({gateway: "gateways:magma_cube_gate_small"}),
    <item:gateways:gate_pearl>.withTag({gateway: "gateways:shulker_gate_small"}),
    <item:gateways:gate_pearl>.withTag({gateway: "gateways:skeleton_gate_small"}),
    <item:gateways:gate_pearl>.withTag({gateway: "gateways:slime_gate_small"}),
    <item:meetyourfight:fossil_bait>,
    <item:meetyourfight:haunted_bell>,
    <item:meetyourfight:devils_ante>
];
var sword_names as string[] = [
    <item:dungeons_gear:tempest_knife>.registryName.path,
    <item:dungeons_gear:resolute_tempest_knife>.registryName.path,
    <item:dungeons_gear:chill_gale_knife>.registryName.path,
    <item:dungeons_gear:rapier>.registryName.path,
    <item:dungeons_gear:bee_stinger>.registryName.path,
    <item:dungeons_gear:freezing_foil>.registryName.path,
    <item:dungeons_gear:cutlass>.registryName.path,
    <item:dungeons_gear:dancers_sword>.registryName.path,
    <item:dungeons_gear:nameless_blade>.registryName.path,
    <item:dungeons_gear:sword>.registryName.path,
    <item:dungeons_gear:stone_sword>.registryName.path,
    <item:dungeons_gear:gold_sword>.registryName.path,
    <item:dungeons_gear:diamond_sword>.registryName.path,
    <item:dungeons_gear:hawkbrand>.registryName.path,
    <item:dungeons_gear:sinister_sword>.registryName.path,
    <item:dungeons_gear:katana>.registryName.path,
    <item:dungeons_gear:dark_katana>.registryName.path,
    <item:dungeons_gear:masters_katana>.registryName.path,
    <item:dungeons_gear:soul_knife>.registryName.path,
    <item:dungeons_gear:eternal_knife>.registryName.path,
    <item:dungeons_gear:truthseeker>.registryName.path,
    <item:dungeons_gear:claymore>.registryName.path,
    <item:dungeons_gear:broadsword>.registryName.path,
    <item:dungeons_gear:heartstealer>.registryName.path,
    <item:dungeons_gear:frost_slayer>.registryName.path,
    <item:dungeons_gear:fortune_spear>.registryName.path,
    <item:dungeons_gear:glaive>.registryName.path,
    <item:dungeons_gear:grave_bane>.registryName.path,
    <item:dungeons_gear:venom_glaive>.registryName.path
];
var swords as IItemStack[] = [
    <item:dungeons_gear:tempest_knife>,
    <item:dungeons_gear:resolute_tempest_knife>,
    <item:dungeons_gear:chill_gale_knife>,
    <item:dungeons_gear:rapier>,
    <item:dungeons_gear:bee_stinger>,
    <item:dungeons_gear:freezing_foil>,
    <item:dungeons_gear:cutlass>,
    <item:dungeons_gear:dancers_sword>,
    <item:dungeons_gear:nameless_blade>,
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
    <item:dungeons_gear:frost_slayer>,
    <item:dungeons_gear:fortune_spear>,
    <item:dungeons_gear:glaive>,
    <item:dungeons_gear:grave_bane>,
    <item:dungeons_gear:venom_glaive>
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
var trophy = <item:aoa3:trophy>;
var gold_trophy = <item:aoa3:gold_trophy>;
var rune = <item:aoa3:unpowered_rune>;
var air = <item:minecraft:air>;
var orb = <item:paraglider:spirit_orb>;
var book = <item:witherstormmod:command_block_book>; 
var sword = <item:witherstormmod:command_block_sword>;
var axe = <item:witherstormmod:command_block_axe>;
var iron = <item:minecraft:iron_ingot>;
var red = <item:minecraft:redstone>;
var glass = <tag:items:forge:glass>;
var basalt = <item:minecraft:basalt>;
var cobblestone = <tag:items:forge:cobblestone>;
var stick = <tag:items:forge:rods/wooden>;
var uncrafter = loadedMods.isModLoaded("c" + "o" + "r" + "a" + "i" + "l" + "_" + "r" + "e" + "c" + "y" + "c" + "l" + "e" + "r");

for i in 0 .. all.length {
    recipes.removeRecipe(all[i]);
}
for j in 0 .. sword_names.length {
    smithing.addRecipe("command_sword_from_" + sword_names[j], sword, swords[j], book);
}
for k in 0 .. axe_names.length { 
    smithing.addRecipe("command_axe_from_" + axe_names[k], axe, axes[k], book);
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
if (uncrafter) recipes.removeAll();
