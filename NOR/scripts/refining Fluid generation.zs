#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.Item;

var cat = VanillaFactory.createItem("catalyst");
cat.maxStackSize = 64;
cat.register();


//Biogas
if (!(loadedMods has "tconstruct")){
var bioname = ["dirt"] as string[];
var biocolour = ["6D4C41"] as string[];

for i,name in bioname{
	var zsFluid = VanillaFactory.createFluid(name, Color.fromHex(biocolour[i]));
	zsFluid.setDensity(4000);
	zsFluid.setViscosity(100);
	zsFluid.setTemperature(400);
	zsFluid.register();

}}




//oilmakers

var liquidsOilNamed= ["biogas","methan","hco_steam","tropsch", "moc", "bergius",] as string[];
var colorsOilNamed= ["6D4C41","D7CCC8","546E7A","7986CB","21007F","263238",] as string[];
for i,name in liquidsOilNamed{
	var zsFluid = VanillaFactory.createFluid(name, Color.fromHex(colorsOilNamed[i]));
	zsFluid.setDensity(4000);
	zsFluid.setViscosity(100);
	zsFluid.setTemperature(400);
	zsFluid.register();
}

//refining 

var liquidsref1Named=["sour_oilgas","sour_naphta","sour_kerosene","sour_dieseloil","sour_heavyoil","oil_waste"]as string[];
var colorsref1Named= ["FFBE00","FF6A00","FF0000","00FF21","FF7F7F","000000"] as string[];

for i,name in liquidsref1Named{
	var zsFluid = VanillaFactory.createFluid(name, Color.fromHex(colorsref1Named[i]));
	zsFluid.setDensity(4000);
	zsFluid.setViscosity(100);
	zsFluid.setTemperature(400);
	zsFluid.register();
}


var liquidsref2Named=["hycarb_gas","sour_natgas","natgas","sour_lpg","sour_water","treated_naphta","naphta_petr"] as string[];	
var colorsref2Named= ["7F92FF","FFE97F","7F0000","FF006E","FFE97F","FFE97F","FFB27F"] as string[];

for i,name in liquidsref2Named{
	var zsFluid = VanillaFactory.createFluid(name, Color.fromHex(colorsref2Named[i]));
	zsFluid.setDensity(4000);
	zsFluid.setViscosity(100);
	zsFluid.setTemperature(400);
	zsFluid.register();
}					

var liquidsref3Named=["dieseloil","heavyoil",
						"fcc_feed","lightvacgas","heavyvacgas","vacuum_residuum"] as string[];	
var colorsref3Named= ["00FF21","FF4747","A0A0A0","C0C0FF","7F3F3F","7F3F3F"] as string[];	

for i,name in liquidsref3Named{
	var zsFluid = VanillaFactory.createFluid(name, Color.fromHex(colorsref3Named[i]));
	zsFluid.setDensity(4000);
	zsFluid.setViscosity(100);
	zsFluid.setTemperature(400);
	zsFluid.register();
}										

var liquidsref4Named=["cracked_vacgas","cracked_gasoline","butane","coker","sodium_silicate","faujasite","cracked_fluid","spent_faujasite","pentene"] as string[];	
var colorsref4Named= ["7F3FD1","FFB27F","606060","303030","C0C0C0","C0C0C0","00137F","3F7F47","303030"] as string[];	

for i,name in liquidsref4Named{
	var zsFluid = VanillaFactory.createFluid(name, Color.fromHex(colorsref4Named[i]));
	zsFluid.setDensity(4000);
	zsFluid.setViscosity(100);
	zsFluid.setTemperature(400);
	zsFluid.register();
}	

var liquidsref5Named=["alkyl_petrol","alkyl_feed","fuel_oil","regen_faujasite","hydrogenisation","bergius_oil","Fischer_oil","karrick","coker_tar"] as string[];	
var colorsref5Named= ["FFB27F","303030","006363","3F7F47","FF00DC","822B00","21007F","5F3972","FFD800"] as string[];	

for i,name in liquidsref5Named{
	var zsFluid = VanillaFactory.createFluid(name, Color.fromHex(colorsref5Named[i]));
	zsFluid.setDensity(4000);
	zsFluid.setViscosity(100);
	zsFluid.setTemperature(400);
	zsFluid.register();
}

var bioNamed=["black_liquor","poor_feed","rich_bioblend","rich_feed","bio_oil"] as string[];	
var biocolors= ["003D07","008910","003504","00700B","2C442E"] as string[];	

for i,name in bioNamed{
	var zsFluid = VanillaFactory.createFluid(name, Color.fromHex(biocolors[i]));
	zsFluid.setDensity(4000);
	zsFluid.setViscosity(100);
	zsFluid.setTemperature(400);
	zsFluid.register();

var pressNamed=["pressurizedgasoline","pressurizedfueloil","pressurizedkerosene","pressurizeddiesel","pressurizedlpg"] as string[];	
var presscolor= ["00FF21","00FFFF","7FC9FF","00FF21","A17FFF","3500C6"] as string[];	

for i,name in pressNamed{
	var zsFluid = VanillaFactory.createFluid(name, Color.fromHex(presscolor[i]));
	zsFluid.setDensity(4000);
	zsFluid.setViscosity(40);
	zsFluid.setTemperature(400);
	zsFluid.register();
}




var turbineNamed=["hot_gasolinex","hot_lpgex","hot_dieselex","hot_fueloilex","hot_kerosenex","gasolinex","lpgex","dieselex","fueloilex","kerosenex","cold_gasolinex","cold_lpgex","cold_dieselex","cold_fueloilex","cold_kerosenex",
					"fired_gasolinex","fired_lpgex","fired_dieselex","fired_fueloilex","fired_kerosenex"] as string[];	
var turbinecolour= ["FF7FB6","546E7A","FF7F7F","00FFFF","00FF21","FF7FB6","546E7A","FF7F7F","00FFFF","00FF21","FF7FB6","546E7A","FF7F7F","00FFFF","00FF21","FF7FB6","546E7A","FF7F7F","00FFFF","00FF21"] as string[];	
var turbinetemperature= [750,900,1000,1100,1400,400,450,475,500,500,300,300,300,300,300,300,1000,1200,1300,1450,1850] as int[];

for i,name in turbineNamed{
	var zsFluid = VanillaFactory.createFluid(name, Color.fromHex(turbinecolour[i]));
	zsFluid.setDensity(4000);
	zsFluid.setViscosity(100);
	zsFluid.setTemperature(turbinetemperature[i]);
	zsFluid.register();
}





if (!(loadedMods has "pneumaticcraft")){
var bioname = ["lpg","kerosene","fuel"] as string[];
var biocolour = ["FF0000","7FC9FF","FFB27F"] as string[];

for i,name in bioname{
	var zsFluid = VanillaFactory.createFluid(name, Color.fromHex(biocolour[i]));
	zsFluid.setDensity(4000);
	zsFluid.setViscosity(100);
	zsFluid.setTemperature(400);
	zsFluid.register();

}}

if (!(loadedMods has "pneumaticcraft") && !(loadedMods has "immersivepetroleum")){
var bioname = ["diesel"] as string[];
var biocolour = ["00FF21"] as string[];

for i,name in bioname{
	var zsFluid = VanillaFactory.createFluid(name, Color.fromHex(biocolour[i]));
	zsFluid.setDensity(4000);
	zsFluid.setViscosity(100);
	zsFluid.setTemperature(400);
	zsFluid.register();

}}

