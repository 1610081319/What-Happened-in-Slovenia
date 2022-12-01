import crafttweaker.api.event.entity.MCEntityJoinWorldEvent;
import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.entity.MCEntity;

CTEventManager.register<MCEntityJoinWorldEvent>((event) => {
    var entity = event.entity;
    var world = entity.world;
    if (world.remote) return;
    var type = entity.type.commandString;
    var server = world.asServerWorld().server;
    var dim = world.dimension;
    var pos = entity.position;

    if ("wyrmroost" in type) {
        var gatentities as stdlib.List<MCEntity> = world.getEntitiesInArea(pos.add(30, 20, 30), pos.add(- 30, -20, -30));
        for gater in 0 .. gatentities.length {
            if ("gateways" in gatentities[gater].type.commandString) return;
        }
        event.cancel();
    }

    if ("nowhere" in dim && !("player" in type)) event.cancel();

    if ("formidibomb" in type) {
        if ("otg:far_from_home_7_premium" in dim) {
            entity.forceSetPosition(pos.x, 200.00, pos.z);
            world.setBlockState(pos.up(200 - pos.y - 1), <blockstate:minecraft:stone>);
        } else {
            event.cancel();
        }
        return;
    }

    if ("weeping_angel" in type) {
        if ("otg:far_from_home_7_premium" in dim || "bowels" in dim || "nowhere" in dim || "end" in dim) {
            event.cancel();
        } else {
            if (world.random.nextInt(0, 100) > 64) event.cancel();
        }
        return;
    }

    if (
        ("dimpaintings" in type && !("overworld" in dim)) || 
        ("otg:far_from_home_7_premium" in dim && "aoa3" in type) || 
        ("overworld" in dim && ("upgrade_aquatic" in type)) || 
        "aoa3:corrupted_traveller" in type || "chimpanzee" in type || "hippogryph" in type || 
        ("salmon" in type && "aoa3" in dim) || 
        ("sushigocrafting" in type && !("overworld" in dim))
    ) {
        event.cancel();
        return;
    }

    if (world.asServerWorld().isRaid(pos)) {
        var uuid = entity.uuid;
        server.executeCommand("effect give " + uuid + " minecraft:strength 114514 1", true);
        server.executeCommand("effect give " + uuid + " minecraft:regeneration 114514 1", true);
        return;
    }

    if ("ba_bt:land_golem" in type) {
        for silver in 0 .. 5 {
            server.executeCommand("execute in " + dim + " run summon ba_bt:silver_skeleton " + pos.x + " " + pos.y + " " + pos.z, true);
        }
    }
});