//Author: @Kasualix
#loadfirst
import crafttweaker.api.item.IItemStack;

recipes.removeByModid("omni_card");

val crafting_table as IItemStack[] = [
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
    <item:minecraft:enchanting_table>,
    <item:aoa3:carved_rune_of_power>
];

for i in 0 .. crafting_table.length {
    craftingTable.removeRecipe(crafting_table[i]);
}

val all as IItemStack [] = [
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
    <item:aoa3:nowhere_realmstone>
];

for j in 0 .. all.length {
    recipes.removeRecipe(all[j]);
}