//Author: @Kasualix
import crafttweaker.api.SmithingManager;
import crafttweaker.api.item.IItemStack;

public function s(name as string, result as IItemStack, input as IItemStack, upgrade as IItemStack) as void {
    smithing.addRecipe(name, result, input, upgrade);
}

val book = <item:witherstormmod:command_block_book>; 
val sword = <item:witherstormmod:command_block_sword>;
val axe = <item:witherstormmod:command_block_axe>;

val sword_names as string[] = [
    "rapier",
    "bee_stinger",
    "freezing_foil",
    "soul_scythe",
    "frost_scythe",
    "jailors_scythe",
    "cutlass",
    "dancers_sword",
    "nameless_blade",
    "sparkler",
    "sword",
    "stone_sword",
    "gold_sword",
    "diamond_sword",
    "hawkbrand",
    "sinister_sword",
    "katana",
    "dark_katana",
    "masters_katana",
    "soul_knife",
    "eternal_knife",
    "truthseeker",
    "claymore",
    "broadsword",
    "heartstealer",
    "great_axeblade",
    "frost_slayer",
    "grave_bane",
    "venom_glaive",
    "glaive",
    "tempest_knife",
    "resolute_tempest_knife",
    "chill_gale_knife"
];
val swords as IItemStack[] = [
    <item:dungeons_gear:rapier>,
    <item:dungeons_gear:bee_stinger>,
    <item:dungeons_gear:freezing_foil>,
    <item:dungeons_gear:soul_scythe>,
    <item:dungeons_gear:frost_scythe>,
    <item:dungeons_gear:jailors_scythe>,
    <item:dungeons_gear:cutlass>,
    <item:dungeons_gear:dancers_sword>,
    <item:dungeons_gear:nameless_blade>,
    <item:dungeons_gear:sparkler>,
    <item:dungeons_gear:sword>,
    <item:dungeons_gear:stone_sword>,
    <item:dungeons_gear:gold_sword>,
    <item:dungeons_gear:diamond_sword>,
    <item:dungeons_gear:hawkbrand>,
    <item:dungeons_gear:sinister_sword>,
    <item:dungeons_gear:katana>,
    <item:dungeons_gear:dark_katana>,
    <item:dungeons_gear:masters_katana>,
    <item:dungeons_gear:soul_knife>,
    <item:dungeons_gear:eternal_knife>,
    <item:dungeons_gear:truthseeker>,
    <item:dungeons_gear:claymore>,
    <item:dungeons_gear:broadsword>,
    <item:dungeons_gear:heartstealer>,
    <item:dungeons_gear:great_axeblade>,
    <item:dungeons_gear:frost_slayer>,
    <item:dungeons_gear:grave_bane>,
    <item:dungeons_gear:venom_glaive>,
    <item:dungeons_gear:glaive>,
    <item:dungeons_gear:tempest_knife>,
    <item:dungeons_gear:resolute_tempest_knife>,
    <item:dungeons_gear:chill_gale_knife>
];

for i in 0 .. sword_names.length {
    s("command_sword_" + sword_names[i], sword, swords[i], book);
}

val axe_names as string[] = [
    "axe",
    "gold_axe",
    "firebrand",
    "highland_axe",
    "double_axe",
    "cursed_axe",
    "whirlwind"
];
val axes as IItemStack[] = [
    <item:dungeons_gear:axe>,
    <item:dungeons_gear:gold_axe>,
    <item:dungeons_gear:firebrand>,
    <item:dungeons_gear:highland_axe>,
    <item:dungeons_gear:double_axe>,
    <item:dungeons_gear:cursed_axe>,
    <item:dungeons_gear:whirlwind>
]; 

for j in 0 .. axe_names.length {
    s("command_axe_" + axe_names[j], axe, axes[j], book);
}