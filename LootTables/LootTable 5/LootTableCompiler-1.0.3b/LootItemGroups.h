/*
	///////////////////////////////////////////////////////////////////////////////
	// 1, Names
	///////////////////////////////////////////////////////////////////////////////

	Remember that item 1, names, group names and loot table names cannot 
	contain spaces. Also be 100% sure to have the exact same name as in Arma,
	as they are *case sensitive*.

	///////////////////////////////////////////////////////////////////////////////
	// Item Groups
	///////////////////////////////////////////////////////////////////////////////

	You can link one group of items to loot tables.
	One item should only be in one group.

	Syntax:
	> <Group Name>
	<Spawn Chance Within Group>, <Item 1, Name>

	///////////////////////////////////////////////////////////////////////////////
	// Probability
	///////////////////////////////////////////////////////////////////////////////

	<Spawn Chance>, <Item>

	10, Banana
	20, Tomato
	30, Cherry

	Sum of chances:
	10 + 20 + 30 = 60 = 100%

	Spawn chances:
	Banana	10 : 60 = 10 * 100 / 60 = 16.67%
	Tomato	20 : 60 = 20 * 100 / 60 = 33.33%
	Cherry	30 : 60 = 30 * 100 / 60 = 50%

	In words: 
	If Exile should spawn an item of the above group, it has a 33.33%
	chance to spawn a Tomato.
*/
	
/*
	Item Groups
*/

///////////////////////////////////////////////////////////////////////////////
// Food & Drinks
///////////////////////////////////////////////////////////////////////////////

> Food
10, Exitem_purificationtablets
10, Exitem_bakedbeans
10, Exitem_cerealbox
10, Exitem_rice
10, Exitem_container
5, Exitem_container_soup
5, Exitem_container_beef
10, Exitem_tacticalbacon
15, Exile_Item_CookingPot
30, Exile_Item_CanOpener
5, Exile_Item_Matches
5, Exile_Item_EMRE						// 75% Hunger
5, Exile_Item_GloriousKnakworst			// 60% Hunger
5, Exile_Item_Surstromming				// 55% Hunger
5, Exile_Item_SausageGravy				// 50% Hunger
5, Exile_Item_ChristmasTinner			// 40% Hunger
10, Exile_Item_MacasCheese				// 40% Hunger
5, Exile_Item_BBQSandwich				// 40% Hunger
5, Exile_Item_CatFood					// 40% Hunger
5, Exile_Item_Dogfood					// 30% Hunger
10, Exile_Item_BeefParts				// 30% Hunger
10, Exile_Item_Cheathas					// 30% Hunger
10, Exile_Item_DsNuts					// 30% Hunger
10, Exile_Item_Noodles					// 25% Hunger
10, Exile_Item_CockONut					// 20% Hunger
10, Exile_Item_SeedAstics				// 20% Hunger
10, Exile_Item_Raisins					// 15% Hunger
10, Exile_Item_Moobar					// 10% Hunger
20, Exile_Item_InstantCoffee			//  5% Hunger

> Drinks
5, Exitem_canteen_coffee
5, Exitem_canteen_fresh
10, Exitem_canteen
15, Exitem_franta
10, Exitem_redgull
20, Exitem_spirit
5, Exile_Item_PlasticBottleCoffee
5, Exile_Item_PowerDrink					// +95% Thirst
10, Exile_Item_PlasticBottleFreshWater		// +80% Thirst
10, Exile_Item_Beer							// +75% Thirst
10, Exile_Item_EnergyDrink					// +75% Thirst
10, Exile_Item_MountainDupe					// +50% Thirst, spawns always twice!	
25, Exile_Item_ChocolateMilk				// +35% Thirst
25, Exile_Item_PlasticBottleDirtyWater		// +10% Thirst


///////////////////////////////////////////////////////////////////////////////
// Weapons & Attachments
///////////////////////////////////////////////////////////////////////////////

> CivilianWeapons
20, rhs_weap_makarov_pm
20, rhs_weap_makarov_pmm
10, rhsusf_weap_m1911a1
5, rhsusf_weap_glock17g4
20, Exile_Weapon_Taurus
1, Exile_Weapon_TaurusGold
5, hlc_rifle_M1903A1
10, hlc_rifle_saiga12k
5, rhs_weap_M590_8RD
5, rhs_weap_M590_5RD
10, rhs_weap_m38
10, rhs_weap_kar98k

> CivilianAmmo
20, rhs_mag_9x18_8_57N181S
20, rhs_mag_9x18_12_57N181S
10, rhsusf_mag_7x45acp_MHPg
5, rhsusf_mag_17Rnd_9x19_JHP
20, Exile_Magazine_8Rnd_9x18
20, Exile_Magazine_6Rnd_45ACP
5, Exile_Magazine_10Rnd_303
5, hlc_5rnd_3006_1903
10, hlc_10rnd_12g_slug_S12
5, rhsusf_8Rnd_Slug
5, rhsusf_5Rnd_00Buck
10, rhsgref_5Rnd_762x54_m38
10, Exile_Magazine_5Rnd_22LR
10, rhsgref_5Rnd_792x57_kar98k 


> Pistols
10, rhs_weap_pya
10, rhs_weap_makarov_pm
1, rhsusf_weap_glock17g4
1, rhs_weap_pp2000_folded
1, hlc_smg_mp5k

> PistolAmmo
10, rhs_mag_9x19_17
10, rhs_mag_9x18_8_57N181S
1, rhsusf_mag_17Rnd_9x19_FMJ
1, rhs_mag_9x19mm_7n21_20
1, hlc_30Rnd_9x19_B_MP5

> SMG
10, rhs_weap_asval
5, hlc_smg_mp5a2
5, hlc_smg_mp5a4
1, rhsusf_weap_MP7A2
30, rhs_weap_pp2000
10, hlc_smg_mp5k
30, rhs_weap_savz61

> SMGAmmo
10, rhs_20rnd_9x39mm_SP5
5, hlc_30Rnd_9x19_B_MP5
5, hlc_30Rnd_9x19_GD_MP5
1, rhsusf_mag_40Rnd_46x30_FMJ
30, rhs_mag_9x19mm_7n21_44
30, rhsgref_20rnd_765x17_vz61

> Rifles
1, Exile_Weapon_AKS_Gold
3, rhs_weap_ak103_1
3, rhs_weap_ak103_1_npz
3, rhs_weap_ak103_2
3, rhs_weap_ak103_2_npz
3, rhs_weap_ak103_gp25_npz
3, rhs_weap_ak103_gp25
3, rhs_weap_ak103
3, rhs_weap_ak103_npz
3, rhs_weap_ak103_zenitco01
3, rhs_weap_ak103_zenitco01_b33
3, rhs_weap_ak104
3, rhs_weap_ak104_npz
3, rhs_weap_ak104_zenitco01
3, rhs_weap_ak104_zenitco01_b33
5, rhs_weap_ak105
5, rhs_weap_ak105_npz
5, rhs_weap_ak105_zenitco01
5, rhs_weap_ak105_zenitco01_b33
5, rhs_weap_ak74
5, rhs_weap_ak74_gp25
5, rhs_weap_ak74_3
5, rhs_weap_ak74_2
5, rhs_weap_ak74m
5, rhs_weap_ak74m_2mag
5, rhs_weap_ak74m_2mag_camo
5, rhs_weap_ak74m_2mag_npz
5, rhs_weap_ak74m_camo
5, rhs_weap_ak74m_camo_npz
5, rhs_weap_ak74m_desert
5, rhs_weap_ak74m_desert_npz
5, rhs_weap_ak74m_gp25
5, rhs_weap_ak74m_gp25_npz
5, rhs_weap_ak74m_fullplum_gp25
5, rhs_weap_ak74m_fullplum_gp25_npz
5, rhs_weap_ak74m_npz
5, rhs_weap_ak74m_plummag
5, rhs_weap_ak74m_plummag_npz
5, rhs_weap_ak74m_fullplum
5, rhs_weap_ak74m_fullplum_npz
5, rhs_weap_ak74m_zenitco01
5, rhs_weap_ak74m_zenitco01_b33
5, rhs_weap_ak74mr
5, rhs_weap_ak74mr_gp25
5, rhs_weap_ak74n
5, rhs_weap_ak74n_gp25
5, rhs_weap_ak74n_gp25_npz
5, rhs_weap_ak74n_npz
4, rhs_weap_akm
4, rhs_weap_akm_gp25
4, rhs_weap_akms
4, rhs_weap_akms_gp25
5, rhs_weap_aks74
5, rhs_weap_aks74_gp25
5, rhs_weap_aks74_2
5, rhs_weap_aks74n
5, rhs_weap_aks74n_gp25
5, rhs_weap_aks74n_gp25_npz
5, rhs_weap_aks74n_npz
5, rhs_weap_aks74u
5, rhs_weap_aks74un
4, rhs_weap_m21a
4, rhs_weap_m21a_pr
4, rhs_weap_m21s
4, rhs_weap_m21s_pr
1, rhs_weap_g36kv
1, hlc_rifle_g3a3
1, hlc_rifle_vendimus
1, SMA_Steyr_AUG_BLACK_F
1, SMA_ACRREMblk
1, SMA_ACRREMGL_B
1, SMA_ACRREMCQBGL_B
1, SMA_ACRREMMOEblk
2, hlc_rifle_FAL5061Rail
2, hlc_rifle_FAL5061
2, hlc_rifle_FAL5000
2, hlc_rifle_FAL5000Rail
2, hlc_rifle_FAL5000_RH
2, hlc_rifle_M14
2, hlc_rifle_M14_Rail
2, hlc_rifle_auga1_b
2, hlc_rifle_auga1carb_B
2, hlc_rifle_aughbar_B
2, hlc_rifle_auga2_b
2, hlc_rifle_augsr_b
1, rhs_weap_hk416d10
1, SMA_HK417_16in

> RifleAmmo
10, rhs_30Rnd_762x39mm
15, rhs_30Rnd_545x39_AK
10, rhsgref_30rnd_556x45_m21
1, 150Rnd_556x45_Drum_Mag_F
1, hlc_20rnd_762x51_b_G3
1, 29rnd_300BLK_STANAG
1, SMA_30Rnd_556x45_M855A1
2, SMA_30Rnd_68x43_BT
8, hlc_20Rnd_762x51_B_fal
3, hlc_20Rnd_762x51_B_M14
5, hlc_30Rnd_556x45_SPR_AUG
1, rhs_mag_30Rnd_556x45_Mk262_Stanag
1, SMA_20Rnd_762x51mm_M80A1_EPR_Tracer

> RifleAttachments
5, rhsusf_acc_grip1				
5, rhsusf_acc_grip2 				
5, rhsusf_acc_grip2_tan 			
5, rhsusf_acc_grip3 				
5, rhsusf_acc_grip3_tan 			
5, rhs_acc_grip_rk2 				
5, rhs_acc_grip_rk6 				
5, rhs_acc_grip_ffg2 			
3, rhsusf_acc_anpeq15side		
3, rhsusf_acc_anpeq15			
3, rhsusf_acc_anpeq15A			
3, rhsusf_acc_anpeq15_light		
3, rhsusf_acc_M952V				
3, rhs_acc_perst3				
3, rhs_acc_perst3_top			
3, rhs_acc_perst3_2dp_h			
3, rhs_acc_perst3_2dp_light_h	
3, rhs_acc_2dpZenit				
3, rhs_acc_2dpZenit_ris			
3, rhs_acc_perst1ik				
3, rhs_acc_perst1ik_ris			
3, rhsusf_acc_anpeq15_bk 		
3, rhsusf_acc_anpeq15_bk_light 	
3, rhsusf_acc_harris_swivel		
3, rhs_acc_harris_swivel			
3, rhs_bipod						
1, rhs_acc_ak5			
1, rhs_acc_dtk			
1, rhs_acc_dtk1			
1, rhs_acc_dtk3			
1, rhs_acc_dtk4screws	
1, rhs_acc_dtk4long		
1, rhs_acc_dtk4short		
1, rhs_acc_tgpa			
1, rhs_acc_dtk1l			
1, rhs_acc_pbs1			
1, rhsusf_acc_omega9k	
1, rhs_acc_uuk			
3, rhs_acc_1pn93_2               
3, rhs_acc_1p29					
3, rhs_acc_1p63					
3, rhs_acc_1p78					
3, rhs_acc_1pn93_1				
3, rhs_acc_ekp1					
3, rhs_acc_pgo7v					
3, rhs_acc_pkas					
3, rhs_acc_pso1m2				
3, rhs_acc_nita					
3, rhsusf_acc_ACOG_MDO			
3, rhsusf_acc_ACOG_RMR			
3, rhsusf_acc_ACOG_d 			
3, rhsusf_acc_ACOG_wd 			
2, rhsusf_acc_M8541 				
2, rhsusf_acc_M8541_low 			
2, rhsusf_acc_M8541_low_d 		
2, rhsusf_acc_M8541_low_wd 		
5, rhsusf_acc_premier_low 		
5, rhsusf_acc_premier_anpvs27 	
5, rhsusf_acc_premier 			
5, rhsusf_acc_SpecterDR 			
5, rhsusf_acc_SpecterDR_OD 		
5, rhsusf_acc_SpecterDR_D 		
5, rhsusf_acc_SpecterDR_A_3d 	
5, rhs_acc_rakursPM 				
5, rhs_acc_dh520x56				
5, rhs_weap_optic_smaw 			

> LMG
1, sma_minimi_mk3_762tlb_wdl
20, rhs_weap_pkm
5, hlc_lmg_MG42
20, rhs_weap_pkp
20, lmg_UK59
1, hlc_lmg_MG3KWS_b
10, rhs_weap_m84
5, rhs_weap_m27iar_grip
1, rhs_weap_m249_pip

> LMGAmmo
1, SMA_150Rnd_762_M80A1
40, rhs_100Rnd_762x54mmR
5, hlc_200Rnd_792x57_B_MG42
20, 50Rnd_UK59_762x54_Tracer_Green
1, hlc_250Rnd_762x51_Barrier_MG3
10, rhssaf_250Rnd_762x54R
5, rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red
1, rhs_200rnd_556x45_M_SAW

> Snipers
50, rhs_weap_svdp
20, rhs_weap_svdp_wd
20, rhs_weap_svdp_wd_npz
20, rhs_weap_svdp_npz
20, rhs_weap_svds
10, rhs_weap_svds_npz
3, rhs_weap_t5000
5, rhs_weap_vss
5, rhs_weap_vss_grip
5, rhs_weap_vss_grip_npz
5, rhs_weap_vss_npz
10, rhs_weap_m24sws
20, hlc_rifle_M14_Rail
1, rhs_weap_m82a1
1, hlc_rifle_awmagnum
15, hlc_rifle_augsrhbar_b

> SniperAmmo
60, rhs_10Rnd_762x54mmR_7N1
3, rhs_5Rnd_338lapua_t5000
20, rhs_10rnd_9x39mm_SP5
10, rhsusf_5Rnd_762x51_m993_Mag
15, hlc_20Rnd_762x51_mk316_M14
1, rhsusf_mag_10Rnd_STD_50BMG_M33
1, hlc_5rnd_300WM_FMJ_AWM
15, hlc_40Rnd_556x45_SPR_AUG

> SniperAttachments
40, rhs_acc_pso1m2
40, rhs_acc_pso1m21
10, rhsusf_acc_LEUPOLDMK4
10, rhsusf_acc_LEUPOLDMK4_2
10, hlc_optic_LRT_m14
10, optic_AMS
5, optic_LRPS

> HandGrenades
1, HandGrenade
1, MiniGrenade
1, rhs_mag_rgd5
1, rhs_mag_m67
1, rhs_VOG25

> Explosives
1, DemoCharge_Remote_Mag
10, IEDUrbanSmall_Remote_Mag
10, IEDLandSmall_Remote_Mag
1, SatchelCharge_Remote_Mag

///////////////////////////////////////////////////////////////////////////////
// Clothing & Gear
///////////////////////////////////////////////////////////////////////////////

//Civilian

> CivilianItems
20, ItemWatch
20, NVGoggles
20, ItemRadio
20, ItemGPS
20, Binocular
5, Exile_Item_MobilePhone

> CivilianClothing
1, U_C_Poor_1
1, U_C_Poor_2
1, U_C_Poor_shorts_1
1, U_C_HunterBody_grn
1, U_C_Poloshirt_salmon
1, U_C_Poloshirt_tricolour
1, U_C_Poloshirt_stripped
1, U_C_Poloshirt_burgundy
1, U_C_Poloshirt_blue
1, U_C_Journalist
1, U_C_Scientist
1, U_Rangemaster
1, U_OrestesBody
1, U_NikosBody
1, U_NikosAgedBody
1, U_I_C_Soldier_Bandit_1_F         // Bandit Clothes (Polo Shirt)
1, U_I_C_Soldier_Bandit_2_F         // Bandit Clothes (Skull)
1, U_I_C_Soldier_Bandit_3_F         // Bandit Clothes (Tee)
1, U_I_C_Soldier_Bandit_4_F         // Bandit Clothes (Checkered)
1, U_I_C_Soldier_Bandit_5_F         // Bandit Clothes (Tank Top)
1, U_C_man_sport_1_F                // Sport Clothes (Beach)
1, U_C_man_sport_2_F                // Sport Clothes (Orange)
1, U_C_man_sport_3_F                // Sport Clothes (Blue)
1, U_C_Man_casual_1_F               // Casual Clothes (Navy)
1, U_C_Man_casual_2_F               // Casual Clothes (Blue)
1, U_C_Man_casual_3_F               // Casual Clothes (Green)
1, U_C_Man_casual_4_F               // Summer Clothes (Sky)
1, U_C_Man_casual_5_F               // Summer Clothes (Yellow)
1, U_C_Man_casual_6_F               // Summer Clothes (Red)

> CivilianBackpacks
1, B_AssaultPack_khk
1, B_AssaultPack_dgtl
1, B_AssaultPack_rgr
1, B_AssaultPack_sgg
1, B_AssaultPack_blk
1, B_AssaultPack_cbr
1, B_AssaultPack_mcamo
1, B_Kitbag_mcamo
1, B_Kitbag_sgg
1, B_Kitbag_cbr
1, B_AssaultPack_tna_F 

> CivilianVests
50, V_Rangemaster_belt
25, V_Press_F
25, V_TacVest_blk_POLICE

> CivilianHeadgear
1, H_Bandanna_surfer
1, H_Beret_blk_POLICE
1, H_Cap_blk
1, H_Cap_blk_Raven
1, H_Cap_blu
1, H_Cap_grn
1, H_Cap_headphones
1, H_Cap_oli
1, H_Cap_press
1, H_Cap_red
1, H_Cap_tan
1, H_Hat_blue
1, H_Hat_brown
1, H_Hat_checker
1, H_Hat_grey
1, H_Hat_tan
1, H_StrawHat
1, H_StrawHat_dark

//Guerilla

> GuerillaItems
10, ItemCompass

> GuerillaClothing
1, U_IG_Guerilla1_1
1, U_IG_Guerilla2_1
1, U_IG_Guerilla2_2
1, U_IG_Guerilla2_3
1, U_IG_Guerilla3_1
1, U_IG_Guerilla3_2
1, U_IG_leader
1, U_I_G_resistanceLeader_F
1, U_I_C_Soldier_Para_1_F           // Paramilitary Garb (Tee)
1, U_I_C_Soldier_Para_2_F           // Paramilitary Garb (Jacket)
1, U_I_C_Soldier_Para_3_F           // Paramilitary Garb (Shirt)
1, U_I_C_Soldier_Para_4_F           // Paramilitary Garb (Tank Top)
1, U_I_C_Soldier_Para_5_F           // Paramilitary Garb (Shorts)
1, U_I_C_Soldier_Camo_F             // Syndikat Uniform
1, TRYK_U_B_OD_OD_CombatUniform                
1, TRYK_U_B_OD_OD_R_CombatUniform              
1, TRYK_U_B_TANTAN_CombatUniform               
1, TRYK_U_B_TANTAN_R_CombatUniform             
1, TRYK_U_B_BLKBLK_CombatUniform               
1, TRYK_U_B_BLKBLK_R_CombatUniform             
1, TRYK_U_B_GRYOCP_CombatUniform               
1, TRYK_U_B_GRYOCP_R_CombatUniformTshirt       
1, TRYK_U_B_TANOCP_CombatUniform               
1, TRYK_U_B_TANOCP_R_CombatUniformTshirt       
1, TRYK_U_B_BLKOCP_CombatUniform               
1, TRYK_U_B_BLKOCP_R_CombatUniformTshirt       
1, TRYK_U_B_BLKTAN_CombatUniform               
1, TRYK_U_B_BLKTANR_CombatUniformTshirt        
1, TRYK_U_B_ODTAN_CombatUniform                
1, TRYK_U_B_ODTANR_CombatUniformTshirt         
1, TRYK_U_B_GRTAN_CombatUniform                
1, TRYK_U_B_GRTANR_CombatUniformTshirt         
1, TRYK_U_B_wood_CombatUniform                 
1, TRYK_U_B_woodR_CombatUniformTshirt          
1, TRYK_U_B_wood3c_CombatUniform               
1, TRYK_U_B_wood3c_CombatUniformTshirt         
1, TRYK_U_B_MARPAT_WOOD_CombatUniform          
1, TRYK_U_B_MARPAT_WOOD_CombatUniformTshirt    
1, TRYK_U_B_WOOD_MARPAT_CombatUniform          
1, TRYK_U_B_WOOD_MARPAT_CombatUniformTshirt    
1, TRYK_U_B_woodtan_CombatUniform              
1, TRYK_U_B_woodtanR_CombatUniformTshirt       
1, TRYK_U_B_JSDF_CombatUniform                 
1, TRYK_U_B_JSDF_CombatUniformTshirt           
1, TRYK_U_B_3CD_Delta_BDU                      
1, TRYK_U_B_3CD_Delta_BDUTshirt                
1, TRYK_U_B_3CD_Ranger_BDU                     
1, TRYK_U_B_3CD_Ranger_BDUTshirt               
1, TRYK_U_B_3CD_BLK_BDUTshirt                  
1, TRYK_U_B_3CD_BLK_BDUTshirt2                 
1, TRYK_U_B_ACU                                
1, TRYK_U_B_ACUTshirt                          
1, TRYK_U_B_MARPAT_Wood                        
1, TRYK_U_B_MARPAT_Wood_Tshirt                 
1, TRYK_U_B_MARPAT_Desert                      
1, TRYK_U_B_MARPAT_Desert_Tshirt               
1, TRYK_U_B_MARPAT_Desert2                     
1, TRYK_U_B_MARPAT_Desert2_Tshirt              
1, TRYK_U_B_3c                                 
1, TRYK_U_B_3cr                                
1, TRYK_U_B_Sage_Tshirt                        
1, TRYK_U_B_BLK3CD                             
1, TRYK_U_B_BLK3CD_Tshirt                      
1, TRYK_U_B_BLK                                
1, TRYK_U_B_BLK_Tshirt                         
1, TRYK_U_B_BLKTAN                             
1, TRYK_U_B_BLKTAN_Tshirt                      
1, TRYK_U_B_ODTAN                              
1, TRYK_U_B_ODTAN_Tshirt                       
1, TRYK_U_B_BLK_OD                             
1, TRYK_U_B_BLK_OD_Tshirt                      
1, TRYK_U_B_C01_Tsirt                          
1, TRYK_U_B_C02_Tsirt                          
1, TRYK_U_B_OD_BLK                             
1, TRYK_U_B_OD_BLK_2                           
1, TRYK_U_B_BLK_TAN_1                          
1, TRYK_U_B_BLK_TAN_2                          
1, TRYK_U_B_wh_tan_Rollup_CombatUniform        
1, TRYK_U_B_wh_OD_Rollup_CombatUniform         
1, TRYK_U_B_wh_blk_Rollup_CombatUniform        
1, TRYK_U_B_BLK_tan_Rollup_CombatUniform       
1, TRYK_U_B_BLK_OD_Rollup_CombatUniform        
1, TRYK_U_B_NATO_UCP_GRY_CombatUniform         
1, TRYK_U_B_NATO_UCP_GRY_R_CombatUniform       
1, TRYK_U_B_NATO_UCP_CombatUniform             
1, TRYK_U_B_NATO_UCP_R_CombatUniform           
1, TRYK_U_B_NATO_OCP_c_BLK_CombatUniform       
1, TRYK_U_B_NATO_OCP_BLK_c_R_CombatUniform     
1, TRYK_U_B_NATO_OCP_BLK_CombatUniform         
1, TRYK_U_B_NATO_OCP_BLK_R_CombatUniform       
1, TRYK_U_B_NATO_OCPD_CombatUniform            
1, TRYK_U_B_NATO_OCPD_R_CombatUniform          
1, TRYK_U_B_NATO_OCP_CombatUniform             
1, TRYK_U_B_NATO_OCP_R_CombatUniform           
1, TRYK_U_B_AOR1_Rollup_CombatUniform          
1, TRYK_U_B_AOR2_Rollup_CombatUniform          
1, TRYK_U_B_MTP_CombatUniform                  
1, TRYK_U_B_MTP_R_CombatUniform                
1, TRYK_U_B_MTP_BLK_CombatUniform              
1, TRYK_U_B_MTP_BLK_R_CombatUniform            
1, TRYK_U_B_Woodland                           
1, TRYK_U_B_Woodland_Tshirt                    
1, TRYK_U_B_WDL_GRY_CombatUniform              
1, TRYK_U_B_WDL_GRY_R_CombatUniform            
1, TRYK_U_B_ARO1_GR_CombatUniform              
1, TRYK_U_B_ARO1_GR_R_CombatUniform            
1, TRYK_U_B_ARO1_GRY_CombatUniform             
1, TRYK_U_B_ARO1_GRY_R_CombatUniform           
1, TRYK_U_B_ARO1_CombatUniform                 
1, TRYK_U_B_ARO1R_CombatUniform                
1, TRYK_U_B_ARO1_BLK_CombatUniform             
1, TRYK_U_B_ARO1_BLK_R_CombatUniform           
1, TRYK_U_B_ARO1_CBR_CombatUniform             
1, TRYK_U_B_ARO1_CBR_R_CombatUniform           
1, TRYK_U_B_ARO2_CombatUniform                 
1, TRYK_U_B_ARO2R_CombatUniform                
1, TRYK_U_B_AOR2_BLK_CombatUniform             
1, TRYK_U_B_AOR2_BLK_R_CombatUniform           
1, TRYK_U_B_AOR2_OD_CombatUniform              
1, TRYK_U_B_AOR2_OD_R_CombatUniform            
1, TRYK_U_B_AOR2_GRY_CombatUniform             
1, TRYK_U_B_AOR2_GRY_R_CombatUniform           
1, TRYK_U_B_Snow_CombatUniform                 
1, TRYK_U_B_Snowt                              
1, TRYK_U_B_Denim_T_WH                         
1, TRYK_U_B_Denim_T_BK                         
1, TRYK_U_B_BLK_T_WH                           
1, TRYK_U_B_BLK_T_BK                           
1, TRYK_U_B_RED_T_BR                           
1, TRYK_U_B_Denim_T_BG_WH                      
1, TRYK_U_B_Denim_T_BG_BK                      
1, TRYK_U_B_BLK_T_BG_WH                        
1, TRYK_U_B_BLK_T_BG_BK                        
1, TRYK_U_B_RED_T_BG_BR                        
1, TRYK_U_B_fleece                             
1, TRYK_U_B_fleece_UCP                         
1, TRYK_U_B_UCP_PCUs                           
1, TRYK_U_B_GRY_PCUs                           
1, TRYK_U_B_Wood_PCUs                          
1, TRYK_U_B_PCUs                               
1, TRYK_U_B_UCP_PCUs_R                         
1, TRYK_U_B_GRY_PCUs_R                         
1, TRYK_U_B_Wood_PCUs_R                        
1, TRYK_U_B_PCUs_R                             
1, TRYK_U_B_PCUGs                              
1, TRYK_U_B_PCUODs                             
1, TRYK_U_B_PCUGs_gry                          
1, TRYK_U_B_PCUGs_BLK                          
1, TRYK_U_B_PCUGs_OD                           
1, TRYK_U_B_PCUGs_gry_R                        
1, TRYK_U_B_PCUGs_BLK_R                        
1, TRYK_U_B_PCUGs_OD_R                         
1, TRYK_U_Bts_GRYGRY_PCUs                      
1, TRYK_U_Bts_UCP_PCUs                         
1, TRYK_U_Bts_Wood_PCUs                        
1, TRYK_U_Bts_PCUs                             
1, TRYK_U_pad_j                                
1, TRYK_U_pad_j_blk                            
1, TRYK_U_pad_hood_Cl                          
1, TRYK_U_pad_hood_Cl_blk                      
1, TRYK_U_pad_hood_tan                         
1, TRYK_U_pad_hood_Blk                         
1, TRYK_U_pad_hood_CSATBlk                     
1, TRYK_U_pad_hood_Blod                        
1, TRYK_U_pad_hood_odBK                        
1, TRYK_U_pad_hood_BKT2                        
1, TRYK_hoodie_Blk                             
1, TRYK_hoodie_FR                              
1, TRYK_hoodie_Wood                            
1, TRYK_hoodie_3c                              
1, TRYK_T_camo_tan                             
1, TRYK_T_camo_3c                              
1, TRYK_T_camo_Wood                            
1, TRYK_T_camo_wood_marpat                     
1, TRYK_T_camo_Desert_marpat                   
1, TRYK_T_camo_3c_BG                           
1, TRYK_T_camo_Wood_BG                         
1, TRYK_T_camo_wood_marpat_BG                  
1, TRYK_T_camo_desert_marpat_BG                
1, TRYK_T_PAD                                  
1, TRYK_T_OD_PAD                               
1, TRYK_T_TAN_PAD                              
1, TRYK_T_BLK_PAD                              
1, TRYK_T_T2_PAD                               
1, TRYK_T_CSAT_PAD                             
1, TRYK_U_nohoodPcu_gry                        
1, TRYK_U_hood_nc                              
1, TRYK_U_hood_mc                              
1, TRYK_U_denim_hood_blk                       
1, TRYK_U_denim_hood_mc                        
1, TRYK_U_denim_hood_3c                        
1, TRYK_U_denim_hood_nc                        
1, TRYK_U_denim_jersey_blu                     
1, TRYK_U_denim_jersey_blk                     
1, TRYK_shirts_PAD                             
1, TRYK_shirts_OD_PAD                          
1, TRYK_shirts_TAN_PAD                         
1, TRYK_shirts_BLK_PAD                         
1, TRYK_shirts_PAD_BK                          
1, TRYK_shirts_OD_PAD_BK                       
1, TRYK_shirts_TAN_PAD_BK                      
1, TRYK_shirts_BLK_PAD_BK                      
1, TRYK_shirts_PAD_BLW                         
1, TRYK_shirts_OD_PAD_BLW                      
1, TRYK_shirts_TAN_PAD_BLW                     
1, TRYK_shirts_BLK_PAD_BLW                     
1, TRYK_shirts_PAD_YEL                         
1, TRYK_shirts_OD_PAD_YEL                      
1, TRYK_shirts_TAN_PAD_YEL                     
1, TRYK_shirts_BLK_PAD_YEL                     
1, TRYK_shirts_PAD_RED2                        
1, TRYK_shirts_OD_PAD_RED2                     
1, TRYK_shirts_TAN_PAD_RED2                    
1, TRYK_shirts_BLK_PAD_RED2                    
1, TRYK_shirts_PAD_BLU3                        
1, TRYK_shirts_OD_PAD_BLU3                     
1, TRYK_shirts_TAN_PAD_BLU3                    
1, TRYK_shirts_BLK_PAD_BLU3                    
1, TRYK_shirts_DENIM_R                         
1, TRYK_shirts_DENIM_BL                        
1, TRYK_shirts_DENIM_BK                        
1, TRYK_shirts_DENIM_WH                        
1, TRYK_shirts_DENIM_BWH                       
1, TRYK_shirts_DENIM_RED2                      
1, TRYK_shirts_DENIM_WHB                       
1, TRYK_shirts_DENIM_ylb                       
1, TRYK_shirts_DENIM_od                        
1, TRYK_shirts_DENIM_R_Sleeve                  
1, TRYK_shirts_DENIM_BL_Sleeve                 
1, TRYK_shirts_DENIM_BK_Sleeve                 
1, TRYK_shirts_DENIM_WH_Sleeve                 
1, TRYK_shirts_DENIM_BWH_Sleeve                
1, TRYK_shirts_DENIM_RED2_Sleeve               
1, TRYK_shirts_DENIM_WHB_Sleeve                
1, TRYK_shirts_DENIM_ylb_Sleeve                
1, TRYK_shirts_DENIM_od_Sleeve                 
1, TRYK_shirts_PAD_BL                          
1, TRYK_shirts_OD_PAD_BL                       
1, TRYK_shirts_TAN_PAD_BL                      
1, TRYK_shirts_BLK_PAD_BL                      
1, TRYK_U_taki_wh                              
1, TRYK_U_taki_COY                             
1, TRYK_U_taki_BL                              
1, TRYK_U_taki_BLK                             
1, TRYK_U_Bts_PCUGs                            
1, TRYK_U_Bts_PCUODs                           
1, TRYK_U_taki_G_WH                            
1, TRYK_U_taki_G_COY                           
1, TRYK_U_taki_G_BL                            
1, TRYK_U_taki_G_BLK                           
1, TRYK_U_B_PCUHs                              
1, TRYK_U_B_PCUGHs                             
1, TRYK_U_B_PCUODHs                            
1, TRYK_B_USMC_R                               
1, TRYK_B_USMC_R_ROLL                          
1, TRYK_ZARATAKI                               
1, TRYK_ZARATAKI2                              
1, TRYK_ZARATAKI3                              
1, TRYK_B_TRYK_UCP_T                           
1, TRYK_B_TRYK_3C_T                            
1, TRYK_B_TRYK_MTP_T                           
1, TRYK_B_TRYK_OCP_T                           
1, TRYK_B_TRYK_OCP_D_T                         
1, TRYK_DMARPAT_T                              
1, TRYK_C_AOR2_T                               
1, TRYK_U_B_Sage_T                             
1, TRYK_U_B_Wood_T                             
1, TRYK_U_B_BLTAN_T                            
1, TRYK_U_B_BLOD_T                             
1, TRYK_OVERALL_flesh                          
1, TRYK_OVERALL_nok_flesh                      
1, TRYK_OVERALL_SAGE_BLKboots                  
1, TRYK_OVERALL_SAGE_BLKboots_nk_blk           
1, TRYK_OVERALL_SAGE_BLKboots_nk               
1, TRYK_OVERALL_SAGE_BLKboots_nk_blk2          
1, TRYK_OVERALL_SAGE                           
1, TRYK_SUITS_BLK_F                            
1, TRYK_SUITS_BR_F                             
1, TRYK_U_B_PCUHsW                             
1, TRYK_U_B_PCUHsW2                            
1, TRYK_U_B_PCUHsW3                            
1, TRYK_U_B_PCUHsW4                            
1, TRYK_U_B_PCUHsW5                            
1, TRYK_U_B_PCUHsW6                            
1, TRYK_U_B_PCUHsW7                            
1, TRYK_U_B_PCUHsW8                            
1, TRYK_U_B_PCUHsW9

> GuerillaBackpacks
1, B_FieldPack_blk
1, B_FieldPack_ocamo
1, B_FieldPack_oucamo
1, B_FieldPack_cbr
1, B_Bergen_sgg
1, B_Bergen_mcamo
1, B_Bergen_rgr
1, B_Bergen_blk
1, B_FieldPack_ghex_F 
1, B_ViperHarness_base_F         
1, B_ViperHarness_blk_F          
1, B_ViperHarness_ghex_F         
1, B_ViperHarness_hex_F          
1, B_ViperHarness_khk_F          
1, B_ViperHarness_oli_F          
1, B_ViperLightHarness_base_F    
1, B_ViperLightHarness_blk_F     
1, B_ViperLightHarness_ghex_F    
1, B_ViperLightHarness_hex_F     
1, B_ViperLightHarness_khk_F     
1, B_ViperLightHarness_oli_F
1, TRYK_B_AssaultPack_UCP                      
1, TRYK_B_AssaultPack_Type2camo                
1, TRYK_B_AssaultPack_MARPAT_Desert            
1, TRYK_B_AssaultPack_MARPAT_Wood              
1, TRYK_B_Kitbag_Base                          
1, TRYK_B_Kitbag_blk                           
1, TRYK_B_Kitbag_aaf                           
1, TRYK_B_Carryall_blk                         
1, TRYK_B_Carryall_wh                          
1, TRYK_B_Carryall_wood                        
1, TRYK_B_Carryall_JSDF                        
1, TRYK_B_Kitbag_Base_JSDF                     
1, TRYK_B_Coyotebackpack                       
1, TRYK_B_Coyotebackpack_OD                    
1, TRYK_B_Coyotebackpack_BLK                   
1, TRYK_B_Coyotebackpack_WH                    
1, TRYK_B_Alicepack                            
1, TRYK_B_Medbag                               
1, TRYK_B_Medbag_OD                            
1, TRYK_B_Medbag_BK                            
1, TRYK_B_Medbag_ucp                           
1, TRYK_B_Belt                                 
1, TRYK_B_Belt_BLK                             
1, TRYK_B_Belt_CYT                             
1, TRYK_B_Belt_tan                             
1, TRYK_B_Belt_br                              
1, TRYK_B_Belt_GR                              
1, TRYK_B_Belt_AOR1                            
1, TRYK_B_Belt_AOR2                            
1, TRYK_B_BAF_BAG_BLK                          
1, TRYK_B_BAF_BAG_CYT                          
1, TRYK_B_BAF_BAG_OD                           
1, TRYK_B_BAF_BAG_rgr                          
1, TRYK_B_BAF_BAG_mcamo                        
1, TRYK_B_tube_cyt                             
1, TRYK_B_tube_od                              
1, TRYK_B_tube_blk                             
1, TRYK_B_FieldPack_Wood                       
1, TRYK_Winter_pack

> GuerillaVests
1, V_BandollierB_khk
1, V_BandollierB_cbr
1, V_BandollierB_rgr
1, V_BandollierB_blk
1, V_BandollierB_oli
1, V_Chestrig_khk
1, V_Chestrig_rgr
1, V_Chestrig_blk
1, V_Chestrig_oli
1, V_HarnessO_brn
1, V_HarnessOGL_brn
1, V_HarnessO_gry
1, V_HarnessOGL_gry
1, V_HarnessOSpec_brn
1, V_HarnessOSpec_gry
1, V_I_G_resistanceLeader_F
1, TRYK_V_PlateCarrier_JSDF      
1, TRYK_V_ArmorVest_AOR1        
1, TRYK_V_ArmorVest_AOR2        
1, TRYK_V_ArmorVest_coyo        
1, TRYK_V_ArmorVest_Brown       
1, TRYK_V_ArmorVest_CBR         
1, TRYK_V_ArmorVest_khk         
1, TRYK_V_ArmorVest_green       
1, TRYK_V_ArmorVest_tan         
1, TRYK_V_ArmorVest_Delta       
1, TRYK_V_ArmorVest_Ranger      
1, TRYK_V_ArmorVest_AOR1_2      
1, TRYK_V_ArmorVest_AOR2_2      
1, TRYK_V_ArmorVest_coyo2       
1, TRYK_V_ArmorVest_Brown2      
1, TRYK_V_ArmorVest_cbr2        
1, TRYK_V_ArmorVest_khk2        
1, TRYK_V_ArmorVest_green2      
1, TRYK_V_ArmorVest_tan2        
1, TRYK_V_ArmorVest_Delta2      
1, TRYK_V_ArmorVest_Ranger2     
1, TRYK_V_harnes_blk_L          
1, TRYK_V_harnes_od_L           
1, TRYK_V_harnes_TAN_L          
1, TRYK_V_PlateCarrier_blk_L    
1, TRYK_V_PlateCarrier_wood_L   
1, TRYK_V_PlateCarrier_ACU_L    
1, TRYK_V_PlateCarrier_coyo_L   
1, TRYK_V_Bulletproof           
1, TRYK_V_Bulletproof_BLK       
1, TRYK_V_Bulletproof_BL              
1, TRYK_V_IOTV_BLK

> GuerillaHeadgear
1, Exile_Headgear_GasMask
1, H_Booniehat_khk
1, H_Booniehat_indp
1, H_Booniehat_mcamo
1, H_Booniehat_grn
1, H_Booniehat_tan
1, H_Booniehat_dirty
1, H_Booniehat_dgtl
1, H_Booniehat_khk_hs
1, H_Bandanna_khk
1, H_Bandanna_khk_hs
1, H_Bandanna_cbr
1, H_Bandanna_sgg
1, H_Bandanna_gry
1, H_Bandanna_camo
1, H_Bandanna_mcamo
1, H_BandMask_blk
1, H_Beret_blk
1, H_Beret_red
1, H_Beret_grn
1, H_Beret_grn_SF
1, H_Beret_brn_SF
1, H_Beret_ocamo
1, H_Beret_02
1, H_Beret_Colonel
1, H_Hat_camo
1, H_Cap_brn_SPECOPS
1, H_Cap_tan_specops_US
1, H_Cap_khaki_specops_UK
1, H_Watchcap_blk
1, H_Watchcap_khk
1, H_Watchcap_camo
1, H_Watchcap_sgg
1, H_TurbanO_blk
1, H_Shemag_khk
1, H_Shemag_tan
1, H_Shemag_olive
1, H_Shemag_olive_hs
1, H_ShemagOpen_khk
1, H_ShemagOpen_tan  
1, H_MilCap_tna_F             
1, H_MilCap_ghex_F 
1, H_Booniehat_tna_F   
1, H_MilCap_gen_F             
1, H_Cap_oli_Syndikat_F       
1, H_Cap_tan_Syndikat_F       
1, H_Cap_blk_Syndikat_F       
1, H_Cap_grn_Syndikat_F       
1, H_FakeHeadgear_Syndikat_F
1, TRYK_ESS_CAP                          
1, TRYK_ESS_CAP_OD                       
1, TRYK_ESS_CAP_tan                      
1, TRYK_R_CAP_BLK                        
1, TRYK_R_CAP_TAN                        
1, TRYK_R_CAP_OD_US                      
1, TRYK_r_cap_tan_Glasses                
1, TRYK_r_cap_blk_Glasses                
1, TRYK_r_cap_od_Glasses                 
1, TRYK_H_headsetcap_Glasses             
1, TRYK_H_headsetcap_blk_Glasses         
1, TRYK_H_headsetcap_od_Glasses          
1, TRYK_H_Helmet_Winter                  
1, TRYK_H_Helmet_Winter_2                
1, TRYK_US_ESS_Glasses_H                 
1, TRYK_US_ESS_Glasses_NV                
1, TRYK_US_ESS_Glasses_TAN_NV            
1, TRYK_Headphone_NV                     
1, TRYK_HRPIGEAR_NV                      
1, TRYK_US_ESS_Glasses_Cover             
1, TRYK_balaclava_BLACK_NV               
1, TRYK_balaclava_NV                     
1, TRYK_balaclava_BLACK_EAR_NV           
1, TRYK_balaclava_EAR_NV                 
1, TRYK_Shemagh_TAN_NV                   
1, TRYK_Shemagh_MESH_NV                  
1, TRYK_Shemagh_G_NV                     
1, TRYK_Shemagh_WH_NV                    
1, TRYK_Shemagh_EAR_NV                   
1, TRYK_Shemagh_EAR_G_NV                 
1, TRYK_Shemagh_EAR_WH_NV                
1, TRYK_ShemaghESSTAN_NV                 
1, TRYK_ShemaghESSOD_NV                  
1, TRYK_ShemaghESSWH_NV                  
1, TRYK_ESS_BLKTAN_NV                    
1, TRYK_ESS_BLKBLK_NV                    
1, TRYK_Shemagh_shade_MESH               
1, TRYK_Shemagh_shade_N                  
1, TRYK_Shemagh_shade_G_N                
1, TRYK_Shemagh_shade_WH_N               
1, TRYK_Headset_NV                       
1, TRYK_TAC_EARMUFF_SHADE                
1, TRYK_TAC_EARMUFF                      
1, TRYK_NOMIC_TAC_EARMUFF                
1, TRYK_TAC_boonie_SET_NV                
1, TRYK_TAC_SET_NV_TAN                   
1, TRYK_TAC_SET_NV_OD                    
1, TRYK_TAC_SET_NV_WH                    
1, TRYK_TAC_SET_NV_MESH                  
1, TRYK_TAC_SET_NV_TAN_2                 
1, TRYK_TAC_SET_NV_OD_2                  
1, TRYK_TAC_SET_NV_WH_2                  
1, TRYK_TAC_SET_NV_MESH_2                
1, TRYK_headset2                         
1, TRYK_G_Shades_Black_NV                
1, TRYK_G_Shades_Blue_NV                 
1, TRYK_G_bala_ess_NV                    
1, TRYK_bandana_NV                       
1, TRYK_SPgearG_NV                       
1, TRYK_SPgear_PHC1_NV                   
1, TRYK_SPgear_PHC2_NV                   
1, TRYK_G_bala_wh_NV                     
1, TRYK_ESS_wh_NV                        
1, TRYK_Kio_Balaclava                    
1, TRYK_H_Helmet_JSDF                    
1, TRYK_H_Helmet_CC                      
1, TRYK_H_Helmet_WOOD                    
1, TRYK_H_Helmet_ACU                     
1, TRYK_H_Helmet_MARPAT_Wood             
1, TRYK_H_Helmet_MARPAT_Desert           
1, TRYK_H_Helmet_MARPAT_Desert2          
1, TRYK_H_Helmet_3C                      
1, TRYK_H_Booniehat_JSDF                 
1, TRYK_H_Booniehat_3CD                  
1, TRYK_H_Booniehat_CC                   
1, TRYK_H_Booniehat_WOOD                 
1, TRYK_H_Booniehat_MARPAT_WOOD          
1, TRYK_H_Booniehat_MARPAT_Desert        
1, TRYK_H_Booniehat_AOR1                 
1, TRYK_H_Booniehat_AOR2                 
1, TRYK_H_PASGT_BLK                      
1, TRYK_H_PASGT_OD                       
1, TRYK_H_PASGT_COYO                     
1, TRYK_H_PASGT_TAN                      
1, TRYK_H_Helmet_Snow                    
1, TRYK_H_WH                             
1, TRYK_H_GR                             
1, TRYK_H_AOR1                           
1, TRYK_H_AOR2                           
1, TRYK_H_DELTAHELM_NV                   
1, TRYK_H_EARMUFF                        
1, TRYK_H_TACEARMUFF_H                   
1, TRYK_H_Bandana_H                      
1, TRYK_H_Bandana_wig                    
1, TRYK_H_Bandana_wig_g                  
1, TRYK_H_wig                            
1, TRYK_H_headset2                       
1, TRYK_H_woolhat                        
1, TRYK_H_woolhat_CW                     
1, TRYK_H_woolhat_WH                     
1, TRYK_H_woolhat_br                     
1, TRYK_H_woolhat_cu                     
1, TRYK_H_woolhat_tan                    
1, TRYK_H_headsetcap                     
1, TRYK_H_headsetcap_blk                 
1, TRYK_H_headsetcap_od                  
1, TRYK_H_pakol                          
1, TRYK_H_pakol2                         
1, TRYK_H_LHS_HEL_G 

//Military

> MilitaryClothing
1, U_B_CTRG_1						// CTRG Combat Uniform (UBACS)
1, U_B_CTRG_2						// CTRG Combat Uniform (UBACS2)
1, U_B_CTRG_3						// CTRG Combat Uniform (Tee)
1, U_B_CombatUniform_mcam			// Combat Fatigues (MTP)
1, U_B_CombatUniform_mcam_tshirt	// Combat Fatigues (MTP) (Tee)
1, U_B_CombatUniform_mcam_vest		// Recon Fatigues (MTP)
1, U_B_CombatUniform_mcam_worn		// Worn Combat Fatigues (MTP)
1, U_B_SpecopsUniform_sgg			// Specop Fatigues (Sage)
1, U_O_OfficerUniform_ocamo			// Officer Fatigues (Hex)
1, U_I_OfficerUniform				// Combat Fatigues [AAF] (Tee)
1, U_I_CombatUniform				// Combat Fatigues [AAF]
1, U_I_CombatUniform_tshirt			// Combat Fatigues [AAF] (Tee)
1, U_I_CombatUniform_shortsleeve	// Combat Fatigues [AAF]
1, U_B_HeliPilotCoveralls			// Heli Pilot Coveralls
1, U_O_PilotCoveralls				// Pilot Coveralls [CSAT]
1, U_B_PilotCoveralls				// Pilot Coveralls [NATO]
1, U_I_pilotCoveralls				// Pilot Coveralls [AAF]
1, U_I_HeliPilotCoveralls			// Heli Pilot Coveralls
1, U_B_Wetsuit						// Wetsuit [NATO]
1, U_O_Wetsuit						// Wetsuit [CSAT]
1, U_I_Wetsuit						// Wetsuit [AAF]
1, U_O_CombatUniform_ocamo			// Heli Pilot Coveralls
1, U_O_CombatUniform_oucamo			// Fatigues (Urban) [CSAT]
1, U_O_SpecopsUniform_ocamo			// Recon Fatigues (Hex)
1, U_O_SpecopsUniform_blk			// Recon Fatigues (Black)
1, U_B_T_Soldier_AR_F               // Combat Fatigues (Tropic, Tee)
1, U_B_T_Soldier_SL_F               // Recon Fatigues (Tropic)
1, U_B_CTRG_Soldier_F               // CTRG Stealth Uniform
1, U_B_CTRG_Soldier_2_F             // CTRG Stealth Uniform (Tee)
1, U_B_CTRG_Soldier_3_F             // CTRG Stealth Uniform (Rolled-up)
1, U_B_CTRG_Soldier_urb_1_F         // CTRG Urban Uniform
1, U_B_CTRG_Soldier_urb_2_F         // CTRG Urban Uniform (Tee)
1, U_B_CTRG_Soldier_urb_3_F         // CTRG Urban Uniform (Rolled-up)
1, U_B_GEN_Soldier_F                // Gendarmerie Uniform
1, U_B_GEN_Commander_F              // Gendarmerie Commander Uniform
1, U_O_T_Soldier_F                  // Fatigues (Green Hex) [CSAT]
1, U_O_T_Officer_F                  // Officer Fatigues (Green Hex) [CSAT]
1, rhs_uniform_cu_ocp						
1, rhs_uniform_cu_ucp						
1, rhs_uniform_cu_ocp_101st                  
1, rhs_uniform_df15                          
1, rhs_uniform_emr_patchless					
1, rhs_uniform_flora_patchless				
1, rhs_uniform_flora_patchless_alt			
1, rhs_uniform_m88_patchless					
1, rhs_uniform_mflora_patchless				
1, rhs_uniform_vdv_mflora                    
1, rhs_uniform_FROG01_m81					
1, rhs_uniform_FROG01_d						
1, rhs_uniform_FROG01_wd						
1, rhs_uniform_vdv_emr_des					
1, rhs_uniform_msv_emr						
1, rhs_uniform_flora							
1, rhs_uniform_vdv_flora						
1, rhs_uniform_gorka_r_g						
1, rhs_uniform_gorka_r_y						
1, rhs_chdkz_uniform_5						
1, rhs_chdkz_uniform_4						
1, rhs_chdkz_uniform_3						
1, rhs_chdkz_uniform_2						
1, rhs_chdkz_uniform_1						
1, rhs_uniform_mvd_izlom						
1, rhs_uniform_cu_ocp_10th					
1, rhs_uniform_cu_ocp_1stcav					
1, rhs_uniform_cu_ocp_82nd					
1, rhs_uniform_cu_ucp_101st					
1, rhs_uniform_cu_ucp_10th					
1, rhs_uniform_cu_ucp_1stcav					
1, rhs_uniform_cu_ucp_82nd					
1, rhs_uniform_g3_m81						
1, rhs_uniform_g3_blk						
1, rhs_uniform_g3_mc							
1, rhs_uniform_g3_rgr						
1, rhs_uniform_g3_tan

> MilitaryBackpacks
1, B_Carryall_ocamo
1, B_Carryall_oucamo
1, B_Carryall_mcamo
1, B_Carryall_oli
1, B_Carryall_khk
1, B_Carryall_cbr
1, B_Carryall_ghex_F  
1, B_Bergen_Base_F				
1, B_Bergen_mcamo_F              
1, rhsusf_assault_eagleaiii_coy								
1, rhsusf_assault_eagleaiii_ocp			
1, rhsusf_assault_eagleaiii_ucp			
1, rhsusf_falconii_coy					
1, rhsusf_falconii_mc					
1, rhsusf_falconii						
1, rhs_assault_umbts						
1, rhs_assault_umbts_engineer_empty		
1, rhs_medic_bag 						
1, rhs_sidor 							
1, rhs_rpg_empty

> MilitaryVests
1, V_PlateCarrier1_blk
1, V_PlateCarrier1_rgr
1, V_PlateCarrier2_rgr
1, V_PlateCarrier3_rgr
1, V_PlateCarrierGL_rgr
1, V_PlateCarrierIA1_dgtl
1, V_PlateCarrierIA2_dgtl
1, V_PlateCarrierIAGL_dgtl
1, V_PlateCarrierSpec_rgr
1, V_PlateCarrierL_CTRG
1, V_PlateCarrierH_CTRG
1, rhs_6sh92								    
1, rhs_6sh92_radio							
1, rhs_6sh92_vog								
1, rhs_6sh92_vog_headset						
1, rhs_6sh92_headset							
1, rhs_6sh92_digi							
1, rhs_6sh92_digi_radio					    
1, rhs_6sh92_digi_vog						
1, rhs_6sh92_digi_vog_headset				
1, rhs_6sh92_digi_headset					
1, rhs_6b23								    
1, rhs_6b23_crew							    
1, rhs_6b23_crewofficer						
1, rhs_6b23_engineer					        
1, rhs_6b23_medic							
1, rhs_6b23_rifleman							
1, rhs_6b23_sniper							
1, rhs_6b23_6sh92							
1, rhs_6b23_6sh92_radio						
1, rhs_6b23_6sh92_vog						
1, rhs_6b23_6sh92_vog_headset				
1, rhs_6b23_6sh92_headset					
1, rhs_6b23_6sh92_headset_mapcase			
1, rhs_6b23_digi								
1, rhs_6b23_digi_crew						
1, rhs_6b23_digi_crewofficer					
1, rhs_6b23_digi_engineer					
1, rhs_6b23_digi_medic					    
1, rhs_6b23_digi_rifleman					
1, rhs_6b23_digi_sniper						
1, rhs_6b23_digi_6sh92						
1, rhs_6b23_digi_6sh92_radio					
1, rhs_6b23_digi_6sh92_vog				    
1, rhs_6b23_digi_6sh92_vog_headset			
1, rhs_6b23_digi_6sh92_headset				
1, rhs_6b23_digi_6sh92_headset_mapcase		
1, rhs_6b23_ML							    
1, rhs_6b23_ML_crew							
1, rhs_6b23_ML_crewofficer					
1, rhs_6b23_ML_engineer						
1, rhs_6b23_ML_medic							
1, rhs_6b23_ML_rifleman					    
1, rhs_6b23_ML_sniper						
1, rhs_6b23_ML_6sh92							
1, rhs_6b23_ML_6sh92_radio					
1, rhs_6b23_ML_6sh92_vog						
1, rhs_6b23_ML_6sh92_vog_headset				
1, rhs_6b23_ML_6sh92_headset					
1, rhs_6b23_ML_6sh92_headset_mapcase			
1, rhs_6b43									
1, rhs_6sh46								    
1, rhs_vest_commander						
1, rhs_vydra_3m								
1, rhsusf_iotv_ucp							
1, rhsusf_iotv_ucp_grenadier					
1, rhsusf_iotv_ucp_medic						
1, rhsusf_iotv_ucp_repair					
1, rhsusf_iotv_ucp_rifleman					
1, rhsusf_iotv_ucp_SAW						
1, rhsusf_iotv_ucp_squadleader				
1, rhsusf_iotv_ucp_teamleader				
1, rhsusf_iotv_ocp							
1, rhsusf_iotv_ocp_grenadier					
1, rhsusf_iotv_ocp_medic					    
1, rhsusf_iotv_ocp_repair					
1, rhsusf_iotv_ocp_rifleman					
1, rhsusf_iotv_ocp_SAW						
1, rhsusf_iotv_ocp_squadleader				
1, rhsusf_iotv_ocp_teamleader				
1, rhsusf_spc					            
1, rhsusf_spc_corpsman						
1, rhsusf_spc_patchless						
1, rhsusf_spc_squadleader					
1, rhsusf_spc_teamleader						
1, rhsusf_spc_light							
1, rhsusf_spc_rifleman						
1, rhsusf_spc_iar							
1, rhsusf_spcs_ocp_rifleman					
1, rhsusf_spcs_ocp							
1, rhsusf_spcs_ucp_rifleman					
1, rhsusf_spcs_ucp
1, FGN_RU_6B513_Khaki				
1, FGN_RU_6B513_Khaki_Medic			
1, FGN_RU_6B513_Khaki_Officer		
1, FGN_RU_6B513_Khaki_Sniper			
1, FGN_RU_6B513						
1, FGN_RU_6B513_Medic				
1, FGN_RU_6B513_Officer				
1, FGN_RU_6B513_Sniper				
1, FGN_RU_6B513_TTsKO				
1, FGN_RU_6B513_TTsKO_Medic			
1, FGN_RU_6B513_TTsKO_Officer		
1, FGN_RU_6B513_TTsKO_Sniper			
1, FGN_RU_6B513_VSR					
1, FGN_RU_6B513_VSR_Medic			
1, FGN_RU_6B513_VSR_Officer			
1, FGN_RU_6B513_VSR_Sniper			
1, FGN_RU_6B519_Khaki				
1, FGN_RU_6B519_Khaki_Medic			
1, FGN_RU_6B519_Khaki_Officer		
1, FGN_RU_6B519_Khaki_Sniper			
1, FGN_RU_6B519						
1, FGN_RU_6B519_Medic				
1, FGN_RU_6B519_Officer				
1, FGN_RU_6B519_Sniper				
1, FGN_RU_6B519_TTsKO				
1, FGN_RU_6B519_TTsKO_Medic			
1, FGN_RU_6B519_TTsKO_Officer		
1, FGN_RU_6B519_TTsKO_Sniper			
1, FGN_RU_6B519_VSR					
1, FGN_RU_6B519_VSR_Medic			
1, FGN_RU_6B519_VSR_Officer			
1, FGN_RU_6B519_VSR_Sniper			
1, FGN_RU_V95_Black					
1, FGN_RU_V95_Kamysh_Blue			
1, FGN_RU_V95_Kamysh					
1, FGN_RU_V95_KKO_Urban				
1, FGN_RU_V95_KKO					
1, FGN_RU_V95_Podlesok_Urban			
1, FGN_RU_V95_Podlesok				
1, FGN_RU_V95_VSR					
1, FGN_RU_V95_Black_OMON				
1, FGN_RU_V95_Kamysh_Blue_OMON		
1, FGN_RU_V95_Kamysh_OMON			
1, FGN_RU_V95_KKO_Urban_OMON			
1, FGN_RU_V95_KKO_OMON				
1, FGN_RU_V95_Podlesok_Urban_OMON	
1, FGN_RU_V95_Podlesok_OMON			
1, FGN_RU_V95_VSR_OMON				
1, FGN_RU_V95_Black_2				
1, FGN_RU_V95_Kamysh_Blue_2			
1, FGN_RU_V95_Kamysh_2				
1, FGN_RU_V95_KKO_Urban_2			
1, FGN_RU_V95_KKO_2					
1, FGN_RU_V95_Podlesok_Urban_2		
1, FGN_RU_V95_Podlesok_2				
1, FGN_RU_V95_VSR_2
1, V_PlateCarrierGL_blk
1, V_PlateCarrierGL_mtp
1, V_PlateCarrierIAGL_oli
1, V_PlateCarrierSpec_blk
1, V_PlateCarrierSpec_mtp
1, V_TacChestrig_grn_F         
1, V_TacChestrig_oli_F         
1, V_TacChestrig_cbr_F         
1, V_PlateCarrier1_tna_F       
1, V_PlateCarrier2_tna_F       
1, V_PlateCarrierSpec_tna_F    
1, V_PlateCarrierGL_tna_F      
1, V_HarnessO_ghex_F           
1, V_HarnessOGL_ghex_F         
1, V_BandollierB_ghex_F        
1, V_TacVest_gen_F             
1, V_PlateCarrier1_rgr_noflag_F
1, V_PlateCarrier2_rgr_noflag_F
1, V_RebreatherB
1, V_RebreatherIR
1, V_RebreatherIA

> MilitaryHeadgear
1, Exile_Headgear_GasMask
1, H_MilCap_ocamo
1, H_MilCap_mcamo
1, H_MilCap_oucamo
1, H_MilCap_blue
1, H_MilCap_rucamo
1, H_MilCap_dgtl
1, H_HelmetB
1, H_HelmetB_paint
1, H_HelmetB_light
1, H_HelmetB_plain_blk
1, H_HelmetSpecB
1, H_HelmetSpecB_paint1
1, H_HelmetSpecB_paint2
1, H_HelmetSpecB_blk
1, H_HelmetIA
1, H_HelmetIA_net
1, H_HelmetIA_camo
1, H_HelmetB_grass
1, H_HelmetB_snakeskin
1, H_HelmetB_desert
1, H_HelmetB_black
1, H_HelmetB_sand
1, H_HelmetB_light_grass
1, H_HelmetB_light_snakeskin
1, H_HelmetB_light_desert
1, H_HelmetB_light_black
1, H_HelmetB_light_sand
1, H_HelmetCrew_B
1, H_HelmetCrew_O
1, H_HelmetCrew_I
1, H_PilotHelmetFighter_B
1, H_PilotHelmetFighter_O
1, H_PilotHelmetFighter_I
1, H_PilotHelmetHeli_B
1, H_PilotHelmetHeli_O
1, H_PilotHelmetHeli_I
1, H_HelmetB_camo
1, H_CrewHelmetHeli_B
1, H_CrewHelmetHeli_O
1, H_CrewHelmetHeli_I
1, H_BandMask_khk
1, H_BandMask_reaper
1, H_BandMask_demon
1, H_HelmetO_oucamo
1, H_HelmetLeaderO_oucamo
1, H_HelmetSpecO_ocamo
1, H_HelmetSpecO_blk
1, H_HelmetO_ocamo
1, H_HelmetLeaderO_ocamo
1, H_HelmetO_ghex_F 
1, H_Helmet_Skate    
1, H_HelmetB_Enh_tna_F        
1, H_HelmetB_Light_tna_F 	
1, H_Beret_gen_F  
1, H_HelmetB_tna_F   		 
1, H_HelmetSpecO_ghex_F       
1, H_HelmetLeaderO_ghex_F
1, H_HelmetCrew_O_ghex_F
1, H_HelmetB_TI_tna_F
1, rhs_6b27m_digi													
1, rhs_6b27m_digi_ess								
1, rhs_6b27m_digi_bala								
1, rhs_6b27m_digi_ess_bala							
1, rhs_6b27m											
1, rhs_6b27m_bala									
1, rhs_6b27m_ess										
1, rhs_6b27m_ess_bala								
1, rhs_6b27m_ml										
1, rhs_6b27m_ml_ess									
1, rhs_6b27m_ml_bala									
1, rhs_6b27m_ML_ess_bala								
1, rhs_6b27m_green									
1, rhs_6b27m_green_ess								
1, rhs_6b27m_green_ess_bala							
1, rhs_6b26_green									
1, rhs_6b26_bala_green								
1, rhs_6b26_ess_green								
1, rhs_6b26_ess_bala_green							
1, rhs_6b26											
1, rhs_6b26_bala										
1, rhs_6b26_ess										
1, rhs_6b26_ess_bala									
1, rhs_6b28_green									
1, rhs_6b28_green_bala								
1, rhs_6b28_green_ess								
1, rhs_6b28_green_ess_bala							
1, rhs_6b28											
1, rhs_6b28_bala										
1, rhs_6b28_ess										
1, rhs_6b28_ess_bala									
1, rhs_6b28_flora									
1, rhs_6b28_flora_bala								
1, rhs_6b28_flora_ess								
1, rhs_6b28_flora_ess_bala							
1, rhs_Booniehat_digi								
1, rhs_Booniehat_flora								
1, rhs_ssh68											
1, rhs_Booniehat_m81									
1, rhs_Booniehat_marpatd								
1, rhs_Booniehat_marpatwd							
1, rhs_Booniehat_ocp									
1, rhs_Booniehat_ucp									
1, rhsusf_Bowman										
1, rhsusf_ach_bare									
1, rhsusf_ach_bare_des								
1, rhsusf_ach_bare_des_ess							
1, rhsusf_ach_bare_des_headset						
1, rhsusf_ach_bare_des_headset_ess					
1, rhsusf_ach_bare_ess								
1, rhsusf_ach_bare_headset							
1, rhsusf_ach_bare_headset_ess						
1, rhsusf_ach_bare_semi								
1, rhsusf_ach_bare_semi_ess							
1, rhsusf_ach_bare_semi_headset						
1, rhsusf_ach_bare_semi_headset_ess					
1, rhsusf_ach_bare_tan								
1, rhsusf_ach_bare_tan_ess							
1, rhsusf_ach_bare_tan_headset						
1, rhsusf_ach_bare_tan_headset_ess					
1, rhsusf_ach_bare_wood								
1, rhsusf_ach_bare_wood_ess							
1, rhsusf_ach_bare_wood_headset						
1, rhsusf_ach_bare_wood_headset_ess					
1, rhsusf_ach_helmet_ESS_ocp							
1, rhsusf_ach_helmet_ESS_ucp							
1, rhsusf_ach_helmet_M81								
1, rhsusf_ach_helmet_camo_ocp						
1, rhsusf_ach_helmet_headset_ess_ocp					
1, rhsusf_ach_helmet_headset_ess_ucp					
1, rhsusf_ach_helmet_headset_ocp						
1, rhsusf_ach_helmet_headset_ucp						
1, rhsusf_ach_helmet_ocp								
1, rhsusf_ach_helmet_ocp_norotos						
1, rhsusf_ach_helmet_ucp								
1, rhsusf_ach_helmet_ucp_norotos						
1, rhsusf_bowman_cap									
1, rhsusf_lwh_helmet_M1942							
1, rhsusf_lwh_helmet_marpatd							
1, rhsusf_lwh_helmet_marpatd_ess						
1, rhsusf_lwh_helmet_marpatd_headset					
1, rhsusf_lwh_helmet_marpatwd						
1, rhsusf_lwh_helmet_marpatwd_ess					
1, rhsusf_lwh_helmet_marpatwd_headset				
1, rhsusf_mich_bare									
1, rhsusf_mich_bare_alt								
1, rhsusf_mich_bare_alt_semi							
1, rhsusf_mich_bare_alt_tan							
1, rhsusf_mich_bare_headset							
1, rhsusf_mich_bare_norotos							
1, rhsusf_mich_bare_norotos_alt						
1, rhsusf_mich_bare_norotos_alt_headset				
1, rhsusf_mich_bare_norotos_alt_semi					
1, rhsusf_mich_bare_norotos_alt_semi_headset			
1, rhsusf_mich_bare_norotos_alt_tan					
1, rhsusf_mich_bare_norotos_alt_tan_headset			
1, rhsusf_mich_bare_norotos_arc						
1, rhsusf_mich_bare_norotos_arc_alt					
1, rhsusf_mich_bare_norotos_arc_alt_headset			
1, rhsusf_mich_bare_norotos_arc_alt_semi				
1, rhsusf_mich_bare_norotos_arc_alt_semi_headset		
1, rhsusf_mich_bare_norotos_arc_alt_tan				
1, rhsusf_mich_bare_norotos_arc_alt_tan_headset		
1, rhsusf_mich_bare_norotos_arc_headset				
1, rhsusf_mich_bare_norotos_arc_semi					
1, rhsusf_mich_bare_norotos_arc_semi_headset			
1, rhsusf_mich_bare_norotos_arc_tan					
1, rhsusf_mich_bare_norotos_headset					
1, rhsusf_mich_bare_norotos_semi						
1, rhsusf_mich_bare_norotos_semi_headset				
1, rhsusf_mich_bare_norotos_tan						
1, rhsusf_mich_bare_norotos_tan_headset				
1, rhsusf_mich_bare_semi								
1, rhsusf_mich_bare_semi_headset						
1, rhsusf_mich_bare_tan								
1, rhsusf_mich_bare_tan_headset						
1, rhsusf_mich_helmet_marpatd_alt_headset			
1, rhsusf_mich_helmet_marpatd_headset				
1, rhsusf_mich_helmet_marpatd_norotos				
1, rhsusf_mich_helmet_marpatd_norotos_arc			
1, rhsusf_mich_helmet_marpatd_norotos_arc_headset	
1, rhsusf_mich_helmet_marpatd_norotos_headset		
1, rhsusf_mich_helmet_marpatwd						
1, rhsusf_mich_helmet_marpatwd_alt					
1, rhsusf_mich_helmet_marpatwd_alt_headset			
1, rhsusf_mich_helmet_marpatwd_headset				
1, rhsusf_mich_helmet_marpatwd_norotos				
1, rhsusf_mich_helmet_marpatwd_norotos_arc			
1, rhsusf_mich_helmet_marpatwd_norotos_arc_headset	
1, rhsusf_mich_helmet_marpatwd_norotos_headset		
1, rhs_altyn_novisor 								
1, rhs_altyn_novisor_bala							
1, rhs_altyn_novisor_ess								
1, rhs_altyn_novisor_ess_bala						
1, rhs_altyn_visordown								
1, rhs_altyn											
1, rhs_altyn_bala									
1, rhsusf_opscore_bk_pelt							
1, rhsusf_opscore_bk									
1, rhsusf_opscore_coy_cover							
1, rhsusf_opscore_coy_cover_pelt						
1, rhsusf_opscore_fg									
1, rhsusf_opscore_fg_pelt							
1, rhsusf_opscore_fg_pelt_cam						
1, rhsusf_opscore_fg_pelt_nsw						
1, rhsusf_opscore_mc									
1, rhsusf_opscore_mc_pelt							
1, rhsusf_opscore_mc_pelt_nsw						
1, rhsusf_opscore_mc_cover							
1, rhsusf_opscore_mc_cover_pelt						
1, rhsusf_opscore_mc_cover_pelt_nsw					
1, rhsusf_opscore_mc_cover_pelt_cam					
1, rhsusf_opscore_paint								
1, rhsusf_opscore_paint_pelt							
1, rhsusf_opscore_paint_pelt_nsw						
1, rhsusf_opscore_paint_pelt_nsw_cam					
1, rhsusf_opscore_rg_cover							
1, rhsusf_opscore_rg_cover_pelt						
1, rhsusf_opscore_ut									
1, rhsusf_opscore_ut_pelt							
1, rhsusf_opscore_ut_pelt_cam						
1, rhsusf_opscore_ut_pelt_nsw						
1, rhsusf_opscore_ut_pelt_nsw_cam					
1, rhsusf_opscore_mar_ut_pelt						
1, rhsusf_opscore_mar_ut								
1, rhsusf_opscore_mar_fg_pelt						
1, rhsusf_opscore_mar_fg								
1, rhsusf_protech_helmet								
1, rhsusf_protech_helmet_ess							
1, rhsusf_protech_helmet_rhino						
1, rhsusf_protech_helmet_rhino_ess
1, FGN_CauR_Beanie_Black								
1, FGN_CauR_Beanie_Brown				
1, FGN_CauR_Beanie_Woodland			
1, FGN_RU_Beret_OMON_New				
1, FGN_RU_OSNBeret					
1, FGN_CauR_Boonie_M81				
1, FGN_FieldCap_Kamysh_Blue			
1, FGN_FieldCap_Kamysh				
1, FGN_CauR_Pakol_03					
1, FGN_CauR_Pakol_01					
1, FGN_CauR_Pakol_02					
1, FGN_CauR_PatrolCap_M81			
1, FGN_SSH68_Flora					
1, FGN_SSH68_Khaki					
1, FGN_SSH68_KLMK					
1, FGN_SSH68_TTsKO					
1, FGN_SSH68_TTsKO2					
1, FGN_SSH68_VSR2					
1, FGN_SSH68_VSR						
1, FGN_SferaS_Green					
1, FGN_SferaS_VSR					
1, FGN_Sfera_Green					
1, FGN_Sfera_VSR						
1, FGN_ZSH12							
1, FGN_ZSH12_Black					
1, FGN_ZSH12_Balaclava			

> Ghillies
20, U_B_GhillieSuit			// Ghillie Suit [NATO]
20, U_O_GhillieSuit			// Ghillie Suit [CSAT]
20, U_I_GhillieSuit			// Ghillie Suit [AAF]
1, U_B_FullGhillie_ard		
1, U_B_FullGhillie_lsh
1, U_B_FullGhillie_sard
1, U_O_FullGhillie_ard
1, U_O_FullGhillie_lsh
1, U_O_FullGhillie_sard
1, U_I_FullGhillie_ard
1, U_I_FullGhillie_lsh
1, U_I_FullGhillie_sard
1, U_B_T_Sniper_F                   // Ghillie Suit (Tropic) [NATO]
1, U_B_T_Soldier_F        			// Ghillie Suit (Tropic) [NATO]
1, U_B_T_FullGhillie_tna_F          // Full Ghillie (Jungle) [NATO]
1, U_O_T_Sniper_F                   // Ghillie Suit (Green Hex) [CSAT]
1, U_O_T_FullGhillie_tna_F          // Full Ghillie (Jungle) [CSAT]

///////////////////////////////////////////////////////////////////////////////
// Other Items
///////////////////////////////////////////////////////////////////////////////

> MedicalItems
10, Exitem_bandage_dirty
9, Exitem_bloodbag
20,Exitem_dressing
10, Exitem_antibiotic
10, Exitem_painkillers
10, Exitem_vitamins
10, Exitem_disinfectant
9, Exile_Item_InstaDoc
1, Exile_Item_Defibrillator
30, Exile_Item_Bandage
15, Exile_Item_Vishpirin

> IndustrialItems
5, Exitem_flashlight
5, Exitem_torch
5, Exitem_gascooker
3, Exitem_engine
3, Exitem_rotor
3, Exitem_fueltank
3, Exitem_windshield
3, Exitem_carbattery
5, Exitem_measuringtape
1, Exile_Item_Knife
5, Exile_Item_Cement
5, Exile_Item_FloodLightKit
5, Exile_Item_PortableGeneratorKit
5, Exile_Item_MetalBoard
5, Exile_Item_Foolbox
5, Exile_Item_Sand
5, Exile_Item_Grinder
5, Exile_Item_MetalScrews
10, Exile_Melee_SledgeHammer
5, Exile_Item_ExtensionCord
5, Exile_Item_LightBulb
5, Exile_Item_WaterCanisterEmpty
10, Exile_Melee_Shovel
5, Exile_Item_JunkMetal
10, Exile_Item_Handsaw
10, Exile_Item_Pliers
10, Exile_Item_ScrewDriver
10, Exile_Melee_Axe

> Vehicle
25, Exile_Item_FuelCanisterFull
25, Exile_Item_FuelCanisterEmpty
10, Exile_Item_DuctTape
10, Exile_Item_Rope

// Throwables

> Chemlights
1, Chemlight_blue
1, Chemlight_green
1, Chemlight_red
1, Chemlight_yellow

> RoadFlares
1, FlareGreen_F
1, FlareRed_F
1, FlareWhite_F
1, FlareYellow_F

> SmokeGrenades
1, SmokeShell
1, SmokeShellRed
1, SmokeShellGreen
1, SmokeShellYellow
1, SmokeShellPurple
1, SmokeShellBlue
1, SmokeShellOrange

> Restraints
1, Exile_Item_ZipTie

> Electronics
5, Exile_Item_ThermalScannerPro
50, Exile_Item_Laptop
80, Exile_Item_CordlessScrewdriver
20, Exile_Item_Codelock
40, Exile_Item_BaseCameraKit
20, Exitem_documents

 // Trash or items not currently being used

> Trash
1, Exitem_can_crushed
1, Exitem_camera
1, Exitem_pillow_flannel
1, Exitem_pillow
1, Exitem_pencil
1, Exitem_cloth
1, Exitem_airhorn
1, Exitem_nails
1, Exitem_bucket
1, Exile_Item_Can_Empty
1, Exile_Item_ToiletPaper
1, Exile_Item_PlasticBottleEmpty			// Nothing :)
1, Exile_Item_Magazine01
1, Exile_Item_Magazine02
1, Exile_Item_Magazine03
1, Exile_Item_Magazine04

> Unused
1, Exile_Item_CordlessScrewdriver
1, Exile_Item_FireExtinguisher
1, Exile_Item_OilCanister
1, Exile_Item_Hammer
1, Exile_Item_Carwheel
1, Exile_Item_SleepingMat
1, Exile_Item_Wrench