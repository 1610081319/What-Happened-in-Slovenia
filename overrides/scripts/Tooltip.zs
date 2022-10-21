//Author: @Kasualix
import crafttweaker.api.util.text.MCTextComponent as MCTextComponent;
import crafttweaker.api.item.IItemStack;

public function tooltip(item as IItemStack, key as string) as void {
    item.addTooltip(MCTextComponent.createTranslationTextComponent(key));
}

public function tooltipS(item as IItemStack, key as string) as void {
    val shift = MCTextComponent.createTranslationTextComponent("info.neverise.shift");
    item.addShiftTooltip(MCTextComponent.createTranslationTextComponent(key), shift);
}

tooltipS(<item:aoa3:fertilised_farmland>, "info.neverise.fertilised_farmland");

val vulcanes as IItemStack[] = [
    <item:aoa3:vulcane>,
    <item:aoa3:battle_vulcane>,
    <item:aoa3:equality_vulcane>,
    <item:aoa3:fire_vulcane>,
    <item:aoa3:impairment_vulcane>,
    <item:aoa3:poison_vulcane>,
    <item:aoa3:power_vulcane>,
    <item:aoa3:wither_vulcane>
];
val spaceking as IItemStack[] = [
    <item:aoa3:spaceking_helmet>,
    <item:aoa3:spaceking_chestplate>,
    <item:aoa3:spaceking_legs>,
    <item:aoa3:spaceking_boots>
];
val rosidian as IItemStack[] = [
    <item:aoa3:rosidian_helmet>,
    <item:aoa3:rosidian_chestplate>,
    <item:aoa3:rosidian_legs>,
    <item:aoa3:rosidian_boots>
];
val for_storm as IItemStack[] = [
    <item:mcsaforge:golden_goliath_boots>,
    <item:mcsaforge:golden_goliath_circuitry_helmet>,
    <item:mcsaforge:golden_goliath_circuitry_chestplate>,
    <item:mcsaforge:golden_goliath_circuitry_leggings>,
    <item:mcsaforge:golden_goliath_circuitry_boots>,
    <item:mcsaforge:ivor_helmet>,
    <item:mcsaforge:ivor_chestplate>,
    <item:mcsaforge:ivor_leggings>,
    <item:mcsaforge:ivor_boots>,
    <item:mcsaforge:champion_petra_helmet>,
    <item:mcsaforge:champion_petra_chestplate>,
    <item:mcsaforge:champion_petra_leggings>,
    <item:mcsaforge:champion_petra_boots>,
    <item:mcsaforge:dragonsbane_helmet>,
    <item:mcsaforge:dragonsbane_chestplate>,
    <item:mcsaforge:dragonsbane_leggings>,
    <item:mcsaforge:dragonsbane_boots>,
    <item:mcsaforge:ellegaard_helmet>,
    <item:mcsaforge:ellegaard_chestplate>,
    <item:mcsaforge:ellegaard_leggings>,
    <item:mcsaforge:ellegaard_boots>,
    <item:mcsaforge:ender_defender_helmet>,
    <item:mcsaforge:ender_defender_chestplate>,
    <item:mcsaforge:ender_defender_leggings>,
    <item:mcsaforge:ender_defender_boots>,
    <item:mcsaforge:enderman_soren_helmet>,
    <item:mcsaforge:enderman_soren_chestplate>,
    <item:mcsaforge:enderman_soren_leggings>,
    <item:mcsaforge:enderman_soren_boots>,
    <item:mcsaforge:gabriel_helmet>,
    <item:mcsaforge:gabriel_chestplate>,
    <item:mcsaforge:gabriel_leggings>,
    <item:mcsaforge:gabriel_boots>,
    <item:mcsaforge:golden_goliath_helmet>,
    <item:mcsaforge:golden_goliath_chestplate>,
    <item:mcsaforge:golden_goliath_leggings>,
    <item:mcsaforge:adamantium_impervium_boots>,
    <item:mcsaforge:adamantium_impervium_leggings>,
    <item:mcsaforge:adamantium_impervium_chestplate>,
    <item:mcsaforge:adamantium_impervium_helmet>,
    <item:mcsaforge:shield_of_infinity_boots>,
    <item:mcsaforge:soren_helmet>,
    <item:mcsaforge:soren_chestplate>,
    <item:mcsaforge:soren_leggings>,
    <item:mcsaforge:soren_boots>,
    <item:mcsaforge:star_shield_helmet>,
    <item:mcsaforge:star_shield_chestplate>,
    <item:mcsaforge:star_shield_leggings>,
    <item:mcsaforge:star_shield_boots>,
    <item:mcsaforge:magnus_helmet>,
    <item:mcsaforge:magnus_chestplate>,
    <item:mcsaforge:magnus_leggings>,
    <item:mcsaforge:magnus_boots>,
    <item:mcsaforge:ninja_ivor_helmet>,
    <item:mcsaforge:ninja_ivor_chestplate>,
    <item:mcsaforge:ninja_ivor_leggings>,
    <item:mcsaforge:ninja_ivor_boots>,
    <item:mcsaforge:olivia_helmet>,
    <item:mcsaforge:olivia_chestplate>,
    <item:mcsaforge:olivia_leggings>,
    <item:mcsaforge:olivia_boots>,
    <item:mcsaforge:petra_helmet>,
    <item:mcsaforge:petra_chestplate>,
    <item:mcsaforge:petra_leggings>,
    <item:mcsaforge:petra_boots>,
    <item:mcsaforge:prismarine_soldier_helmet>,
    <item:mcsaforge:prismarine_soldier_chestplate>,
    <item:mcsaforge:prismarine_soldier_leggings>,
    <item:mcsaforge:prismarine_soldier_boots>,
    <item:mcsaforge:redstone_riot_helmet>,
    <item:mcsaforge:redstone_riot_chestplate>,
    <item:mcsaforge:redstone_riot_leggings>,
    <item:mcsaforge:redstone_riot_boots>,
    <item:mcsaforge:shield_of_infinity_helmet>,
    <item:mcsaforge:shield_of_infinity_chestplate>,
    <item:mcsaforge:shield_of_infinity_leggings>,
    <item:mcsaforge:lukas_boots>,
    <item:mcsaforge:lukas_leggings>,
    <item:mcsaforge:lukas_chestplate>,
    <item:mcsaforge:lukas_helmet>,
    <item:mcsaforge:swordbreaker_helmet>,
    <item:mcsaforge:swordbreaker_chestplate>,
    <item:mcsaforge:swordbreaker_leggings>,
    <item:mcsaforge:swordbreaker_boots>,
    <item:mcsaforge:tim_helmet>,
    <item:mcsaforge:tim_chestplate>,
    <item:mcsaforge:tim_leggings>,
    <item:mcsaforge:tim_boots>,
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
    <item:dungeons_gear:chill_gale_knife>,
    <item:dungeons_gear:axe>,
    <item:dungeons_gear:gold_axe>,
    <item:dungeons_gear:firebrand>,
    <item:dungeons_gear:highland_axe>,
    <item:dungeons_gear:double_axe>,
    <item:dungeons_gear:cursed_axe>,
    <item:dungeons_gear:whirlwind>,
    <item:witherstormmod:command_block_axe>,
    <item:witherstormmod:command_block_sword>,
    <item:gunswithoutroses:iron_gun>,
    <item:gunswithoutroses:gold_gun>,
    <item:gunswithoutroses:diamond_shotgun>,
    <item:gunswithoutroses:diamond_sniper>,
    <item:gunswithoutroses:diamond_gatling>
];
var runes as IItemStack[] = [
    <item:aoa3:carved_rune_of_travel>,
    <item:aoa3:carved_rune_of_direction>,
    <item:aoa3:carved_rune_of_reality>,
    <item:aoa3:carved_rune_of_space>
];
val hammocks as IItemStack[] = [
    <item:comforts:hammock_black>,
    <item:comforts:hammock_blue>,
    <item:comforts:hammock_brown>,
    <item:comforts:hammock_cyan>,
    <item:comforts:hammock_gray>,
    <item:comforts:hammock_green>,
    <item:comforts:hammock_light_blue>,
    <item:comforts:hammock_light_gray>,
    <item:comforts:hammock_lime>,
    <item:comforts:hammock_magenta>,
    <item:comforts:hammock_orange>,
    <item:comforts:hammock_pink>,
    <item:comforts:hammock_purple>,
    <item:comforts:hammock_red>,
    <item:comforts:hammock_white>,
    <item:comforts:hammock_yellow>
];
val bags as IItemStack[] = [
    <item:comforts:sleeping_bag_black>,
    <item:comforts:sleeping_bag_blue>,
    <item:comforts:sleeping_bag_brown>,
    <item:comforts:sleeping_bag_cyan>,
    <item:comforts:sleeping_bag_gray>,
    <item:comforts:sleeping_bag_green>,
    <item:comforts:sleeping_bag_light_blue>,
    <item:comforts:sleeping_bag_light_gray>,
    <item:comforts:sleeping_bag_lime>,
    <item:comforts:sleeping_bag_magenta>,
    <item:comforts:sleeping_bag_orange>,
    <item:comforts:sleeping_bag_pink>,
    <item:comforts:sleeping_bag_purple>,
    <item:comforts:sleeping_bag_red>,
    <item:comforts:sleeping_bag_white>,
    <item:comforts:sleeping_bag_yellow>
];

for i in 0 .. vulcanes.length {
    tooltipS(vulcanes[i], "info.neverise.vulcane");
}
for sk in 0 .. spaceking.length {
    tooltip(spaceking[sk], "item.aoa3.spaceking_armour.desc.1");
    tooltip(spaceking[sk], "item.aoa3.spaceking_armour.desc.2");
}
for rose in 0 .. rosidian.length {
    tooltip(rosidian[rose], "item.aoa3.rosidian_armour.desc.1");
    tooltip(rosidian[rose], "item.aoa3.rosidian_armour.desc.2");
}
for storm in 0 .. for_storm.length {
    tooltip(for_storm[storm], "info.neverise.for_storm");
}
for rune in 0 .. runes.length {
    tooltip(runes[rune], "info.neverise.carved_rune");
}
for hammock in 0 .. hammocks.length {
    tooltip(hammocks[hammock], "info.neverise.hammocks");
}
for bag in 0 .. bags.length {
    tooltip(bags[bag], "info.neverise.sleeping_bags");
}

val items as IItemStack[] = [
    <item:aoa3:charging_table>,
    <item:aoa3:alacrity_bow>,
    <item:relics:squire_bag>,
    <item:witherstormmod:formidibomb>,
    <item:aoa3:nowhere_portal>,
    <item:lootgames:puzzle_master>,
    <item:witherstormmod:golden_apple_stew>,
    <item:witherstormmod:command_block_book>
]; 

val texts as string[] = [
    "info.neverise.charging_table",
    "info.neverise.alacrity_bow",
    "info.neverise.squire_bag",
    "info.neverise.formidibomb",
    "info.neverise.nowhere_portal",
    "info.neverise.puzzle_master",
    "info.neverise.golden_apple_stew",
    "info.neverise.command_block_book"
];

for misc in 0 .. items.length {
    tooltip(items[misc], texts[misc]);
}