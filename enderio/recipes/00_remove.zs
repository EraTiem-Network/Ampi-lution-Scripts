import mods.jei.JEI.removeAndHide as hide;
import crafttweaker.item.IItemStack;

// Hide and remove from Creative Tab

val items = [
  <enderio:block_tele_pad>,
  <enderio:block_transceiver>,
  <enderio:block_solar_panel:0>,
  <enderio:block_solar_panel:1>,
  <enderio:block_solar_panel:2>,
  <enderio:block_solar_panel:3>,
  <enderio:block_vacuum_chest>,
  <enderio:block_xp_vacuum>,
  <enderio:block_travel_anchor>,
  <enderio:item_material:9>,
  <enderio:item_material:10>,
  <enderio:item_material:5>,
  <enderio:item_material:33>,
  <enderio:item_material:39>
] as IItemStack[];

for i in items {
	hide(i);
	i.definition.creativeTab = null;
}