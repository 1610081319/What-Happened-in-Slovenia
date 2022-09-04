import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.entity.player.MCPlayerLoggedInEvent;
import crafttweaker.api.item.IItemStack;
val stages as string[] = [
    "logged",
    "normal"
];
CTEventManager.register<MCPlayerLoggedInEvent>(event => {
    val player = event.player;
    if (player.world.remote) return;
    if (player.hasGameStage("logged")) return;
    val cmd = player.world.asServerWorld().server;
    val exe as string[] = [
        "tp " + player.name + " 0 250 0",
        "setblock 0 249 0 aoa3:nowhere_portal",
        "effect give " + player.name + " minecraft:blindness 1 255"
    ];
    for j in 0 .. exe.length {
        cmd.executeCommand(exe[j], true);
    }
    for i in 0 .. stages.length {
        player.addGameStage(stages[i]);
    }
    player.addTag("start");
    cmd.executeCommand("difficulty hard", true);
    player.addGameStage("before_wither");
});