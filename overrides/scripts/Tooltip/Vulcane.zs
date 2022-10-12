//Author: @Kasualix
import crafttweaker.api.util.text.MCTextComponent;
import crafttweaker.api.item.IItemStack;

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