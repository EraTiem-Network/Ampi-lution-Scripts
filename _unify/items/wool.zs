import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

/* OreDict blockWool to wool */

replAll(<ore:blockWool>, <ore:wool>);


/* blockWool to wool */

for item in <ore:blockWool>.items {
	<ore:wool>.add(item);
}

<ore:blockWool>.removeItems(<ore:blockWool>.items);

/* New quiltedWool OreDict */

<ore:quiltedWool>.addItems([<quark:quilted_wool:0>, <quark:quilted_wool:1>,
							<quark:quilted_wool:2>, <quark:quilted_wool:3>,
							<quark:quilted_wool:4>, <quark:quilted_wool:5>,
							<quark:quilted_wool:6>, <quark:quilted_wool:7>,
							<quark:quilted_wool:8>, <quark:quilted_wool:9>,
							<quark:quilted_wool:10>, <quark:quilted_wool:11>,
							<quark:quilted_wool:12>, <quark:quilted_wool:13>,
							<quark:quilted_wool:14>, <quark:quilted_wool:15>]);


/* New coloredWool OreDict */
<ore:coloredWool>.addAll(<ore:wool>);
<ore:coloredWool>.removeItems([<minecraft:wool:0>, <chisel:wool_white:0>, <chisel:wool_white:1>, <quark:quilted_wool:0>]);


/* blockWool to Wool | Add Chisel and Quilted Wool */

function replWool(fromDict as IOreDictEntry, toDict as IOreDictEntry) {
	replAll(fromDict, toDict);
	toDict.addAll(fromDict);
	fromDict.removeItems(fromDict.items);
}

// White
replWool(<ore:blockWoolWhite>, <ore:woolWhite>);
<ore:woolWhite>.addItems([<chisel:wool_white:0>, <chisel:wool_white:1>, ]);
replAll(<minecraft:wool:0>, <ore:woolWhite>);

// Orange
replWool(<ore:blockWoolOrange>, <ore:woolOrange>);
<ore:woolOrange>.addItems([<chisel:wool_orange:0>, <chisel:wool_orange:1>]);
replAll(<minecraft:wool:1>, <ore:woolOrange>);

// Mangenta
replWool(<ore:blockWoolMagenta>, <ore:woolMagenta>);
<ore:woolMagenta>.addItems([<chisel:wool_magenta:0>, <chisel:wool_magenta:1>]);
replAll(<minecraft:wool:2>, <ore:woolMagenta>);

// Light Blue
replWool(<ore:blockWoolLightBlue>, <ore:woolLightBlue>);
<ore:woolLightBlue>.addItems([<chisel:wool_lightblue:0>, <chisel:wool_lightblue:1>]);
replAll(<minecraft:wool:3>, <ore:woolLightBlue>);

// Yellow
replWool(<ore:blockWoolYellow>, <ore:woolYellow>);
<ore:woolYellow>.addItems([<chisel:wool_yellow:0>, <chisel:wool_yellow:1>]);
replAll(<minecraft:wool:4>, <ore:woolYellow>);

// Lime
replWool(<ore:blockWoolLime>, <ore:woolLime>);
<ore:woolLime>.addItems([<chisel:wool_lime:0>, <chisel:wool_lime:1>]);
replAll(<minecraft:wool:5>, <ore:woolLime>);

// Pink
replWool(<ore:blockWoolPink>, <ore:woolPink>);
<ore:woolPink>.addItems([<chisel:wool_pink:0>, <chisel:wool_pink:1>]);
replAll(<minecraft:wool:6>, <ore:woolPink>);

// Gray
replWool(<ore:blockWoolGray>, <ore:woolGray>);
<ore:woolGray>.addItems([<chisel:wool_gray:0>, <chisel:wool_gray:1>]);
replAll(<minecraft:wool:7>, <ore:woolGray>);

// Light Gray
replWool(<ore:blockWoolLightGray>, <ore:woolLightGray>);
<ore:woolLightGray>.addItems([<chisel:wool_lightgray:0>, <chisel:wool_lightgray:1>]);
replAll(<minecraft:wool:8>, <ore:woolLightGray>);

// Cyan
replWool(<ore:blockWoolCyan>, <ore:woolCyan>);
<ore:woolCyan>.addItems([<chisel:wool_cyan:0>, <chisel:wool_cyan:1>]);
replAll(<minecraft:wool:9>, <ore:woolCyan>);

// Purple
replWool(<ore:blockWoolPurple>, <ore:woolPurpe>);
<ore:woolPurple>.addItems([<chisel:wool_purple:0>, <chisel:wool_purple:1>]);
replAll(<minecraft:wool:10>, <ore:woolPurple>);

// Blue
replWool(<ore:blockWoolBlue>, <ore:woolBlue>);
<ore:woolBlue>.addItems([<chisel:wool_blue:0>, <chisel:wool_blue:1>]);
replAll(<minecraft:wool:11>, <ore:woolBlue>);

// Brown
replWool(<ore:blockWoolBrown>, <ore:woolBrown>);
<ore:woolBrown>.addItems([<chisel:wool_brown:0>, <chisel:wool_brown:1>]);
replAll(<minecraft:wool:12>, <ore:woolBrown>);

// Green
replWool(<ore:blockWoolGreen>, <ore:woolGreen>);
<ore:woolGreen>.addItems([<chisel:wool_green:0>, <chisel:wool_green:1>]);
replAll(<minecraft:wool:13>, <ore:woolGreen>);

// Red
replWool(<ore:blockWoolRed>, <ore:woolRed>);
<ore:woolRed>.addItems([<chisel:wool_red:0>, <chisel:wool_red:1>]);
replAll(<minecraft:wool:14>, <ore:woolRed>);

// Black
replWool(<ore:blockWoolBlack>, <ore:woolBlack>);
<ore:woolBlack>.addItems([<chisel:wool_black:0>, <chisel:wool_black:1>]);
replAll(<minecraft:wool:15>, <ore:woolBlack>);


/* Furnace: All Wool as Fuel */

addFurFuel(<ore:wool>, 100);


/* Pulverizer and SAG Mill */

val mcWools = [	<minecraft:wool:0>, <minecraft:wool:1>, <minecraft:wool:2>,
				<minecraft:wool:3>, <minecraft:wool:4>, <minecraft:wool:5>,
				<minecraft:wool:6>, <minecraft:wool:7>, <minecraft:wool:8>,
				<minecraft:wool:9>, <minecraft:wool:10>, <minecraft:wool:11>,
				<minecraft:wool:12>, <minecraft:wool:13>, <minecraft:wool:14>,
				<minecraft:wool:15>] as IItemStack[];
val oreColorWool = [<ore:woolWhite>, <ore:woolOrange>, <ore:woolMagenta>,
					<ore:woolLightBlue>, <ore:woolYellow>, <ore:woolGreen>,
					<ore:woolPink>, <ore:woolGray>, <ore:woolLightGray>,
					<ore:woolCyan>, <ore:woolPurple>, <ore:woolBlue>,
					<ore:woolBrown>, <ore:woolGreen>, <ore:woolRed>,
					<ore:woolBlack>] as IOreDictEntry[];
val pigmentColors = [	<thermalfoundation:dye:15>, <thermalfoundation:dye:14>,
						<thermalfoundation:dye:13>, <thermalfoundation:dye:12>,
						<thermalfoundation:dye:11>, <thermalfoundation:dye:10>,
						<thermalfoundation:dye:9>, <thermalfoundation:dye:8>,
						<thermalfoundation:dye:7>, <thermalfoundation:dye:6>,
						<thermalfoundation:dye:5>, <thermalfoundation:dye:4>,
						<thermalfoundation:dye:3>, <thermalfoundation:dye:2>,
						<thermalfoundation:dye:1>, <thermalfoundation:dye:0>
					] as IItemStack[];

remEnderSAG(<minecraft:wool:0>);

for i in 0 to 16 {
	remTEPulv(mcWools[i]);
	for item in oreColorWool[i].items {
		addTEPulvSec(<minecraft:string> * 4, item, 3000, pigmentColors[i], 15);
	}
	addEnderSAG([(<minecraft:string> * 3) .weight(1), <minecraft:string>.weight(0.1), pigmentColors[i].weight(0.15)], oreColorWool[i], "CHANCE_ONLY", 1200);

	remTEPulv(<ore:quiltedWool>.items[i]);
	addTEPulvSec(<minecraft:string> * 4, <ore:quiltedWool>.items[i], 3000, pigmentColors[i], 15);
	addEnderSAG([(<minecraft:string> * 3) .weight(1), <minecraft:string>.weight(0.1), pigmentColors[i].weight(0.15)], <ore:quiltedWool>.items[i], "CHANCE_ONLY", 1200);
}


/* Alloy Smelter */

remEnderAlSm(<enderio:block_industrial_insulation:0>);
addEnderAlSm(<enderio:block_industrial_insulation:0>, [<enderio:item_material:32>, <ore:woolWhite>, <thermalfoundation:material:65>], 5000, 0);

// Galaticraft Red Wool... Sadly there is no CT way to edit that. Let me know if you found a CT possibility to edit this.  :)
// GalacticraftTweaker, NASATweaker and GalaxySpace's integration of CT do not hava a Function to edit NASA Workbench Recipes :/