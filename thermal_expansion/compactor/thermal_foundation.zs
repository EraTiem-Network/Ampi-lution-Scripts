import crafttweaker.item.IItemStack;

/* Adjust all plate recipes to 2 inputs */

val items = {
	<minecraft:iron_ingot> : <thermalfoundation:material:32>,
	<minecraft:gold_ingot> : <thermalfoundation:material:33>,
	<thermalfoundation:material:128> : <thermalfoundation:material:320>,
	<thermalfoundation:material:129> : <thermalfoundation:material:321>,
	<thermalfoundation:material:130> : <thermalfoundation:material:322>,
	<thermalfoundation:material:131> : <thermalfoundation:material:323>,
	<thermalfoundation:material:132> : <thermalfoundation:material:324>,
	<thermalfoundation:material:133> : <thermalfoundation:material:325>,
	<thermalfoundation:material:134> : <extraplanets:tier11_items:6>,
	<thermalfoundation:material:135> : <thermalfoundation:material:327>,
	<thermalfoundation:material:136> : <thermalfoundation:material:328>,
	<thermalfoundation:material:160> : <thermalfoundation:material:352>,
	<thermalfoundation:material:161> : <thermalfoundation:material:353>,
	<thermalfoundation:material:162> : <thermalfoundation:material:354>,
	<thermalfoundation:material:163> : <thermalfoundation:material:355>,
	<thermalfoundation:material:164> : <thermalfoundation:material:356>,
	<thermalfoundation:material:165> : <thermalfoundation:material:357>,
	<thermalfoundation:material:166> : <thermalfoundation:material:358>,
	<thermalfoundation:material:167> : <thermalfoundation:material:359>
} as IItemStack[IItemStack];

for input, output in items {
	remTEComp(input);
	addTEComp(output, input * 2, 6000);
}