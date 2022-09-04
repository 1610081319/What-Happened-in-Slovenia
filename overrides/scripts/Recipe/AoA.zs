craftingTable.addShaped("aoa_experience_flask", <item:aoa3:exp_flask>, [
    [<tag:items:forge:dyes/black>, <tag:items:forge:nuggets/gold>, <tag:items:forge:dyes/black>],
    [<tag:items:forge:glass_panes>, <tag:items:forge:ingots/gold>, <tag:items:forge:glass_panes>],
    [<tag:items:forge:dyes/black>, <item:aoa3:urka_hide>, <tag:items:forge:dyes/black>]
]);
val trophy = <item:aoa3:trophy>;
val gold_trophy = <item:aoa3:gold_trophy>;
craftingTable.addShaped("gold_trophy", gold_trophy, [
    [trophy, trophy],
    [trophy, trophy]
]);
craftingTable.addShaped("ornate_trophy", <item:aoa3:ornate_trophy>, [
    [gold_trophy, gold_trophy],
    [gold_trophy, gold_trophy]
]);
