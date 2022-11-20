//Author: @Kasualix
    import crafttweaker.api.item.IItemStack;
    import mods.champions.ChampionStages;
    import mods.gamestages.StageHelper;
    import mods.itemstages.ItemStages;
    import mods.timestages.Timers;

var items as IItemStack[] = [
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
    <item:relics:magic_mirror>,
    <item:dimpaintings:overworld_painting>,
    <item:dimpaintings:end_painting>,
    <item:enigmaticlegacy:dark_mirror>
];
var stages as string[] = [
    "champion_i", 
    "champion_ii", 
    "champion_ii", 
    "champion_iii", 
    "champion_iii", 
    "champion_iv"
];
var tiers as int[] = [
    1, 
    2, 
    3, 
    4, 
    5, 
    6
];
var dims_i as string[] = [
    "creeponia", 
    "precasia", 
    "lelyetia", 
    "barathos", 
    "deeplands"
];
var dims_ii as string[] = [
    "celeve", 
    "iromine", 
    "haven", 
    "abyss", 
    "mysterium", 
    "gardencia", 
    "vox_ponds", 
    "crystevia", 
    "candyland"
];
var dims_iii as string[] = [
    "lunalus", 
    "lborean", 
    "greckon", 
    "runandor", 
    "dustopia"
];

for i in 0 .. tiers.length {
    ChampionStages.addTierStage(stages[i], tiers[i]);
}
for j in 0 .. items.length {
    ItemStages.restrict(items[j], "unobtainable");
    items[j].clearTooltip();
}
for l in 0 .. dims_i.length {
    StageHelper.grantStageOnDimension("aoa3:" + dims_i[l], "champion_i");
}
for n in 0 .. dims_ii.length {
    StageHelper.grantStageOnDimension("aoa3:" + dims_ii[n], "champion_ii");
}
for m in 0 .. dims_iii.length {
    StageHelper.grantStageOnDimension("aoa3:" + dims_iii[m], "champion_iii");
}
    StageHelper.grantStageOnDimension("aoa3:shyrelands", "champion_iv");
    StageHelper.grantStageOnDimension("minecraft:the_nether", "champion_i");
    Timers.addTimer("enigmaticlegacy_timer", "logged", "enig", 0, "seconds");
    Timers.addTimer("momlove_timer", "exit", "now_exit", 1, "seconds");