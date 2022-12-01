#loadfirst
import crafttweaker.api.util.text.MCTextComponent as MCTextComponent;
import crafttweaker.api.enchantment.EnchantmentType;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.mods.ModInfo;
import stdlib.List as List;
/*
var mods as List<ModInfo> = loadedMods.mods;
for m in 0 .. mods.length {
    for n in 0 .. mods[m].items.length {
        if (mods[m].items[n].damageable && mods[m].items[n].maxDamage > 100) {
            var dmg = mods[m].items[n].maxDamage * 2;
            print ("“" + mods[m].items[n].registryName.toString() + ";" + dmg + "”,");
        }
    }
}
*/
public function tooltip(item as IItemStack, key as string) as void {
    item.addTooltip(MCTextComponent.createTranslationTextComponent(key));
}

public function tooltipS(item as IItemStack, key as string) as void {
    var shift = MCTextComponent.createTranslationTextComponent("info.neverise.shift");
    item.addShiftTooltip(MCTextComponent.createTranslationTextComponent(key), shift);
}

public function printModArmor(modid as string) as void {
    var items as List<IItemStack> = loadedMods.getMod(modid).items;
    for head in 0 .. items.length {
        if (EnchantmentType.ARMOR_HEAD.canEnchantItem(items[head].definition)) print ("“" + items[head].registryName.toString() + "”");
    }
    print("——————————————————————————————————————");
    for chest in 0 .. items.length {
        if (EnchantmentType.ARMOR_CHEST.canEnchantItem(items[chest].definition)) print ("“" + items[chest].registryName.toString() + "”");
    }
    print("——————————————————————————————————————");
    for legs in 0 .. items.length {
        if (EnchantmentType.ARMOR_LEGS.canEnchantItem(items[legs].definition)) print ("“" + items[legs].registryName.toString() + "”");
    }
    print("——————————————————————————————————————");
    for feet in 0 .. items.length {
        if (EnchantmentType.ARMOR_FEET.canEnchantItem(items[feet].definition)) print ("“" + items[feet].registryName.toString() + "”");
    }
}

//{id:"relics:infinity_ham",Count:1b,tag:{pieces:3,Damage:0,dropchance:0.0012d}}|||{id:"relics:old_boot",Count:1b,tag:{Damage:0,dropchance:0.0012d}}|||{id:"relics:wool_mitten",Count:1b,tag:{Damage:0,dropchance:0.0012d}}|||{id:"relics:leather_belt",Count:1b,tag:{Damage:0,dropchance:0.0012d}}|||{id:"relics:spore_sack",Count:1b,tag:{Damage:0,dropchance:6.0E-4d}}|||{id:"relics:arrow_quiver",Count:1b,tag:{Damage:0,dropchance:6.0E-4d}}|||{id:"relics:camouflage_ring",Count:1b,tag:{Damage:0,dropchance:6.0E-4d}}|||{id:"relics:hunter_belt",Count:1b,tag:{Damage:0,dropchance:6.0E-4d}}|||{id:"relics:midnight_robe",Count:1b,tag:{Damage:0,dropchance:6.0E-4d}}|||{id:"relics:bastion_ring",Count:1b,tag:{Damage:0,dropchance:2.0E-4d}}|||{id:"relics:chorus_inhibitor",Count:1b,tag:{Damage:0,dropchance:2.0E-4d}}|||{id:"relics:lucky_horseshoe",Count:1b,tag:{Damage:0,dropchance:2.0E-4d}}|||{id:"relics:jellyfish_necklace",Count:1b,tag:{Damage:0,dropchance:2.0E-4d}}|||{id:"relics:fragrant_flower",Count:1b,tag:{Damage:0,dropchance:2.0E-4d}}|||{id:"relics:ice_breaker",Count:1b,tag:{Damage:0,dropchance:2.0E-4d}}|||{id:"relics:horse_flute",Count:1b,tag:{Damage:0,dropchance:2.0E-4d}}|||{id:"relics:spider_necklace",Count:1b,tag:{Damage:0,dropchance:2.0E-4d}}|||{id:"relics:ice_skates",Count:1b,tag:{Damage:0,dropchance:2.0E-4d}}|||{id:"relics:rage_glove",Count:1b,tag:{Damage:0,dropchance:2.0E-4d}}|||{id:"relics:holy_locket",Count:1b,tag:{Damage:0,dropchance:2.0E-4d}}|||{id:"relics:slime_heart",Count:1b,tag:{Damage:0,dropchance:2.0E-4d}}|||{id:"relics:amphibian_boot",Count:1b,tag:{Damage:0,dropchance:2.0E-4d}}|||{id:"relics:scarab_talisman",Count:1b,tag:{Damage:0,dropchance:2.0E-4d}}|||{id:"relics:spatial_sign",Count:1b,tag:{Damage:0,dropchance:2.0E-4d}}|||{id:"relics:squire_bag",Count:1b,tag:{Damage:0,dropchance:2.0E-4d}}|||{id:"relics:ghost_skin_talisman",Count:1b,tag:{Damage:0,dropchance:2.0E-4d}}|||{id:"relics:magma_walker",Count:1b,tag:{Damage:0,dropchance:2.0E-4d}}|||{id:"relics:elytra_booster",Count:1b,tag:{Damage:0,dropchance:2.0E-4d}}|||{id:"relics:drowned_belt",Count:1b,tag:{Damage:0,dropchance:2.0E-4d}}|||{id:"relics:space_dissector",Count:1b,tag:{Damage:0,dropchance:7.5E-5d}}|||{id:"relics:blazing_flask",Count:1b,tag:{Damage:0,dropchance:7.5E-5d}}|||{id:"relics:stellar_catalyst",Count:1b,tag:{Damage:0,dropchance:7.5E-5d}}|||{id:"relics:reflection_necklace",Count:1b,tag:{Damage:0,dropchance:7.5E-5d}}|||{id:"relics:delay_ring",Count:1b,tag:{Damage:0,dropchance:7.5E-5d}}|||{id:"relics:out_runner",Count:1b,tag:{Damage:0,dropchance:2.0E-4d}}|||{id:"relics:soul_devourer",Count:1b,tag:{Damage:0,dropchance:7.5E-5d}}|||{id:"relics:shadow_glaive",Count:1b,tag:{charges:7,time:4,Damage:0,dropchance:7.5E-5d}}