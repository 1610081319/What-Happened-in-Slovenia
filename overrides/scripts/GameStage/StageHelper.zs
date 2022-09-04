import mods.gamestages.StageHelper;
val dims_i as string[] = [
    "creeponia", 
    "precasia", 
    "lelyetia", 
    "barathos", 
    "deeplands"
];
val dims_ii as string[] = [
    "celeve", 
    "iromine", 
    "haven", 
    "abyss", 
    "mysterium", 
    "gardencia", 
    "vox_ponds", 
    "crystevia", 
    "candyland"
];
val dims_iii as string[] = [
    "lunalus", 
    "lborean", 
    "greckon", 
    "runandor", 
    "dustopia"
];
for i in 0 .. dims_i.length {
    StageHelper.grantStageOnDimension("aoa3:" + dims_i[i], "champion_i");
}
for j in 0 .. dims_ii.length {
    StageHelper.grantStageOnDimension("aoa3:" + dims_ii[j], "champion_ii");
}
for k in 0 .. dims_iii.length {
    StageHelper.grantStageOnDimension("aoa3:" + dims_iii[k], "champion_iii");
}
StageHelper.grantStageOnDimension("aoa3:shyrelands", "champion_iv");
StageHelper.grantStageOnDimension("minecraft:the_nether", "champion_i");