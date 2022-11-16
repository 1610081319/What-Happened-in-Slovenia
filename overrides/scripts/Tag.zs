//Author: @Kasualix
    import crafttweaker.api.item.IIngredient;
    import crafttweaker.api.item.IItemStack;

var milk as IItemStack[] = [
    <item:kubejs:yellow_guardian_bucket>,
    <item:kubejs:rock_rider_bucket>,
    <item:kubejs:shadowlord_bucket>,
    <item:kubejs:tyrosaur_bucket>,
    <item:kubejs:vinocorne_bucket>,
    <item:kubejs:visualent_bucket>,
    <item:kubejs:voxxulon_bucket>,
    <item:kubejs:bane_bucket>,
    <item:kubejs:elusive_bucket>,
    <item:kubejs:skeletron_bucket>,
    <item:kubejs:smash_bucket>,
    <item:kubejs:baroness_bucket>,
    <item:kubejs:clunkhead_bucket>,
    <item:kubejs:corallus_bucket>,
    <item:kubejs:cotton_candor_bucket>,
    <item:kubejs:craexxeus_bucket>,
    <item:kubejs:xxeus_bucket>,
    <item:kubejs:creep_bucket>,
    <item:kubejs:crystocore_bucket>,
    <item:kubejs:dracyon_bucket>,
    <item:kubejs:graw_bucket>,
    <item:kubejs:gyro_bucket>,
    <item:kubejs:hive_king_bucket>,
    <item:kubejs:kajaros_bucket>,
    <item:kubejs:miskel_bucket>,
    <item:kubejs:harkos_bucket>,
    <item:kubejs:raxxan_bucket>,
    <item:kubejs:okazor_bucket>,
    <item:kubejs:king_bambambam_bucket>,
    <item:kubejs:king_shroomus_bucket>,
    <item:kubejs:kror_bucket>,
    <item:kubejs:mechbot_bucket>,
    <item:kubejs:nethengeic_wither_bucket>,
    <item:kubejs:red_guardian_bucket>,
    <item:kubejs:blue_guardian_bucket>,
    <item:kubejs:green_guardian_bucket>
];

for i in 0 .. milk.length {
    <tag:items:forge:milk/milk>.add(milk[i]);
    <tag:items:forge:buckets>.add(milk[i]);
    <tag:items:forge:milk>.add(milk[i]);
    <tag:items:minecraft:milk_bucket>.add(milk[i]);
    <tag:items:forge:buckets/milk>.add(milk[i]);
    <tag:items:forge:milk/milk_bottle>.add(milk[i]);
}