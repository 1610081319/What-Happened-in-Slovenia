import crafttweaker.api.event.living.MCLivingUpdateEvent;
import crafttweaker.api.events.CTEventManager;

CTEventManager.register<MCLivingUpdateEvent>((event) => {
    var entity = event.entityLiving;
    var world = entity.world;
    if (world.remote) return;
    if (entity.removeTag("eol")) {
        entity.addTag("eol");
        return;
    }
    if (entity.type.registryName.toString() == "witherstormmod:wither_storm") {
        var phase_check = entity.data.getAt("Phase");
        if (phase_check == null) return;
        if ("7" in phase_check.toString()) {
            entity.addTag("eol");
            entity.updateData({ConsumedEntities: 10000000});
        }
    }
});