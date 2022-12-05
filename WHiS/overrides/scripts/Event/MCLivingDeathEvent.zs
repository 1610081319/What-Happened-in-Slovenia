import crafttweaker.api.event.entity.living.MCLivingDeathEvent; 
import crafttweaker.api.events.CTEventManager;

var aoa_bosses = "bane__baroness__blue_guardian__clunkhead__corallus__cotton_candor__craexxeus__creep__crystocore__dracyon__elusive__flash__graw__green_guardian__gyro__harkos__hive_king__kajaros__king_bambambam__king_shroomus__klobber__kror__mechbot__mirage__miskel__nethengeic_wither__okazor__proshield__raxxan__red_guardian__rock_rider__shadowlord__smash__tyrosaur__vinocorne__visualent__voxxulon__xxeus__yellow_guardian";

CTEventManager.register<MCLivingDeathEvent>((event) => {
    var entity = event.entityLiving;
    var world = entity.world;
    if (world.remote) return;
    var server = world.asServerWorld().server;
    var type = entity.type.commandString;
    var dim = world.dimension;
    var source = event.getSource().trueSource;

    if ("player" in type && ("void:withertsorm" in dim || "bowels" in dim)) entity.addTag("witherespawn");
    if (source == null) return;
    if ("player" in source.type.commandString) {
        if ("command_block" in type) {
            server.executeCommand("give " + source.name + " aoa3:nowhere_portal", true);
            server.executeCommand("effect clear @a", true);
            source.addTag("overworld");
        }
        if (type in aoa_bosses) source.addTag("eye_giver");
    }
});