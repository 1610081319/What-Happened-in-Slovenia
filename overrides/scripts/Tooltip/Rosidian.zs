//Author: @Kasualix
import crafttweaker.api.util.text.MCTextComponent;
import crafttweaker.api.item.IItemStack;

val rosidian as IItemStack[] = [
    <item:aoa3:rosidian_helmet>,
    <item:aoa3:rosidian_chestplate>,
    <item:aoa3:rosidian_legs>,
    <item:aoa3:rosidian_boots>
];

for rose in 0 .. rosidian.length {
    rosidian[rose].addTooltip(MCTextComponent.createTranslationTextComponent("item.aoa3.rosidian_armour.desc.1"));
    rosidian[rose].addTooltip(MCTextComponent.createTranslationTextComponent("item.aoa3.rosidian_armour.desc.2"));
}
