//Author: @Kasualix
import crafttweaker.api.util.text.MCTextComponent;
import crafttweaker.api.item.IItemStack;

var runes as IItemStack[] = [
    <item:aoa3:carved_rune_of_travel>,
    <item:aoa3:carved_rune_of_direction>,
    <item:aoa3:carved_rune_of_reality>,
    <item:aoa3:carved_rune_of_space>
];

for i in 0 .. runes.length {
    runes[i].addTooltip(MCTextComponent.createTranslationTextComponent("info.neverise.carved_rune"));
}