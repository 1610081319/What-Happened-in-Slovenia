val mods as string[] = [
    "relics",
    "mcssaforge"
];
for i in 0 .. mods.length {
    loot.modifiers.removeByModId(mods[i]);
}

val paraglider as string[] = [
    "paraglider:towers_of_the_wild/chest",
    "paraglider:towers_of_the_wild/ocean_chest"
];

for j in 0 .. paraglider.length {
    loot.modifiers.removeByName(paraglider[j]);
}