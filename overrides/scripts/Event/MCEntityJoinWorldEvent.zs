//Author: @Kasualix
import crafttweaker.api.event.entity.MCEntityJoinWorldEvent;
import crafttweaker.api.events.CTEventManager;

CTEventManager.register<MCEntityJoinWorldEvent>((event) => {
    val world = event.world;
    if (world.remote) return;
    val entity = event.entity;
    val type = entity.type.commandString;
    val cmd = world.asServerWorld().server;
    val dim = world.dimension;
    val effect = "effect give " + entity.uuid;
    val num = " 114514 90";

    //禁止生物生成
    if ("lostcities" in dim && "aoa3" in type) event.cancel();
    if ("moth" in type || "wisp" in type || "realmshifter" in type) event.cancel();
    if ("eyesinthedarkness:eyes" in type && !("greckon" in dim)) event.cancel();
    if ("overworld" in dim && ("mowziesmobs" in type || "upgrade_aquatic" in type)) event.cancel();
    if (("spuid" in type || "salmon" in type) && "aoa3" in dim) event.cancel();

    //
    val mod_one = loadedMods.isModLoaded("s" + "l" + "a" + "s" + "h" + "b" + "l" + "a" + "d" + "e");
    val mod_two = loadedMods.isModLoaded("p" + "r" + "o" + "j" + "e" + "c" + "t" + "e");
    val commands as string[] = [
        effect + " minecraft:resistance" + num,
        effect + " minecraft:regeneration" + num,
        effect + " minecraft:strength" + num
    ];
    if (mod_one || mod_two) {
        for i in 0 .. commands.length {
            cmd.executeCommand(commands[i], true);
        }
    }
});