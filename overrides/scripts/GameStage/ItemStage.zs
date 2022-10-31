//Author: @Kasualix
import crafttweaker.api.item.IItemStack;
import mods.itemstages.ItemStages;

val items as IItemStack[] = [
    <item:paraglider:stamina_vessel>,
    <item:paraglider:paraglider>,
    <item:paraglider:deku_leaf>,
    <item:mcsaforge:harpers_headset_helmet>,
    <item:mcsaforge:harpers_headset_chestplate>,
    <item:mcsaforge:harpers_headset_leggings>,
    <item:mcsaforge:harpers_headset_boots>,
    <item:aoa3:nowhere_realmstone>,
    <item:vanillacookbook:milk_bottle>,
    <item:better_diving:ultra_glide_fins>,
    <item:better_diving:reinforced_diving_mask>,
    <item:better_diving:reinforced_o2_tank>,
    <item:better_diving:reinforced_wetsuit_leggings>,
    <item:better_diving:reinforced_fins>,
    <item:better_diving:limestone_outcrop>,
    <item:better_diving:sandstone_outcrop>,
    <item:better_diving:shale_outcrop>,
    <item:better_diving:titanium_block>,
    <item:better_diving:titanium_chunk>,
    <item:better_diving:copper_chunk>,
    <item:better_diving:silver_chunk>,
    <item:better_diving:lead_chunk>,
    <item:better_diving:lithium_chunk>,
    <item:better_diving:coal_chunk>,
    <item:better_diving:gold_chunk>,
    <item:better_diving:iron_chunk>,
    <item:better_diving:redstone_chunk>,
    <item:better_diving:lapis_chunk>,
    <item:better_diving:emerald_chunk>,
    <item:better_diving:diamond_chunk>,
    <item:better_diving:titanium_ingot>,
    <item:better_diving:copper_ingot>,
    <item:better_diving:silver_ingot>,
    <item:better_diving:lead_ingot>,
    <item:better_diving:lithium_ingot>,
    <item:better_diving:fiber_mesh>,
    <item:better_diving:power_cell>,
    <item:better_diving:seamoth>,
    <item:better_diving:diving_mask>,
    <item:better_diving:standard_o2_tank>,
    <item:better_diving:wetsuit_leggings>,
    <item:better_diving:fins>,
    <item:better_diving:rebreather>,
    <item:better_diving:high_capacity_o2_tank>,
    <item:better_diving:improved_wetsuit_leggings>,
    <item:better_diving:copper_block>,
    <item:better_diving:silver_block>,
    <item:better_diving:lead_block>,
    <item:better_diving:lithium_block>,
    <item:quark:soul_bead>,
    <item:prefab:item_swift_blade_wood>,
    <item:prefab:item_swift_blade_stone>,
    <item:prefab:item_swift_blade_iron>,
    <item:prefab:item_swift_blade_diamond>,
    <item:prefab:item_swift_blade_gold>,
    <item:prefab:item_swift_blade_copper>,
    <item:prefab:item_swift_blade_osmium>,
    <item:prefab:item_swift_blade_bronze>,
    <item:prefab:item_swift_blade_steel>,
    <item:prefab:item_swift_blade_obsidian>,
    <item:prefab:item_swift_blade_netherite>,
    <item:prefab:item_sickle_wood>,
    <item:prefab:item_sickle_stone>,
    <item:prefab:item_sickle_gold>,
    <item:prefab:item_sickle_iron>,
    <item:prefab:item_sickle_diamond>,
    <item:prefab:item_sickle_netherite>,
    <item:witherstormmod:command_block_shovel>,
    <item:witherstormmod:command_block_pickaxe>,
    <item:witherstormmod:command_block_hoe>,
    <item:mowziesmobs:wrought_helmet>,
    <item:plg:pl131072>,
    <item:plg:pl32768>,
    <item:plg:pl8192>,
    <item:plg:pl2048>,
    <item:plg:pl512>,
    <item:plg:pl128>,
    <item:plg:pl32>,
    <item:plg:pl8>,
    <item:plg:pl2>,
    <item:appliedenergistics2:vibration_chamber>
];

for i in 0 .. items.length {
    ItemStages.restrict(items[i], "unobtainable");
    items[i].clearTooltip();
}