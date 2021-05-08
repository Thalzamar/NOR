#modloaded immersivepetroleum

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.nuclearcraft.Centrifuge;
import mods.nuclearcraft.ChemicalReactor;
import mods.nuclearcraft.SaltMixer;
import mods.nuclearcraft.Enricher;
import mods.nuclearcraft.Turbine;
import mods.nuclearcraft.Melter;
import mods.nuclearcraft.Crystallizer;
import mods.nuclearcraft.FuelReprocessor;
import mods.nuclearcraft.Extractor;
import mods.nuclearcraft.Manufactory;
import mods.nuclearcraft.IngotFormer;
import mods.nuclearcraft.Supercooler;
import mods.immersivepetroleum.Distillation;

//oil recipes
Enricher.addRecipe(<contenttweaker:catalyst>,<liquid:oil>*10000,<liquid:catalyst_oil>*10000,0.5);
Enricher.addRecipe(<contenttweaker:catalyst>,<liquid:crude_oil>*10000,<liquid:catalyst_oil>*10000,0.5);
Distillation.addRecipe([<liquid:sour_oilgas>*400, <liquid:sour_naphta>*150, <liquid:sour_kerosene>*150, <liquid:sour_dieseloil>*100, <liquid:sour_heavyoil>*600, <liquid:oil_waste>*300], [<ore:fuelCoke>.firstItem], <liquid:catalyst_oil>*1000, 100000, 100, [0.05]);
Distillation.addRecipe([ <liquid:lpg>*100,<liquid:methan>*100, <liquid:refined_oil>*900, <liquid:heavyoil>*1000, <liquid:oil_waste>*1500, <liquid:hco_steam>*500, <liquid:coker_tar>*144], [<ore:fuelCoke>.firstItem], <liquid:bergius_oil>*1000, 100000, 100, [1.0]);
Distillation.addRecipe([ <liquid:lpg>*200, <liquid:naphta_petr>*150, <liquid:kerosene>*1500, <liquid:dieseloil>*800, <liquid:heavyoil>*500, <liquid:lightvacgas>*100, <liquid:heavyvacgas>*150, <liquid:vacuum_residuum>*50], [<ore:fuelCoke>.firstItem], <liquid:fischer_oil>*1000, 100000, 100, [0.0]);
Distillation.addRecipe([ <liquid:lpg>*1000,<liquid:methan>*500, <liquid:refined_oil>*300, <liquid:sour_kerosene>*300,<liquid:sour_heavyoil>*300, <liquid:oil_waste>*500,<liquid:hco_steam>*400], [<ore:fuelCoke>.firstItem], <liquid:karrick>*1000, 100000, 100, [1.0]);
Distillation.addRecipe([ <liquid:lpg>*500,<liquid:methan>*300, <liquid:refined_oil>*300, <liquid:kerosene>*500, <liquid:sour_heavyoil>*1100, <liquid:oil_waste>*1500,<liquid:hco_steam>*500], [<ore:fuelCoke>.firstItem],<liquid:bio_oil>*1000, 1000000, 100, [0.0]);

//Vacuum Destillation
Distillation.addRecipe([<liquid:heavyoil>*50,<liquid:lightvacgas>*500, <liquid:heavyvacgas>*700, <liquid:vacuum_residuum>*300, <liquid:sour_water>*100], [<ore:fuelCoke>.firstItem],<liquid:oil_waste>*1000, 1000, 100, [0.0]);

//Coker + other vacuum parts
Distillation.addRecipe([ <liquid:cracked_gasoline>*300, <liquid:diesel>*600, <liquid:butane>*700], [<ore:fuelCoke>.firstItem],<liquid:cracked_vacgas>*1000, 5000, 100, [0.0]);
Distillation.addRecipe([ <liquid:hycarb_gas>*500, <liquid:fuel_oil>*700, <liquid:refined_oil>*250, <liquid:coker_tar>*144], [<ore:fuelCoke>.firstItem],<liquid:coker>*1000, 5000, 100, [0.0]);

//Fluid catalylitc Cracking
Distillation.addRecipe([ <liquid:hycarb_gas>*500, <liquid:fuel_oil>*700, <liquid:refined_oil>*200, <liquid:pentene>*200], [<ore:fuelCoke>.firstItem],<liquid:cracked_fluid>*1000, 5000, 100, [0.0]);

//FCC for Oil Shale
Distillation.addRecipe([ <liquid:sour_water>*100,<liquid:nitrogen>*100,<liquid:oil_waste>*200,<liquid:heavyoil>*200,<liquid:crude_oil>*1250], [<ore:fuelCoke>.firstItem],<liquid:cracked_bitumen>*1000, 500, 100, [0.0]);







/*
Centrifuge.addRecipe(<liquid:gasolinex>*1000, <liquid:steam>*100, <liquid:carbon_dioxide>*100, <liquid:nitrogen>*300, <liquid:carbon_monoxide>*500, <liquid:water>*100, <liquid:sulfur_dioxide>*100, 0.25, 10.0, 0.0); 
Centrifuge.addRecipe(<liquid:lpgex>*1000, <liquid:steam>*150, <liquid:carbon_dioxide>*100, <liquid:nitrogen>*300, <liquid:carbon_monoxide>*500, <liquid:water>*100, <liquid:sulfur_dioxide>*100, 0.25, 10.0, 0.0); 
Centrifuge.addRecipe(<liquid:dieselex>*1000, <liquid:steam>*175, <liquid:carbon_dioxide>*100, <liquid:nitrogen>*300, <liquid:carbon_monoxide>*500, <liquid:water>*100, <liquid:sulfur_dioxide>*100, 0.25, 10.0, 0.0); 
Centrifuge.addRecipe(<liquid:fueloilex>*1000, <liquid:steam>*200, <liquid:carbon_dioxide>*100, <liquid:nitrogen>*300, <liquid:carbon_monoxide>*500, <liquid:water>*100, <liquid:sulfur_dioxide>*100, 0.25, 10.0, 0.0); 
Centrifuge.addRecipe(<liquid:kerosenex>*1000, <liquid:steam>*200, <liquid:carbon_dioxide>*100, <liquid:nitrogen>*300, <liquid:carbon_monoxide>*500, <liquid:water>*100, <liquid:sulfur_dioxide>*100, 0.25, 10.0, 0.0); 

Centrifuge.addRecipe(<liquid:cold_gasolinex>*1000,  <liquid:carbon_dioxide>*500, <liquid:nitrogen>*300, <liquid:carbon_monoxide>*200, <liquid:water>*300,<liquid:sulfur_dioxide>*100, null, 0.25, 2.0, 0.0); 
Centrifuge.addRecipe(<liquid:cold_lpgex>*1000,  <liquid:carbon_dioxide>*500, <liquid:nitrogen>*300, <liquid:carbon_monoxide>*200, <liquid:water>*300, <liquid:sulfur_dioxide>*100, null, 0.25, 2.0, 0.0); 
Centrifuge.addRecipe(<liquid:cold_dieselex>*1000,  <liquid:carbon_dioxide>*500, <liquid:nitrogen>*300, <liquid:carbon_monoxide>*200, <liquid:water>*300, <liquid:sulfur_dioxide>*100, null, 0.25, 2.0, 0.0); 
Centrifuge.addRecipe(<liquid:cold_fueloilex>*1000,  <liquid:carbon_dioxide>*500, <liquid:nitrogen>*300, <liquid:carbon_monoxide>*200, <liquid:water>*300, <liquid:sulfur_dioxide>*100, null, 0.25, 2.0, 0.0); 
Centrifuge.addRecipe(<liquid:cold_kerosenex>*1000,  <liquid:carbon_dioxide>*500, <liquid:nitrogen>*300, <liquid:carbon_monoxide>*200, <liquid:water>*300, <liquid:sulfur_dioxide>*100, null, 0.25, 2.0, 0.0); 
*/