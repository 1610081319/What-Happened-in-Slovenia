import crafttweaker.api.event.entity.MCEntityTravelToDimensionEvent;
import crafttweaker.api.util.MCResourceLocation;
import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.entity.MCEntity;

var dim_resources as MCResourceLocation[] = [
    <resource:aoa3:abyss>,
    <resource:aoa3:barathos>,
    <resource:aoa3:candyland>,
    <resource:aoa3:celeve>,
    <resource:aoa3:creeponia>,
    <resource:aoa3:crystevia>,
    <resource:aoa3:deeplands>,
    <resource:aoa3:dustopia>,
    <resource:aoa3:gardencia>,
    <resource:aoa3:greckon>,
    <resource:aoa3:haven>,
    <resource:aoa3:iromine>,
    <resource:aoa3:lborean>,
    <resource:aoa3:lelyetia>,
    <resource:aoa3:lunalus>,
    <resource:aoa3:mysterium>,
    <resource:aoa3:precasia>,
    <resource:aoa3:runandor>,
    <resource:aoa3:shyrelands>,
    <resource:aoa3:vox_ponds>,
    <resource:minecraft:the_nether>
];

CTEventManager.register<MCEntityTravelToDimensionEvent>(event => {
    var entity = event.entity;
    var world = entity.world;
    if (world.remote) return;

    if ("player" in entity.type.commandString) {
        var pos = entity.position;
        var there = event.dimension.commandString;
        var server = world.asServerWorld().server;
        var go = server.getWorld(dim_resources[world.random.nextInt(0, 20)]);
        if (entity.removeTag("nowherer")) {
            entity.addTag("otger");
            return;
        }
        
        if (entity.removeTag("overworld")) {
            event.cancel();
            server.executeCommand("execute in minecraft:overworld run tp " + entity.uuid + " 0 256 0", true);
            entity.removeTag("storm_time");
        }
        
        if (entity.removeTag("aoa_age")) {
            if (entity.removeTag("bonfirer")) return;
            if (entity.removeTag("dim_randomized")) return;
            if (entity.removeTag("recaller")) return;
            if ("nether" in there || "aoa3" in there) {
                event.cancel();
                server.executeCommand("execute in " + go.toString() + " run tp " + entity.uuid + " " + pos.x + " " + pos.y + " " + pos.z, true);
                go.setBlockState(pos, <blockstate:minecraft:air>);
                go.setBlockState(pos.add(0, 1, 0), <blockstate:minecraft:air>);
                entity.addTag("dim_randomized");
                return;
            }
        }
    }
});