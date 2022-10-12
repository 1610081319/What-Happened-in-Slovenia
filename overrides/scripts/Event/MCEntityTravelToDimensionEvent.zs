//Author: @Kasualix
import crafttweaker.api.event.entity.MCEntityTravelToDimensionEvent;
import crafttweaker.api.events.CTEventManager;

CTEventManager.register<MCEntityTravelToDimensionEvent>(event => {
    val entity = event.entity;
    if (entity.world.remote) return;
    val type = entity.type.commandString;
    val here = entity.world.dimension;
    val there = event.dimension.commandString;
    //tag已经注释了一切
    if ("player" in type) {


        entity.addTag("exp_fix");


        if ("overworld" in there && "nowhere" in here) {


            if (entity.removeTag("wow_now_you_are_in_nowhere_and_you_need_to_go_to_lost_cities")) {
                entity.removeTag("wow_now_you_are_in_nowhere_and_you_need_to_go_to_lost_cities");
                entity.addTag("here_we_go_lost_cities");
            }


            if (entity.removeTag("omg_you_destroyed_the_wither_storm_and_now_you_need_to_go_to_the_overworld")) {
                entity.removeTag("omg_you_destroyed_the_wither_storm_and_now_you_need_to_go_to_the_overworld");
                entity.addTag("here_we_go_overworld");
            }
        }


    }

    
    if ("player" in type && "lostcities" in here && "nowhere" in there) {
        entity.addTag("here_we_go_overworld");
        event.cancel();
    }
});