//Author: @Kasualix
val air = <item:minecraft:air>;
val gold = <item:minecraft:gold_ingot>;
val hell = <item:aoa3:hellstone>;

craftingTable.addShaped("fossil_bait", <item:meetyourfight:fossil_bait>, [
    [air, <item:aoa3:toxic_lump>, air],
    [<item:minecraft:red_dye>, <item:aoa3:skelecanth>, <item:minecraft:red_dye>],
    [air, <item:aoa3:toxic_lump>, air]
]);

craftingTable.addShaped("devils_ante", <item:meetyourfight:devils_ante>, [
    [hell, <item:aoa3:baronyte_ingot>, hell],
    [<item:aoa3:baronyte_ingot>, <item:minecraft:diamond>, <item:aoa3:baronyte_ingot>],
    [hell, <item:aoa3:baronyte_ingot>, hell]
]);

craftingTable.addShaped("haunted_bell", <item:meetyourfight:haunted_bell>, [
    [air, gold, air],
    [gold, <item:aoa3:haunted_eyes_leaves>, gold],
    [gold, <item:aoa3:haunted_eyes_leaves>, gold]
]);