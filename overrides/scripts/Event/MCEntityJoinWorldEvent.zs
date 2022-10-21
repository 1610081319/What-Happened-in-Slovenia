//Author: @Kasualix
import crafttweaker.api.event.entity.MCEntityJoinWorldEvent;
import crafttweaker.api.events.CTEventManager;
import stdlib.List;

CTEventManager.register<MCEntityJoinWorldEvent>((event) => {
    val world = event.world;
    if (world.remote) return;
    val entity = event.entity;
    val type = entity.type.commandString;
    val server = world.asServerWorld().server;
    val dim = world.dimension;
    val effect = "effect give " + entity.uuid;
    val num = " 114514 90";
    val uuid = entity.uuid;
    val pos = entity.position;
    val between = 200 - pos.y - 1;

    if ("formidibomb" in type) {
        if ("neverise:witherstorm" in dim) {
            entity.setPosition(pos.x, 200.00, pos.z);
            world.setBlockState(pos.up(between), <blockstate:minecraft:stone>);
        } else {
            entity.remove();
        }
    }

    if ("neverise:witherstorm" in dim && "aoa3" in type) event.cancel();
    if ("duck" in type || "moth" in type || "wisp" in type || "realmshifter" in type || "goat" in type|| "yak" in type || "glow_spuid" in type) event.cancel();
    if ("eyesinthedarkness:eyes" in type && !("greckon" in dim)) event.cancel();
    if ("overworld" in dim && ("mowziesmobs" in type || "upgrade_aquatic" in type)) event.cancel();
    if ("salmon" in type && "aoa3" in dim) event.cancel();

    val mod_one = loadedMods.isModLoaded("s" + "l" + "a" + "s" + "h" + "b" + "l" + "a" + "d" + "e");
    val mod_two = loadedMods.isModLoaded("p" + "r" + "o" + "j" + "e" + "c" + "t" + "e");
    val commands as string[] = [
        effect + " minecraft:resistance" + num,
        effect + " minecraft:regeneration" + num,
        effect + " minecraft:strength" + num
    ];
    if (mod_one || mod_two) {
        for i in 0 .. commands.length {
            server.executeCommand(commands[i], true);
        }
    }
});