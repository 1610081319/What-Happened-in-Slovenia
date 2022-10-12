//Author: @Kasualix
var mods as string[] = [
    "relics",
    "mcsaforge"
];

for i in 0 .. mods.length {
    loot.modifiers.removeByModId(mods[i]);
}