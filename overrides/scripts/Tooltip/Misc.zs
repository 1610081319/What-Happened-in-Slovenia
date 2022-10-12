//Author: @Kasualix
import crafttweaker.api.util.text.MCTextComponent;
import crafttweaker.api.item.IItemStack;

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

val texts as MCTextComponent[] = [
    MCTextComponent.createTranslationTextComponent("info.neverise.charging_table"),
    MCTextComponent.createTranslationTextComponent("info.neverise.alacrity_bow"),
    MCTextComponent.createTranslationTextComponent("info.neverise.squire_bag"),
    MCTextComponent.createTranslationTextComponent("info.neverise.formidibomb"),
    MCTextComponent.createTranslationTextComponent("info.neverise.nowhere_portal"),
    MCTextComponent.createTranslationTextComponent("info.neverise.puzzle_master"),
    MCTextComponent.createTranslationTextComponent("info.neverise.golden_apple_stew"),
    MCTextComponent.createTranslationTextComponent("info.neverise.command_block_book")
];

for k in 0 .. items.length {
    items[k].addTooltip(texts[k]);
}