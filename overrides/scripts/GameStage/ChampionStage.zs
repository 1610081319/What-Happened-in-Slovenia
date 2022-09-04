import mods.champions.ChampionStages;
val stages as string[] = [
    "champion_i", 
    "champion_ii", 
    "champion_ii", 
    "champion_iii", 
    "champion_iii", 
    "champion_iv"
];
val tiers as int[] = [
    1, 
    2, 
    3, 
    4, 
    5, 
    6
];
for i in 0 .. tiers.length {
    ChampionStages.addTierStage(stages[i], tiers[i]);
}