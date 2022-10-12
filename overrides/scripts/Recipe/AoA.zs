//Author: @Kasualix
val trophy = <item:aoa3:trophy>;
val gold_trophy = <item:aoa3:gold_trophy>;
val rune = <item:aoa3:unpowered_rune>;

craftingTable.addShaped("gold_trophy", gold_trophy, [
    [trophy, trophy],
    [trophy, trophy]
]);

craftingTable.addShaped("ornate_trophy", <item:aoa3:ornate_trophy>, [
    [gold_trophy, gold_trophy],
    [gold_trophy, gold_trophy]
]);

craftingTable.addShaped("power_rune", <item:aoa3:carved_rune_of_power>, [
    [rune, <item:witherstormmod:withered_nether_star>, rune],
    [rune, <item:aoa3:ancient_rock>, rune],
    [rune, rune, rune]
]);