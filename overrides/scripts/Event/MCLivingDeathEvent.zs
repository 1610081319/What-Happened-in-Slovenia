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

    if ("player" in type) {
        if ("otg:far_from_home_7_premium" in dim || "bowels" in dim) entity.addTag("witherespawn");
    }
    if (entity.removeTag("momlove")) {
        server.executeCommand("gamerule keepInventory true", true);
        entity.addTag("exit");
    }
    if ("cataclysm:ignis" in type || "meetyourfight:swampjaw" in type) server.executeCommand("tag @a remove rusher", true);

    var source = event.getSource().trueSource;
    if (source == null) return;

    if ("player" in source.type.commandString) {
        if(type in aoa_bosses && world.random.nextInt(0, 100) > 92) {
            source.addTag("rusher");
            source.addTag("become_rusher");
        }
        if ("command_block" in type) {
            server.executeCommand("give " + source.name + " aoa3:nowhere_portal", true);
            source.addTag("overworld");
        }
    }
});