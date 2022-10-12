//Author: @Kasualix
import crafttweaker.api.util.text.MCTextComponent;
import crafttweaker.api.item.IItemStack;

val spaceking as IItemStack[] = [
    <item:aoa3:spaceking_helmet>,
    <item:aoa3:spaceking_chestplate>,
    <item:aoa3:spaceking_legs>,
    <item:aoa3:spaceking_boots>
];

for sk in 0 .. spaceking.length {
    spaceking[sk].addTooltip(MCTextComponent.createTranslationTextComponent("item.aoa3.spaceking_armour.desc.1"));
    spaceking[sk].addTooltip(MCTextComponent.createTranslationTextComponent("item.aoa3.spaceking_armour.desc.2"));
}