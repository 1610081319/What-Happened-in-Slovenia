//Author: @Kasualix
import crafttweaker.api.event.entity.MCEntityTravelToDimensionEvent;
import crafttweaker.api.util.text.MCTextComponent;
import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.util.Random;

public function r(rd as Random, a as int, b as int) as int {
    return rd.nextInt(a, b);
}

CTEventManager.register<MCEntityTravelToDimensionEvent>(event => {
    val entity = event.entity;
    val world = entity.world;
    if (world.remote) return;
    val type = entity.type.commandString;
    val here = world.dimension;
    val there = event.dimension.commandString;
    val random = world.random;
    val y = r(random, 30, 60);
    val player_y = y + 10;
    val x1 = r(random, 0, 100);
    val z1 = r(random, 0, 100);

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
        if ("lostcities" in here && "nowhere" in there) {
            entity.addTag("here_we_go_overworld");
            event.cancel();
        }
        if ("iromine" in there) {
            if (entity.removeTag("iromined")) {
                entity.addTag("iromined");
                return;
            }
            entity.addTag("iromined");
            entity.addTag("ferrous_wroughtnaut");
        }
    }
});