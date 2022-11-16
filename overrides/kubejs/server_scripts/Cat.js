onEvent("item.entity_interact", event => {
    if (event.player.getHeldItem(event.hand) == "minecraft:bucket") {
        let type = event.target.type
        let player = event.player
        if (type == "aoa3:skeletron") {
            player.mainHandItem.count-=1
            player.give("kubejs:skeletron_bucket") 
        } else if (type == "aoa3:smash") {
            player.mainHandItem.count-=1
            player.give("kubejs:smash_bucket") 
        } else if (type == "aoa3:baroness") {
            player.mainHandItem.count-=1
            player.give("kubejs:baroness_bucket") 
        } else if (type == "aoa3:clunkhead") {
            player.mainHandItem.count-=1
            player.give("kubejs:clunkhead_bucket") 
        } else if (type == "aoa3:corallus") {
            player.mainHandItem.count-=1
            player.give("kubejs:corallus_bucket") 
        } else if (type == "aoa3:cotton_candor") {
            player.mainHandItem.count-=1
            player.give("kubejs:cotton_candor_bucket") 
        } else if (type == "aoa3:craexxeus") {
            player.mainHandItem.count-=1
            player.give("kubejs:craexxeus_bucket") 
        } else if (type == "aoa3:xxeus") {
            player.mainHandItem.count-=1
            player.give("kubejs:xxeus_bucket") 
        } else if (type == "aoa3:creep") {
            player.mainHandItem.count-=1
            player.give("kubejs:creep_bucket") 
        } else if (type == "aoa3:crystocore") {
            player.mainHandItem.count-=1
            player.give("kubejs:crystocore_bucket") 
        } else if (type == "aoa3:dracyon") {
            player.mainHandItem.count-=1
            player.give("kubejs:dracyon_bucket") 
        } else if (type == "aoa3:graw") {
            player.mainHandItem.count-=1
            player.give("kubejs:graw_bucket") 
        } else if (type == "aoa3:gyro") {
            player.mainHandItem.count-=1
            player.give("kubejs:gyro_bucket") 
        } else if (type == "aoa3:hive_king") {
            player.mainHandItem.count-=1
            player.give("kubejs:hive_king_bucket") 
        } else if (type == "aoa3:kajaros") {
            player.mainHandItem.count-=1
            player.give("kubejs:kajaros_bucket") 
        } else if (type == "aoa3:miskel") {
            player.mainHandItem.count-=1
            player.give("kubejs:miskel_bucket") 
        } else if (type == "aoa3:harkos") {
            player.mainHandItem.count-=1
            player.give("kubejs:harkos_bucket") 
        } else if (type == "aoa3:raxxan") {
            player.mainHandItem.count-=1
            player.give("kubejs:raxxan_bucket") 
        } else if (type == "aoa3:okazor") {
            player.mainHandItem.count-=1
            player.give("kubejs:okazor_bucket") 
        } else if (type == "aoa3:king_bambambam") {
            player.mainHandItem.count-=1
            player.give("kubejs:king_bambambam_bucket") 
        } else if (type == "aoa3:king_shroomus") {
            player.mainHandItem.count-=1
            player.give("kubejs:king_shroomus_bucket") 
        } else if (type == "aoa3:kror") {
            player.mainHandItem.count-=1
            player.give("kubejs:kror_bucket") 
        } else if (type == "aoa3:mechbot") {
            player.mainHandItem.count-=1
            player.give("kubejs:mechbot_bucket") 
        } else if (type == "aoa3:nethengeic_wither") {
            player.mainHandItem.count-=1
            player.give("kubejs:nethengeic_wither_bucket") 
        } else if (type == "aoa3:red_guardian") {
            player.mainHandItem.count-=1
            player.give("kubejs:red_guardian_bucket") 
        } else if (type == "aoa3:blue_guardian") {
            player.mainHandItem.count-=1
            player.give("kubejs:blue_guardian_bucket") 
        } else if (type == "aoa3:green_guardian") {
            player.mainHandItem.count-=1
            player.give("kubejs:green_guardian_bucket") 
        } else if (type == "aoa3:yellow_guardian") {
            player.mainHandItem.count-=1
            player.give("kubejs:yellow_guardian_bucket") 
        } else if (type == "aoa3:rock_rider") {
            player.mainHandItem.count-=1
            player.give("kubejs:rock_rider_bucket") 
        } else if (type == "aoa3:shadowlord") {
            player.mainHandItem.count-=1
            player.give("kubejs:shadowlord_bucket") 
        } else if (type == "aoa3:tyrosaur") {
            player.mainHandItem.count-=1
            player.give("kubejs:tyrosaur_bucket") 
        } else if (type == "aoa3:vinocorne") {
            player.mainHandItem.count-=1
            player.give("kubejs:vinocorne_bucket") 
        } else if (type == "aoa3:visualent") {
            player.mainHandItem.count-=1
            player.give("kubejs:visualent_bucket") 
        } else if (type == "aoa3:voxxulon") {
            player.mainHandItem.count-=1
            player.give("kubejs:voxxulon_bucket") 
        } else if (type == "aoa3:elusive") {
            player.mainHandItem.count-=1
            player.give("kubejs:elusive_bucket") 
        } else if (type == "aoa3:bane") {
            player.mainHandItem.count-=1
            player.give("kubejs:bane_bucket") 
        } else {
            console.info("WTF BUCKET")
        }
    }
})