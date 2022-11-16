//Author: @Kasualix
    import crafttweaker.api.blocks.MCBlock;
var mods as string[] = [
    "relics",
    "mcsaforge"
];
var leaves as MCBlock[] = [
    <block:minecraft:oak_leaves>,
    <block:minecraft:spruce_leaves>,
    <block:minecraft:birch_leaves>,
    <block:minecraft:jungle_leaves>,
    <block:minecraft:acacia_leaves>,
    <block:minecraft:dark_oak_leaves>
];
var names as string[] = [
    "oak_leavestick",
    "spruce_leavestick",
    "birch_leavestick",
    "jungle_leavestick",
    "acacia_leavestick",
    "dark_oak_leavestick"
];
for i in 0 .. mods.length {
    loot.modifiers.removeByModId(mods[i]);
}
for j in 0 .. leaves.length {
    leaves[j].addToolDrop(names[j], <item:notreepunching:flint_shard>, <item:minecraft:stick>);
}
<block:plg:pl532480>.addLootModifier("plg", (loots, currentContext) => [<item:plg:pl532480>]);
