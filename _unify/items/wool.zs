import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

/* OreDict blockWool to wool */

replAll(<ore:blockWool>, <ore:wool>);


/* blockWool to wool */

for item in <ore:blockWool>.items {
	<ore:wool>.add(item);
}

<ore:blockWool>.removeItems(<ore:blockWool>.items);

/* New coloredWool OreDict */
<ore:coloredWool>.addAll(<ore:wool>);
<ore:coloredWool>.removeItems([<minecraft:wool:0>, <chisel:wool_white:0>, <chisel:wool_white:1>]);


/* blockWool to Wool */

function replWool(fromDict as IOreDictEntry, toDict as IOreDictEntry) {
	replAll(fromDict, toDict);
	toDict.addAll(fromDict);
	fromDict.removeItems(fromDict.items);
}

// White
replWool(<ore:blockWoolWhite>, <ore:woolWhite>);
<ore:woolWhite>.addItems([<chisel:wool_white:0>, <chisel:wool_white:1>]);
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


/* TO-DO: Machines */