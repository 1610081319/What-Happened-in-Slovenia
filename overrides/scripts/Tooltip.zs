import crafttweaker.api.item.IItemStack;
import crafttweaker.api.util.text.MCTextComponent;
val shift = MCTextComponent.createTranslationTextComponent("info.neverise.shift");
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
for i in 0 .. vulcanes.length {
    vulcanes[i].addShiftTooltip(MCTextComponent.createTranslationTextComponent("info.neverise.vulcane"), shift);
}
<item:aoa3:fertilised_farmland>.addShiftTooltip(MCTextComponent.createTranslationTextComponent("info.neverise.fertilised_farmland"), shift);
<item:minecraft:poppy>.withTag({RepairCost: 0, display: {Name: "{\"text\":\"Respect!\"}"}}).addShiftTooltip(MCTextComponent.createTranslationTextComponent("info.neverise.hardcore"), shift);
val items as IItemStack[] = [
    <item:aoa3:charging_table>,
    <item:aoa3:alacrity_bow>,
    <item:relics:squire_bag>,
    <item:witherstormmod:formidibomb>,
    <item:aoa3:nowhere_portal>,
    <item:lootgames:puzzle_master>
]; 
val texts as MCTextComponent[] = [
    MCTextComponent.createTranslationTextComponent("info.neverise.charging_table"),
    MCTextComponent.createTranslationTextComponent("info.neverise.alacrity_bow"),
    MCTextComponent.createTranslationTextComponent("info.neverise.squire_bag"),
    MCTextComponent.createTranslationTextComponent("info.neverise.formidibomb"),
    MCTextComponent.createTranslationTextComponent("info.neverise.nowhere_portal"),
    MCTextComponent.createTranslationTextComponent("info.neverise.puzzle_master")
];
for k in 0 .. items.length {
    items[k].addTooltip(texts[k]);
}
val mcsaforge as IItemStack[] = [
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
    <item:mcsaforge:tim_boots>
];
for u in 0 .. mcsaforge.length {
    mcsaforge[u].addTooltip(MCTextComponent.createTranslationTextComponent("info.neverise.mcsaforge"));
}