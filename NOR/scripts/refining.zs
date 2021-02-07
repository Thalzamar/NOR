import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.nuclearcraft.Centrifuge;
import mods.nuclearcraft.ChemicalReactor;
import mods.nuclearcraft.SaltMixer;
import mods.nuclearcraft.Enricher;
import mods.nuclearcraft.Turbine;
import mods.thermalexpansion.Refinery;
import mods.nuclearcraft.Melter;
import mods.nuclearcraft.Crystallizer;
import mods.nuclearcraft.FuelReprocessor;
import mods.nuclearcraft.Extractor;

if (!(loadedMods has "tconstruct")){
Melter.addRecipe(<ore:dirt>, <liquid:dirt>*144, 1.0, 1.0);
}

if ((loadedMods has "mekanism")){
Melter.addRecipe(<ore:itemBioFuel>, <liquid:biocrude>*100, 1.0, 1.0);
}


//Biogas
ChemicalReactor.addRecipe(<liquid:biocrude>*1000, <liquid:dirt>*1440, <liquid:biogas>*2000,<liquid:water>*250, 5.0, 1.0, 0.0);
Centrifuge.addRecipe(<liquid:biogas>*1000, <liquid:methan>*500, <liquid:carbon_dioxide>*400, <liquid:nitrogen>*100, <liquid:dirt>*144, null, null, 0.5, 1.0, 0.0); 



//Catalyst

FuelReprocessor.addRecipe(<ore:ingotTin>,<contenttweaker:catalyst>*64,null,null,null,null,null,null,null, 0.25, 15.0);
FuelReprocessor.addRecipe(<ore:ingotIron>,<contenttweaker:catalyst>*64,null,null,null,null,null,null,null, 0.25, 15.0);
FuelReprocessor.addRecipe(<ore:ingotNickel>,<contenttweaker:catalyst>*64,<contenttweaker:catalyst>*32,null,null,null,null,null,null, 0.25, 15.0);
FuelReprocessor.addRecipe(<ore:ingotGold>,<contenttweaker:catalyst>*64,<contenttweaker:catalyst>*64,null,null,null,null,null,null, 0.25, 15.0);
if(loadedMods has "tconstruct"){
FuelReprocessor.addRecipe(<ore:ingotArdite>,<contenttweaker:catalyst>*64,<contenttweaker:catalyst>*64,<contenttweaker:catalyst>*64,<contenttweaker:catalyst>*64,null,null,null,null, 0.25, 15.0);
}
if((loadedMods has "tconstruct") || (loadedMods has "qmd") ){
FuelReprocessor.addRecipe(<ore:ingotCobalt>,<contenttweaker:catalyst>*64,<contenttweaker:catalyst>*64,<contenttweaker:catalyst>*64,<contenttweaker:catalyst>*64,null,null,null,null, 0.25, 15.0);
}
FuelReprocessor.addRecipe(<ore:ingotPlatinum>,<contenttweaker:catalyst>*64,<contenttweaker:catalyst>*64,<contenttweaker:catalyst>*64,<contenttweaker:catalyst>*64,<contenttweaker:catalyst>*64,<contenttweaker:catalyst>*64,null,null, 0.25, 15.0);

//bergius

Enricher.addRecipe(<ore:dustCoal>, <liquid:heavyoil>*50, <liquid:moc>*300, 1.0, 25.0, 0.0);
Enricher.addRecipe(<contenttweaker:catalyst>*2, <liquid:moc>*5000, <liquid:bergius>*5000, 0.1, 50.0 );
SaltMixer.addRecipe(<liquid:bergius>*500, <liquid:hydrogen>*1000, <liquid:bergius_oil>*1000, 0.1, 50.0, 0.0);

//karrick

Enricher.addRecipe(<ore:dustCoal>, <liquid:steam>*100, <liquid:karrick>*1000, 120.0, 0.7, 0.0);
Enricher.addRecipe(<ore:dustCoal>, <liquid:low_pressure_steam>*100, <liquid:karrick>*1000, 120.0, 0.7, 0.0);
Enricher.addRecipe(<ore:dustCoal>, <liquid:high_pressure_steam>*25, <liquid:karrick>*1000, 120.0, 0.7, 0.0);

//Bio-Oil Hydrothermal liquefaction
Extractor.addRecipe(<ore:logWood>, <ore:itemBioblend>, <liquid:black_liquor>*1000, 1.25 , 10.0);
SaltMixer.addRecipe(<liquid:black_liquor>*500, <liquid:high_pressure_steam>*500,<liquid:poor_feed>*1000, 1.25 , 10.0);
SaltMixer.addRecipe(<liquid:black_liquor>*500, <liquid:gelatin>*500,<liquid:rich_bioblend>*1000, 1.25 , 10.0 );
SaltMixer.addRecipe(<liquid:rich_bioblend>*500, <liquid:high_pressure_steam>*500,<liquid:rich_feed>*1000, 1.25 , 10.0);
Enricher.addRecipe(<contenttweaker:catalyst>,<liquid:poor_feed>*1000,<liquid:bio_oil>*1000, 2.0 , 100.0)
Enricher.addRecipe(<contenttweaker:catalyst>,<liquid:rich_feed>*500,<liquid:bio_oil>*1000, 2.0 , 90.0)



//Synthgas
Enricher.addRecipe(<ore:coal>, <liquid:steam>*400, <liquid:hco_steam>*1000, 0.5, 1.0, 0.0);
Enricher.addRecipe(<ore:coal>, <liquid:low_pressure_steam>*400, <liquid:hco_steam>*1000, 0.5, 1.0, 0.0);
Enricher.addRecipe(<ore:coal>, <liquid:high_pressure_steam>*100, <liquid:hco_steam>*1000, 0.5, 1.0, 0.0);
Enricher.addRecipe(<ore:charcoal>, <liquid:steam>*400, <liquid:hco_steam>*1000, 0.5, 1.0, 0.0);
Enricher.addRecipe(<ore:charcoal>, <liquid:low_pressure_steam>*400, <liquid:hco_steam>*1000, 0.5, 1.0, 0.0);
Enricher.addRecipe(<ore:charcoal>, <liquid:high_pressure_steam>*100, <liquid:hco_steam>*1000, 0.5, 1.0, 0.0);
Enricher.addRecipe(<ore:fuelCoke>, <liquid:steam>*400, <liquid:hco_steam>*1000, 0.5, 1.0, 0.0);
Enricher.addRecipe(<ore:fuelCoke>, <liquid:low_pressure_steam>*400, <liquid:hco_steam>*1000, 0.5, 1.0, 0.0);
Enricher.addRecipe(<ore:fuelCoke>, <liquid:high_pressure_steam>*100, <liquid:hco_steam>*1000, 0.5, 1.0, 0.0);
Enricher.addRecipe(<ore:logWood>, <liquid:steam>*400, <liquid:hco_steam>*500, 0.5, 10.0, 0.0);
Enricher.addRecipe(<ore:logWood>, <liquid:low_pressure_steam>*400, <liquid:hco_steam>*500, 0.5, 10.0, 0.0);
Enricher.addRecipe(<ore:logWood>, <liquid:high_pressure_steam>*100, <liquid:hco_steam>*500, 0.5, 10.0, 0.0);
SaltMixer.addRecipe(<liquid:steam>*400, <liquid:methan>*600, <liquid:hco_steam>*2000, 0.5, 1.0, 0.0);
SaltMixer.addRecipe(<liquid:low_pressure_steam>*400, <liquid:methan>*600, <liquid:hco_steam>*2000, 0.5, 1.0, 0.0);
SaltMixer.addRecipe(<liquid:high_pressure_steam>*100, <liquid:methan>*600, <liquid:hco_steam>*2000, 0.5, 1.0, 0.0);
SaltMixer.addRecipe(<liquid:steam>*400, <liquid:carbon_dioxide>*600, <liquid:hco_steam>*1200, 0.5, 1.0, 0.0);
SaltMixer.addRecipe(<liquid:low_pressure_steam>*400, <liquid:carbon_dioxide>*600, <liquid:hco_steam>*1200, 0.5, 1.0, 0.0);
SaltMixer.addRecipe(<liquid:high_pressure_steam>*100, <liquid:carbon_dioxide>*600, <liquid:hco_steam>*1200, 0.5, 1.0, 0.0);
SaltMixer.addRecipe(<liquid:steam>*400, <liquid:carbon_monoxide>*600, <liquid:hco_steam>*1500, 0.5, 1.0, 0.0);
SaltMixer.addRecipe(<liquid:low_pressure_steam>*400,  <liquid:carbon_monoxide>*600, <liquid:hco_steam>*1500, 0.5, 1.0, 0.0);
SaltMixer.addRecipe(<liquid:high_pressure_steam>*100,  <liquid:carbon_monoxide>*600, <liquid:hco_steam>*1500,0.5, 1.0, 0.0);


//Fischer-Tropsch from Synthgas
Enricher.addRecipe(<contenttweaker:catalyst>*10, <liquid:hco_steam>*1000, <liquid:tropsch>*2500, 0.1, 75.0, 0.0);
ChemicalReactor.addRecipe(<liquid:tropsch>*1000, <liquid:methan>*2000, <liquid:fischer_oil>*1000,<liquid:water>*250, 0.5, 100.0, 0.0);



//Oil Refining
//fischer tropsch oil -> give more kerosene+diesel not sour
//bergius oil more naphta
Centrifuge.addRecipe(<liquid:crude_oil>*1000, <liquid:sour_oilgas>*400, <liquid:sour_naphta>*150, <liquid:sour_kerosene>*150, <liquid:sour_dieseloil>*100, <liquid:sour_heavyoil>*600, <liquid:oil_waste>*300, 2.0, 45.0, 0.0); 
Centrifuge.addRecipe(<liquid:bergius_oil>*1000, <liquid:lpg>*100, <liquid:refined_oil>*900, <liquid:heavyoil>*1000, <liquid:oil_waste>*500, null, null, 2.0, 45.0, 0.0); 
Centrifuge.addRecipe(<liquid:fischer_oil>*1000, <liquid:lpg>*200, <liquid:refined_oil>*100, <liquid:kerosene>*1100, <liquid:dieseloil>*700, <liquid:heavyoil>*500, null, 2.0, 45.0, 0.0); 
Centrifuge.addRecipe(<liquid:karrick>*1000, <liquid:lpg>*1000, <liquid:refined_oil>*500, <liquid:sour_kerosene>*500,<liquid:sour_heavyoil>*300, <liquid:oil_waste>*500,<liquid:hco_steam>*400 , 2.0, 50.0, 0.0); 
Centrifuge.addRecipe(<liquid:bio_oil>*1000, <liquid:lpg>*500, <liquid:refined_oil>*900, <liquid:kerosene>*1000, <liquid:heavyoil>*500, <liquid:vacuum_residuum>*500,<liquid:heavyvacgas>*500, 2.0, 45.0, 0.0); 


if((loadedMods has "immersivepetroleum")||(loadedMods has "pneumaticcraft")){
Centrifuge.addRecipe(<liquid:oil>*1000, <liquid:sour_oilgas>*400, <liquid:sour_naphta>*150, <liquid:sour_kerosene>*150, <liquid:sour_dieseloil>*100, <liquid:sour_heavyoil>*600, <liquid:oil_waste>*300, 2.0, 50.0, 0.0); 
}

//Sour_Oilgas
Centrifuge.addRecipe(<liquid:sour_oilgas>*1000, <liquid:sour_natgas>*900, <liquid:sour_lpg>*100, null, null, null, null, 0.75, 5.0, 0.0);
Centrifuge.addRecipe(<liquid:hycarb_gas>*1000, <liquid:sour_natgas>*750, <liquid:sour_lpg>*250, null, null, null, null, 0.75, 5.0, 0.0);
ChemicalReactor.addRecipe(<liquid:sour_oilgas>*1000, <liquid:hycarb_gas>*1000, <liquid:sour_natgas>*750,<liquid:sour_lpg>*1250, 0.25, 10.0, 0.0);
ChemicalReactor.addRecipe(<liquid:sour_natgas>*500, <liquid:potassium_hydroxide_solution>*100, <liquid:methan>*500,<liquid:sour_water>*100, 0.25, 10.0);
ChemicalReactor.addRecipe(<liquid:sour_lpg>*500, <liquid:potassium_hydroxide_solution>*100, <liquid:lpg>*500,<liquid:sour_water>*100,0.25, 10.0);
ChemicalReactor.addRecipe(<liquid:sour_natgas>*500, <liquid:sodium_hydroxide_solution>*100, <liquid:methan>*500,<liquid:sour_water>*100, 0.25, 10.0);
ChemicalReactor.addRecipe(<liquid:sour_lpg>*500, <liquid:sodium_hydroxide_solution>*100, <liquid:lpg>*500,<liquid:sour_water>*100,0.25, 10.0);

//Naphta Refining
ChemicalReactor.addRecipe(<liquid:sour_naphta>*1000, <liquid:potassium_hydroxide_solution>*5000, <liquid:refined_oil>*1000,<liquid:sour_water>*150, 0.25, 10.0, 0.0);
ChemicalReactor.addRecipe(<liquid:sour_naphta>*1000, <liquid:sodium_hydroxide_solution>*5000, <liquid:refined_oil>*1000,<liquid:sour_water>*150, 0.25, 10.0, 0.0);
ChemicalReactor.addRecipe(<liquid:refined_oil>*1000, <liquid:hydrogen>*100, <liquid:treated_naphta>*1000,<liquid:hycarb_gas>*250, 0.25, 10.0, 0.0);
ChemicalReactor.addRecipe(<liquid:treated_naphta>*1000, <liquid:hydrogen>*100, <liquid:naphta_petr>*1000,<liquid:hycarb_gas>*250, 0.25, 10.0, 0.0);

//Kerosene Refining
ChemicalReactor.addRecipe(<liquid:sour_kerosene>*500, <liquid:potassium_hydroxide_solution>*100, <liquid:kerosene>*500,<liquid:sour_water>*100, 0.25, 10.0);
ChemicalReactor.addRecipe(<liquid:sour_kerosene>*500, <liquid:sodium_hydroxide_solution>*100, <liquid:kerosene>*500,<liquid:sour_water>*100, 0.25, 10.0);

//Diesel
ChemicalReactor.addRecipe(<liquid:sour_dieseloil>*500, <liquid:potassium_hydroxide_solution>*100, <liquid:dieseloil>*500,<liquid:sour_water>*100, 0.25, 10.0);
ChemicalReactor.addRecipe(<liquid:sour_dieseloil>*500, <liquid:sodium_hydroxide_solution>*100, <liquid:dieseloil>*500,<liquid:sour_water>*100, 0.25, 10.0);
ChemicalReactor.addRecipe(<liquid:dieseloil>*1000, <liquid:hydrogen>*100, <liquid:diesel>*1000,<liquid:hycarb_gas>*250, 0.25, 10.0, 0.0);

//Heavy Oil
ChemicalReactor.addRecipe(<liquid:sour_heavyoil>*500, <liquid:potassium_hydroxide_solution>*100, <liquid:heavyoil>*500,<liquid:sour_water>*100, 0.25, 10.0);
ChemicalReactor.addRecipe(<liquid:sour_heavyoil>*500, <liquid:sodium_hydroxide_solution>*100, <liquid:heavyoil>*500,<liquid:sour_water>*100, 0.25, 10.0);
ChemicalReactor.addRecipe(<liquid:heavyoil>*500, <liquid:hydrogen>*100, <liquid:fcc_feed>*500,<liquid:hycarb_gas>*250, 0.25, 10.0);

//Oil Waste
Centrifuge.addRecipe(<liquid:oil_waste>*1000, <liquid:lightvacgas>*500, <liquid:heavyvacgas>*700, <liquid:vacuum_residuum>*300, <liquid:sour_water>*100, null, null, 1.0, 5.0, 0.0);

ChemicalReactor.addRecipe(<liquid:lightvacgas>*500, <liquid:hydrogen>*100, <liquid:fcc_feed>*500,<liquid:hycarb_gas>*250, 0.25, 10.0);
ChemicalReactor.addRecipe(<liquid:heavyvacgas>*500, <liquid:hydrogen>*100, <liquid:cracked_vacgas>*500,<liquid:hycarb_gas>*250, 0.25, 10.0);
Centrifuge.addRecipe(<liquid:cracked_vacgas>*1000, <liquid:cracked_gasoline>*300, <liquid:diesel>*600, <liquid:butane>*700, null, null, null, 0.25, 10.0, 0.0); 
SaltMixer.addRecipe(<liquid:vacuum_residuum>*500, <liquid:high_pressure_steam>*100, <liquid:coker>*1000, 0.25, 10.0);
Centrifuge.addRecipe(<liquid:coker>*1000, <liquid:hycarb_gas>*500, <liquid:fuel_oil>*700, <liquid:refined_oil>*250, <liquid:coker_tar>*144, null, null, 0.25, 10.0, 0.0); 
Crystallizer.addRecipe(<liquid:coker_tar>*144, <ore:fuelCoke>);

//Fluid Catalytic Cracking (FCC)
Enricher.addRecipe(<ore:itemSilicon>, <liquid:sodium_hydroxide_solution>*200, <liquid:sodium_silicate>*200 , 0.25, 10.0);
Enricher.addRecipe(<ore:ingotAluminium>, <liquid:sodium_silicate>*300, <liquid:faujasite>*300 , 0.25, 10.0);
//insert once heat-exchanger are implemented  steam production
// spent + O2 -> regenerated + hot Co/Co2 -> HX Co
//regen + Silicon -> faujasite
ChemicalReactor.addRecipe(<liquid:fcc_feed>*1000,<liquid:faujasite>*100,<liquid:cracked_fluid>*1500, <liquid:spent_faujasite>*100, 0.25, 10.0);
ChemicalReactor.addRecipe(<liquid:spent_faujasite>*100,<liquid:water>*500,<liquid:regen_faujasite>*100, <liquid:steam>*1000, 0.25, 10.0);
Centrifuge.addRecipe(<liquid:cracked_fluid>*1000, <liquid:hycarb_gas>*500, <liquid:fuel_oil>*700, <liquid:refined_oil>*200, <liquid:pentene>*200, null, null, 0.25, 10.0, 0.0); 
Enricher.addRecipe(<ore:itemSilicon>, <liquid:regen_faujasite>*1500, <liquid:faujasite>*1500 , 0.25, 10.0);


//Alkylation
ChemicalReactor.addRecipe(<liquid:butane>*1000,<liquid:sulfuric_acid>*100,<liquid:alkyl_petrol>*750, <liquid:hycarb_gas>*250, 0.25, 10.0);
ChemicalReactor.addRecipe(<liquid:butane>*1000,<liquid:hydrofluoric_acid>*100,<liquid:alkyl_petrol>*750, <liquid:hycarb_gas>*250, 0.25, 10.0);
ChemicalReactor.addRecipe(<liquid:pentene>*1000,<liquid:sulfuric_acid>*100,<liquid:alkyl_petrol>*750, <liquid:hycarb_gas>*250, 0.25, 10.0);
ChemicalReactor.addRecipe(<liquid:pentene>*1000,<liquid:hydrofluoric_acid>*100,<liquid:alkyl_petrol>*750, <liquid:hycarb_gas>*250, 0.25, 10.0);
SaltMixer.addRecipe(<liquid:butane>*500, <liquid:pentene>*500, <liquid:alkyl_feed>*1250, 0.25, 10.0);
ChemicalReactor.addRecipe(<liquid:alkyl_feed>*1000,<liquid:sulfuric_acid>*50,<liquid:alkyl_petrol>*750, <liquid:hycarb_gas>*250, 0.25, 10.0);
ChemicalReactor.addRecipe(<liquid:alkyl_feed>*1000,<liquid:hydrofluoric_acid>*50,<liquid:alkyl_petrol>*750, <liquid:hycarb_gas>*250, 0.25, 10.0);

//Petrol Mixing
SaltMixer.addRecipe(<liquid:naphta_petr>*500,<liquid:high_pressure_steam>*500,<liquid:pressurizedgasoline>*10000, 0.2, 1.0);
SaltMixer.addRecipe(<liquid:cracked_gasoline>*500,<liquid:high_pressure_steam>*500,<liquid:pressurizedgasoline>*10000, 0.2, 1.0);
SaltMixer.addRecipe(<liquid:alkyl_petrol>*500,<liquid:high_pressure_steam>*500,<liquid:pressurizedgasoline>*10000, 0.2, 1.0);
SaltMixer.addRecipe(<liquid:fuel>*500,<liquid:high_pressure_steam>*500,<liquid:pressurizedgasoline>*10000, 0.2, 1.0);

SaltMixer.addRecipe(<liquid:naphta_petr>*1000,<liquid:cracked_gasoline>*1000,<liquid:fuel>*2250, 0.25, 10.0);
SaltMixer.addRecipe(<liquid:naphta_petr>*1000,<liquid:alkyl_petrol>*1000,<liquid:fuel>*2250, 0.25, 10.0);
SaltMixer.addRecipe(<liquid:cracked_gasoline>*1000,<liquid:alkyl_petrol>*1000,<liquid:fuel>*2250, 0.25, 10.0);



//Steam Reforming -> Hydrogen 
ChemicalReactor.addRecipe(<liquid:methan>*500, <liquid:carbon_dioxide>*250, <liquid:hydrogen>*750,<liquid:carbon_monoxide>*750, 0.25, 10.0);
ChemicalReactor.addRecipe(<liquid:methan>*500, <liquid:steam>*250, <liquid:hydrogen>*1000,<liquid:carbon_monoxide>*500, 0.25, 10.0);
ChemicalReactor.addRecipe(<liquid:methan>*500, <liquid:low_pressure_steam>*250, <liquid:hydrogen>*1000,<liquid:carbon_monoxide>*500, 0.25, 10.0);
ChemicalReactor.addRecipe(<liquid:carbon_monoxide>*250, <liquid:steam>*250, <liquid:hydrogen>*250,<liquid:carbon_dioxide>*250, 0.5, 10.0);
ChemicalReactor.addRecipe(<liquid:carbon_monoxide>*250, <liquid:low_pressure_steam>*250, <liquid:hydrogen>*250,<liquid:carbon_dioxide>*250, 0.5, 10.0);
ChemicalReactor.addRecipe(<liquid:carbon_monoxide>*300, <liquid:high_pressure_steam>*75, <liquid:hydrogen>*300,<liquid:carbon_dioxide>*300, 0.5, 10.0);

//Sour Treatment
ChemicalReactor.addRecipe(<liquid:sour_water>*500, <liquid:steam>*250, <liquid:steam>*500,<liquid:sulfur>*333, 1.0, 10.0);
ChemicalReactor.addRecipe(<liquid:sour_water>*500, <liquid:low_pressure_steam>*250, <liquid:steam>*500,<liquid:sulfur>*333, 1.0, 10.0);
ChemicalReactor.addRecipe(<liquid:sour_water>*2000, <liquid:high_pressure_steam>*125, <liquid:steam>*2000,<liquid:sulfur>*1332, 1.0, 10.0);

//Combustion Fuel
SaltMixer.addRecipe(<liquid:high_pressure_steam>*500, <liquid:lpg>*500, <liquid:pressurizedlpg>*11000, 0.2, 1.0, 0.0);
SaltMixer.addRecipe(<liquid:high_pressure_steam>*500, <liquid:kerosene>*500, <liquid:pressurizedkerosene>*11000, 0.2, 1.0, 0.0);
SaltMixer.addRecipe(<liquid:high_pressure_steam>*500, <liquid:diesel>*500, <liquid:pressurizeddiesel>*11000, 0.2, 1.0, 0.0);
SaltMixer.addRecipe(<liquid:high_pressure_steam>*500, <liquid:fuel_oil>*500, <liquid:pressurizedfueloil>*11000, 0.2, 1.0, 0.0);

//Turbines
Turbine.addRecipe(<liquid:methan>, <liquid:carbon_dioxide>*4, 16.00, 8.00); 
Turbine.addRecipe(<liquid:pressurizedlpg>, <liquid:hot_lpgex>*16, 45.00, 16.00); //30
Turbine.addRecipe(<liquid:pressurizedkerosene>, <liquid:hot_kerosenex>*18, 100.00, 18.00); //60
Turbine.addRecipe(<liquid:pressurizeddiesel>, <liquid:hot_dieselex>*18, 65.00, 18.00); //45
Turbine.addRecipe(<liquid:pressurizedfueloil>, <liquid:hot_fueloilex>*14, 55.00, 14.00); //35
Turbine.addRecipe(<liquid:pressurizedgasoline>, <liquid:hot_gasolinex>*12, 40.00, 12.00); //25
Turbine.addRecipe(<liquid:hco_steam>, <liquid:carbon_monoxide>*8, 18.00, 8.00);


//ingame:
//hot 750,900,1000,1100,1400
//radiating 400,450,475,500,500
//cold 300
//with C
//gasoline 450C -> 100C exhausted (boiler heating) 350
//lpg heat 600C -> 150C exhausted (boiler heating) 450
//diesel 700C -> 175C exhausted (boiler heating) 525
//fuel oil 800C -> 200C (boiler heating) 600mb
//jet engine 1100C -> 200C (boiler heating) 900mb



//HX
ChemicalReactor.addRecipe(<liquid:hot_gasolinex>*10, <liquid:water>*1750, <liquid:gasolinex>*10,<liquid:high_pressure_steam>*7000, 0.01, 0.0);
ChemicalReactor.addRecipe(<liquid:hot_lpgex>*10, <liquid:water>*2250, <liquid:lpgex>*10,<liquid:high_pressure_steam>*9000, 0.01, 0.0);
ChemicalReactor.addRecipe(<liquid:hot_dieselex>*10, <liquid:water>*2630, <liquid:dieselex>*10,<liquid:high_pressure_steam>*11520, 0.01, 0.0);
ChemicalReactor.addRecipe(<liquid:hot_fueloilex>*10, <liquid:water>*3000, <liquid:dieselex>*10,<liquid:high_pressure_steam>*12000, 0.01, 0.0);
ChemicalReactor.addRecipe(<liquid:hot_kerosenex>*5, <liquid:water>*2250, <liquid:kerosenex>*5,<liquid:high_pressure_steam>*11250, 0.01, 0.0);

ChemicalReactor.addRecipe(<liquid:gasolinex>*10, <liquid:water>*31, <liquid:cold_gasolinex>*10,<liquid:preheated_water>*31, 0.01, 0.0);
ChemicalReactor.addRecipe(<liquid:lpgex>*10, <liquid:water>*47, <liquid:cold_lpgex>*10,<liquid:preheated_water>*47, 0.01, 0.0);
ChemicalReactor.addRecipe(<liquid:dieselex>*10, <liquid:water>*55, <liquid:cold_dieselex>*10,<liquid:preheated_water>*55, 0.01, 0.0);
ChemicalReactor.addRecipe(<liquid:fueloilex>*10, <liquid:water>*63, <liquid:cold_fueloilex>*10,<liquid:preheated_water>*63, 0.01, 0.0);
ChemicalReactor.addRecipe(<liquid:kerosenex>*10, <liquid:water>*63, <liquid:cold_kerosenex>*10,<liquid:preheated_water>*63, 0.01, 0.0);

Centrifuge.addRecipe(<liquid:gasolinex>*1000, <liquid:steam>*100, <liquid:carbon_dioxide>*100, <liquid:nitrogen>*300, <liquid:carbon_monoxide>*500, <liquid:water>*100, <liquid:sulfur_dioxide>*100, 0.25, 10.0, 0.0); 
Centrifuge.addRecipe(<liquid:lpgex>*1000, <liquid:steam>*150, <liquid:carbon_dioxide>*100, <liquid:nitrogen>*300, <liquid:carbon_monoxide>*500, <liquid:water>*100, <liquid:sulfur_dioxide>*100, 0.25, 10.0, 0.0); 
Centrifuge.addRecipe(<liquid:dieselex>*1000, <liquid:steam>*175, <liquid:carbon_dioxide>*100, <liquid:nitrogen>*300, <liquid:carbon_monoxide>*500, <liquid:water>*100, <liquid:sulfur_dioxide>*100, 0.25, 10.0, 0.0); 
Centrifuge.addRecipe(<liquid:fueloilex>*1000, <liquid:steam>*200, <liquid:carbon_dioxide>*100, <liquid:nitrogen>*300, <liquid:carbon_monoxide>*500, <liquid:water>*100, <liquid:sulfur_dioxide>*100, 0.25, 10.0, 0.0); 
Centrifuge.addRecipe(<liquid:kerosenex>*1000, <liquid:steam>*200, <liquid:carbon_dioxide>*100, <liquid:nitrogen>*300, <liquid:carbon_monoxide>*500, <liquid:water>*100, <liquid:sulfur_dioxide>*100, 0.25, 10.0, 0.0); 

Centrifuge.addRecipe(<liquid:cold_gasolinex>*1000,  <liquid:carbon_dioxide>*500, <liquid:nitrogen>*300, <liquid:carbon_monoxide>*200, <liquid:water>*300,<liquid:sulfur_dioxide>*100, null, 0.25, 10.0, 0.0); 
Centrifuge.addRecipe(<liquid:cold_lpgex>*1000,  <liquid:carbon_dioxide>*500, <liquid:nitrogen>*300, <liquid:carbon_monoxide>*200, <liquid:water>*300, <liquid:sulfur_dioxide>*100, null, 0.25, 10.0, 0.0); 
Centrifuge.addRecipe(<liquid:cold_dieselex>*1000,  <liquid:carbon_dioxide>*500, <liquid:nitrogen>*300, <liquid:carbon_monoxide>*200, <liquid:water>*300, <liquid:sulfur_dioxide>*100, null, 0.25, 10.0, 0.0); 
Centrifuge.addRecipe(<liquid:cold_fueloilex>*1000,  <liquid:carbon_dioxide>*500, <liquid:nitrogen>*300, <liquid:carbon_monoxide>*200, <liquid:water>*300, <liquid:sulfur_dioxide>*100, null, 0.25, 10.0, 0.0); 
Centrifuge.addRecipe(<liquid:cold_kerosenex>*1000,  <liquid:carbon_dioxide>*500, <liquid:nitrogen>*300, <liquid:carbon_monoxide>*200, <liquid:water>*300, <liquid:sulfur_dioxide>*100, null, 0.25, 10.0, 0.0); 

//firing exhaust for secondary turbine increases efficiency 

//Methan+Exhaust heat 1.33
//1000,1200,1300,1450,1850
//gasoline 700C
//lpg 900C
//diesel  1000
//fuel oil 1140C
//kerosine 1550C
//radiating 400,450,475,500,500
// 600(300mb), 750 (375mb), 825(413mb),950 (475mb),1350(675mb) 

SaltMixer.addRecipe(<liquid:hot_gasolinex>*100, <liquid:methan>*200, <liquid:fired_gasolinex>*100, 0.2, 1.0, 0.0);
SaltMixer.addRecipe(<liquid:hot_lpgex>*100, <liquid:methan>*200, <liquid:fired_lpgex>*100, 0.2, 1.0, 0.0);
SaltMixer.addRecipe(<liquid:hot_dieselex>*100, <liquid:methan>*200, <liquid:fired_dieselex>*100, 0.2, 1.0, 0.0);
SaltMixer.addRecipe(<liquid:hot_fueloilex>*100, <liquid:methan>*200, <liquid:fired_fueloilex>*100, 0.2, 1.0, 0.0);
SaltMixer.addRecipe(<liquid:hot_kerosenex>*100, <liquid:methan>*200, <liquid:fired_kerosenex>*100, 0.2, 1.0, 0.0);

ChemicalReactor.addRecipe(<liquid:fired_gasolinex>*10, <liquid:water>*3000, <liquid:gasolinex>*10,<liquid:high_pressure_steam>*12000, 0.01, 0.0);
ChemicalReactor.addRecipe(<liquid:fired_lpgex>*5, <liquid:water>*1875, <liquid:lpgex>*5,<liquid:high_pressure_steam>*7500, 0.01, 0.0);
ChemicalReactor.addRecipe(<liquid:fired_dieselex>*5, <liquid:water>*2065, <liquid:dieselex>*5,<liquid:high_pressure_steam>*8260, 0.01, 0.0);
ChemicalReactor.addRecipe(<liquid:fired_fueloilex>*5, <liquid:water>*2375, <liquid:dieselex>*5,<liquid:high_pressure_steam>*9500, 0.01, 0.0);
ChemicalReactor.addRecipe(<liquid:fired_kerosenex>*5, <liquid:water>*3375, <liquid:kerosenex>*5,<liquid:high_pressure_steam>*13500, 0.01, 0.0);

//H2+co2/co+ruthenium -> CH4 
SaltMixer.addRecipe(<liquid:carbon_dioxide>*100, <liquid:hydrogen>*200, <liquid:hydrogenisation>*100, 0.25, 10.0);
SaltMixer.addRecipe(<liquid:carbon_monoxide>*100, <liquid:hydrogen>*200, <liquid:hydrogenisation>*100, 0.25, 5.0);
SaltMixer.addRecipe(<liquid:hydrogenisation>*100, <liquid:ruthenium_106>*2, <liquid:methan>*100, 0.25, 100.0);
