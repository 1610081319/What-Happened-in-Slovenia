//Author: @Kasualix
    import crafttweaker.api.blocks.MCBlock;
var mods as string[] = [
    "relics",
    "mcsaforge"
];
for i in 0 .. mods.length {
    loot.modifiers.removeByModId(mods[i]);
}
<block:plg:pl532480>.addLootModifier("plg", (loots, currentContext) => [<item:plg:pl532480>]);
