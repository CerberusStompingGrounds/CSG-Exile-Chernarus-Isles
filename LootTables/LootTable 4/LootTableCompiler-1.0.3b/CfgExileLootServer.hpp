class CfgExileLootServer
{
	class LootTables
	{

		/*
			Percental Item Group Spawn Chances of CivillianLowerClass:

			MedicalItems      = 5.00%
			Chemlights        = 5.00%
			RoadFlares        = 5.00%
			Trash             = 5.00%
			Food              = 10.00%
			Drinks            = 10.00%
			CivilianWeapons   = 10.00%
			CivilianItems     = 10.00%
			CivilianClothing  = 10.00%
			CivilianBackpacks = 10.00%
			CivilianVests     = 10.00%
			CivilianHeadgear  = 10.00%
		*/
		CivillianLowerClass[] = {"Food", "CivilianHeadgear", "CivilianHeadgear", "CivilianBackpacks", "CivilianVests", "CivilianItems", "Drinks", "CivilianWeapons", "CivilianBackpacks", "RoadFlares", "Chemlights", "Food", "Trash", "CivilianItems", "CivilianVests", "CivilianVests", "Drinks", "CivilianItems", "MedicalItems", "Drinks", "Food", "Food", "CivilianHeadgear", "CivilianItems", "Chemlights", "CivilianBackpacks", "RoadFlares", "CivilianVests", "Drinks", "CivilianItems", "CivilianBackpacks", "Trash", "RoadFlares", "CivilianItems", "Chemlights", "Drinks", "CivilianBackpacks", "CivilianClothing", "Food", "CivilianWeapons", "MedicalItems", "CivilianVests", "Food", "CivilianWeapons", "CivilianWeapons", "CivilianItems", "CivilianClothing", "Food", "CivilianClothing", "Food", "CivilianClothing", "CivilianHeadgear", "Food", "Food", "RoadFlares", "CivilianClothing", "CivilianWeapons", "Chemlights", "Drinks", "CivilianVests", "MedicalItems", "CivilianWeapons", "Chemlights", "CivilianHeadgear", "Drinks", "CivilianBackpacks", "Trash", "CivilianBackpacks", "CivilianVests", "CivilianWeapons", "CivilianClothing", "CivilianClothing", "CivilianClothing", "Drinks", "Drinks", "Trash", "Trash", "CivilianHeadgear", "CivilianBackpacks", "CivilianClothing", "CivilianVests", "CivilianWeapons", "CivilianBackpacks", "CivilianClothing", "CivilianVests", "MedicalItems", "CivilianHeadgear", "CivilianItems", "CivilianWeapons", "CivilianVests", "CivilianBackpacks", "MedicalItems", "CivilianWeapons", "CivilianItems", "Drinks", "CivilianItems", "CivilianHeadgear", "CivilianHeadgear", "RoadFlares", "CivilianHeadgear"};

		/*
			Percental Item Group Spawn Chances of CivillianUpperClass:

			CivilianWeapons   = 5.26%
			RifleAttachments  = 5.26%
			GuerillaItems     = 5.26%
			GuerillaClothing  = 5.26%
			GuerillaBackpacks = 5.26%
			GuerillaVests     = 5.26%
			GuerillaHeadgear  = 5.26%
			MedicalItems      = 10.53%
			Chemlights        = 10.53%
			RoadFlares        = 10.53%
			Trash             = 10.53%
			Food              = 10.53%
			Drinks            = 10.53%
		*/
		CivillianUpperClass[] = {"RoadFlares", "Chemlights", "RoadFlares", "GuerillaVests", "Food", "Chemlights", "Trash", "GuerillaItems", "RifleAttachments", "CivilianWeapons", "GuerillaHeadgear", "Drinks", "GuerillaClothing", "Trash", "MedicalItems", "MedicalItems", "RoadFlares", "MedicalItems", "GuerillaClothing", "Chemlights", "Drinks", "Food", "Trash", "RoadFlares", "Food", "GuerillaVests", "GuerillaItems", "MedicalItems", "Food", "Food", "Drinks", "Food", "Trash", "RoadFlares", "Chemlights", "Chemlights", "CivilianWeapons", "GuerillaBackpacks", "Food", "Chemlights", "Trash", "Food", "GuerillaHeadgear", "MedicalItems", "RoadFlares", "GuerillaHeadgear", "GuerillaVests", "GuerillaBackpacks", "MedicalItems", "GuerillaHeadgear", "Chemlights", "Chemlights", "CivilianWeapons", "MedicalItems", "GuerillaHeadgear", "Drinks", "Drinks", "RifleAttachments", "RifleAttachments", "GuerillaClothing", "Trash", "Drinks", "RoadFlares", "GuerillaBackpacks", "Drinks", "GuerillaBackpacks", "Trash", "GuerillaClothing", "GuerillaItems", "GuerillaVests", "RoadFlares", "GuerillaVests", "MedicalItems", "Drinks", "Trash", "Chemlights", "GuerillaItems", "MedicalItems", "Trash", "Food", "RoadFlares", "Chemlights", "GuerillaBackpacks", "CivilianWeapons", "RifleAttachments", "Drinks", "RifleAttachments", "MedicalItems", "Trash", "GuerillaItems", "GuerillaClothing", "Food", "CivilianWeapons", "RoadFlares", "Drinks"};

		/*
			Percental Item Group Spawn Chances of Shop:

			CivilianWeapons   = 3.68%
			CivilianItems     = 3.68%
			CivilianClothing  = 3.68%
			CivilianBackpacks = 3.68%
			CivilianVests     = 3.68%
			CivilianHeadgear  = 3.68%
			MedicalItems      = 3.68%
			Chemlights        = 7.35%
			RoadFlares        = 7.35%
			Trash             = 7.35%
			Food              = 25.74%
			Drinks            = 25.74%
			Electronics       = 0.74%
		*/
		Shop[] = {"CivilianBackpacks", "Drinks", "Drinks", "Food", "Food", "CivilianBackpacks", "Food", "CivilianWeapons", "Food", "Drinks", "Food", "Food", "Drinks", "Food", "Food", "Food", "Drinks", "Food", "MedicalItems", "CivilianWeapons", "Food", "CivilianHeadgear", "CivilianVests", "RoadFlares", "Trash", "Food", "Drinks", "Trash", "CivilianBackpacks", "Food", "CivilianVests", "CivilianVests", "CivilianClothing", "Food", "Drinks", "Food", "CivilianItems", "Chemlights", "CivilianWeapons", "CivilianVests", "Food", "Drinks", "CivilianClothing", "Drinks", "Food", "Chemlights", "Drinks", "Food", "CivilianClothing", "RoadFlares", "RoadFlares", "Drinks", "Drinks", "RoadFlares", "CivilianHeadgear", "MedicalItems", "Drinks", "Drinks", "Trash", "Food", "Food", "Trash", "RoadFlares", "Drinks", "Trash", "CivilianVests", "Drinks", "Food", "Trash", "RoadFlares", "Chemlights", "Food", "Drinks", "Food", "Food", "Food", "CivilianHeadgear", "Drinks", "Drinks", "CivilianItems", "Drinks", "Drinks", "MedicalItems", "MedicalItems", "Chemlights", "Drinks", "CivilianClothing", "Drinks", "Trash", "CivilianWeapons", "Food", "Food", "Drinks", "Food", "Chemlights", "Food", "Chemlights", "Trash", "Food", "CivilianHeadgear", "CivilianItems", "Drinks", "RoadFlares", "Food", "Chemlights", "RoadFlares", "Drinks", "CivilianItems", "RoadFlares", "Drinks", "Drinks", "Trash", "Chemlights", "Drinks", "CivilianHeadgear", "Chemlights", "Food", "Drinks", "Food", "Food", "Food", "CivilianBackpacks", "Drinks", "Chemlights", "Electronics", "Drinks", "CivilianClothing", "Drinks", "CivilianWeapons", "Trash", "CivilianBackpacks", "Drinks", "MedicalItems", "Drinks", "CivilianItems", "RoadFlares"};

		/*
			Percental Item Group Spawn Chances of Industrial:

			Vehicle         = 16.13%
			IndustrialItems = 16.13%
			Chemlights      = 19.35%
			RoadFlares      = 19.35%
			SmokeGrenades   = 3.23%
			Food            = 9.68%
			MedicalItems    = 6.45%
			Drinks          = 9.68%
		*/
		Industrial[] = {"Vehicle", "Food", "Vehicle", "Vehicle", "Drinks", "Chemlights", "Chemlights", "Vehicle", "Food", "Chemlights", "RoadFlares", "Chemlights", "MedicalItems", "Chemlights", "RoadFlares", "SmokeGrenades", "Drinks", "RoadFlares", "RoadFlares", "Food", "RoadFlares", "MedicalItems", "RoadFlares", "Food", "RoadFlares", "IndustrialItems", "RoadFlares", "Vehicle", "RoadFlares", "IndustrialItems", "SmokeGrenades", "Drinks", "Chemlights", "RoadFlares", "Vehicle", "Vehicle", "MedicalItems", "Chemlights", "RoadFlares", "RoadFlares", "Chemlights", "Food", "Drinks", "Drinks", "Vehicle", "Vehicle", "Chemlights", "IndustrialItems", "Vehicle", "Drinks", "Vehicle", "Chemlights", "MedicalItems", "Drinks", "IndustrialItems", "RoadFlares", "Vehicle", "RoadFlares", "Chemlights", "RoadFlares", "SmokeGrenades", "RoadFlares", "RoadFlares", "RoadFlares", "IndustrialItems", "Drinks", "Vehicle", "SmokeGrenades", "Drinks", "Food", "Drinks", "Chemlights", "Chemlights", "RoadFlares", "IndustrialItems", "Food", "RoadFlares", "IndustrialItems", "RoadFlares", "Chemlights", "IndustrialItems", "MedicalItems", "IndustrialItems", "Drinks", "MedicalItems", "Chemlights", "RoadFlares", "RoadFlares", "Chemlights", "Vehicle", "Drinks", "MedicalItems", "Chemlights", "MedicalItems", "IndustrialItems", "Chemlights", "Vehicle", "Vehicle", "SmokeGrenades", "Vehicle", "Vehicle", "RoadFlares", "IndustrialItems", "Food", "RoadFlares", "IndustrialItems", "IndustrialItems", "Vehicle", "Chemlights", "Drinks", "RoadFlares", "IndustrialItems", "Food", "RoadFlares", "IndustrialItems", "Food", "Chemlights", "RoadFlares", "Chemlights", "Vehicle", "IndustrialItems", "IndustrialItems", "IndustrialItems", "Vehicle", "IndustrialItems", "Chemlights", "IndustrialItems", "IndustrialItems", "Food", "Food", "Vehicle", "IndustrialItems", "Drinks", "Vehicle", "Drinks", "Chemlights", "Vehicle", "MedicalItems", "Chemlights", "RoadFlares", "MedicalItems", "Chemlights", "IndustrialItems", "Vehicle", "IndustrialItems", "RoadFlares", "Food", "Food", "Chemlights", "Chemlights", "Food", "IndustrialItems", "Chemlights", "Chemlights", "Chemlights"};

		/*
			Percental Item Group Spawn Chances of Factories:

			Vehicle                    = 17.44%
			Chemlights                 = 17.44%
			CivilianWeapons            = 5.81%
			RoadFlares                 = 8.72%
			RifleAttachments           = 2.91%
			GuerillaClothing           = 5.81%
			GuerillaBackpacksBackpacks = 5.81%
			GuerillaVests              = 5.81%
			GuerillaHeadgear           = 5.81%
			LMG                        = 0.58%
			LMGAmmo                    = 0.58%
			Food                       = 8.72%
			Drinks                     = 8.72%
			MedicalItems               = 5.81%
		*/
		Factories[] = {"GuerillaHeadgear", "Vehicle", "Chemlights", "GuerillaHeadgear", "GuerillaHeadgear", "Vehicle", "GuerillaHeadgear", "Drinks", "GuerillaHeadgear", "Food", "Food", "GuerillaVests", "Chemlights", "GuerillaVests", "GuerillaVests", "Vehicle", "Drinks", "RoadFlares", "Vehicle", "RoadFlares", "Chemlights", "Chemlights", "LMGAmmo", "Chemlights", "Vehicle", "Chemlights", "RoadFlares", "Food", "GuerillaClothing", "Vehicle", "Drinks", "Food", "RifleAttachments", "MedicalItems", "GuerillaClothing", "Chemlights", "MedicalItems", "Vehicle", "Vehicle", "RoadFlares", "RoadFlares", "GuerillaHeadgear", "Vehicle", "Vehicle", "Food", "RoadFlares", "Vehicle", "GuerillaClothing", "GuerillaBackpacksBackpacks", "Chemlights", "RifleAttachments", "CivilianWeapons", "MedicalItems", "Drinks", "GuerillaVests", "Food", "Vehicle", "GuerillaClothing", "MedicalItems", "MedicalItems", "GuerillaBackpacksBackpacks", "GuerillaBackpacksBackpacks", "Drinks", "RoadFlares", "Food", "RifleAttachments", "Vehicle", "RifleAttachments", "MedicalItems", "Vehicle", "Food", "Chemlights", "GuerillaVests", "GuerillaClothing", "GuerillaVests", "MedicalItems", "RoadFlares", "Food", "RoadFlares", "MedicalItems", "RoadFlares", "Chemlights", "Chemlights", "Vehicle", "Chemlights", "GuerillaBackpacksBackpacks", "GuerillaClothing", "CivilianWeapons", "Chemlights", "CivilianWeapons", "Food", "GuerillaClothing", "GuerillaHeadgear", "MedicalItems", "Vehicle", "Chemlights", "MedicalItems", "GuerillaBackpacksBackpacks", "Chemlights", "GuerillaHeadgear", "GuerillaBackpacksBackpacks", "Chemlights", "Vehicle", "Chemlights", "Food", "Chemlights", "Chemlights", "GuerillaBackpacksBackpacks", "Chemlights", "GuerillaHeadgear", "Chemlights", "GuerillaHeadgear", "Drinks", "Drinks", "Food", "Drinks", "Vehicle", "Vehicle", "RoadFlares", "Drinks", "Chemlights", "Chemlights", "GuerillaVests", "GuerillaBackpacksBackpacks", "Drinks", "GuerillaVests", "Vehicle", "CivilianWeapons", "Chemlights", "GuerillaClothing", "GuerillaVests", "CivilianWeapons", "RoadFlares", "Vehicle", "GuerillaVests", "Vehicle", "CivilianWeapons", "CivilianWeapons", "Chemlights", "Vehicle", "Drinks", "Drinks", "Drinks", "Chemlights", "RifleAttachments", "Chemlights", "Vehicle", "Vehicle", "GuerillaBackpacksBackpacks", "RoadFlares", "Chemlights", "Vehicle", "Food", "Food", "GuerillaBackpacksBackpacks", "LMG", "CivilianWeapons", "Drinks", "Drinks", "Vehicle", "GuerillaClothing", "RoadFlares", "CivilianWeapons", "RoadFlares", "GuerillaClothing", "Vehicle", "Vehicle", "Chemlights", "Vehicle", "Food", "CivilianWeapons", "Chemlights"};

		/*
			Percental Item Group Spawn Chances of VehicleService:

			Pistols           = 5.56%
			Vehicle           = 16.67%
			Unused            = 8.33%
			PistolAmmo        = 5.56%
			CivilianItems     = 2.78%
			CivilianClothing  = 2.78%
			CivilianBackpacks = 2.78%
			CivilianVests     = 2.78%
			CivilianHeadgear  = 2.78%
			MedicalItems      = 5.56%
			Chemlights        = 5.56%
			RoadFlares        = 5.56%
			Trash             = 5.56%
			Food              = 13.89%
			Drinks            = 13.89%
		*/
		VehicleService[] = {"Unused", "Chemlights", "Drinks", "Vehicle", "Unused", "Drinks", "Food", "Drinks", "Food", "Chemlights", "Trash", "Pistols", "Vehicle", "MedicalItems", "Food", "CivilianHeadgear", "PistolAmmo", "CivilianBackpacks", "Chemlights", "Vehicle", "Unused", "MedicalItems", "PistolAmmo", "MedicalItems", "MedicalItems", "Food", "CivilianItems", "Food", "Food", "CivilianBackpacks", "Drinks", "Trash", "CivilianClothing", "Unused", "CivilianClothing", "Vehicle", "PistolAmmo", "RoadFlares", "Vehicle", "CivilianBackpacks", "Food", "Vehicle", "Drinks", "Vehicle", "CivilianItems", "Food", "Drinks", "RoadFlares", "Unused", "CivilianHeadgear", "CivilianVests", "Vehicle", "Vehicle", "Food", "CivilianItems", "Vehicle", "CivilianItems", "Unused", "Food", "Vehicle", "Drinks", "Unused", "Pistols", "Unused", "Drinks", "Chemlights", "PistolAmmo", "Food", "Trash", "CivilianHeadgear", "Vehicle", "Trash", "Vehicle", "Drinks", "Pistols", "Chemlights", "Vehicle", "Vehicle", "CivilianClothing", "Drinks", "Trash", "Vehicle", "Vehicle", "Vehicle", "RoadFlares", "Chemlights", "PistolAmmo", "CivilianHeadgear", "Vehicle", "PistolAmmo", "Pistols", "Chemlights", "Food", "Trash", "Drinks", "Trash", "Vehicle", "PistolAmmo", "Pistols", "Drinks", "Pistols", "Vehicle", "Vehicle", "CivilianVests", "CivilianBackpacks", "Trash", "CivilianClothing", "Vehicle", "Unused", "Drinks", "Vehicle", "Food", "MedicalItems", "Pistols", "Drinks", "Unused", "Drinks", "Food", "PistolAmmo", "Pistols", "Food", "RoadFlares", "Chemlights", "Vehicle", "Drinks", "Pistols", "MedicalItems", "RoadFlares", "Food", "Unused", "Unused", "Drinks", "PistolAmmo", "Chemlights", "Drinks", "Food", "CivilianClothing", "RoadFlares", "RoadFlares", "Trash", "Drinks", "Drinks", "Food", "Drinks", "RoadFlares", "Unused", "Pistols", "CivilianItems", "Food", "Food", "Vehicle", "RoadFlares", "Drinks", "CivilianVests", "Drinks", "Chemlights", "Drinks", "Food", "MedicalItems", "CivilianHeadgear", "Food", "Vehicle", "CivilianBackpacks", "PistolAmmo", "Trash", "Food", "Unused", "Food", "MedicalItems", "Vehicle", "CivilianVests", "MedicalItems", "Vehicle", "CivilianVests", "MedicalItems", "Unused", "RoadFlares", "Vehicle", "Drinks", "Food"};

		/*
			Percental Item Group Spawn Chances of Military:

			Pistols           = 2.18%
			PistolAmmo        = 2.18%
			SMG               = 2.18%
			SMGAmmo           = 2.18%
			Rifles            = 6.54%
			RifleAmmo         = 6.54%
			RifleAttachments  = 6.54%
			LMG               = 3.27%
			LMGAmmo           = 3.27%
			Snipers           = 1.09%
			SniperAmmo        = 1.09%
			SniperAttachments = 2.18%
			HandGrenades      = 1.09%
			Explosives        = 0.22%
			MilitaryClothing  = 3.27%
			MilitaryBackpacks = 3.27%
			MilitaryVests     = 3.27%
			MilitaryHeadgear  = 3.27%
			Ghillies          = 0.22%
			MedicalItems      = 6.54%
			IndustrialItems   = 2.18%
			Vehicle           = 6.54%
			Chemlights        = 6.54%
			RoadFlares        = 6.54%
			SmokeGrenades     = 6.54%
			Restraints        = 6.54%
			Electronics       = 0.44%
			Trash             = 4.36%
		*/
		Military[] = {"MilitaryClothing", "Chemlights", "Rifles", "LMG", "LMGAmmo", "Vehicle", "RifleAttachments", "RifleAttachments", "MilitaryClothing", "Chemlights", "MedicalItems", "MedicalItems", "RifleAmmo", "SmokeGrenades", "Restraints", "Trash", "SMG", "Vehicle", "Restraints", "MilitaryClothing", "LMG", "Restraints", "Rifles", "HandGrenades", "Restraints", "MedicalItems", "RifleAmmo", "MilitaryVests", "Vehicle", "MilitaryBackpacks", "RifleAttachments", "Vehicle", "Trash", "Restraints", "HandGrenades", "SniperAmmo", "RifleAttachments", "LMGAmmo", "MilitaryHeadgear", "MedicalItems", "Vehicle", "MilitaryClothing", "RifleAttachments", "IndustrialItems", "MedicalItems", "SMGAmmo", "MedicalItems", "Vehicle", "Trash", "Trash", "Rifles", "MilitaryBackpacks", "MilitaryClothing", "MilitaryVests", "RifleAmmo", "Chemlights", "RifleAmmo", "PistolAmmo", "Trash", "RifleAmmo", "Trash", "RoadFlares", "Chemlights", "Restraints", "RifleAttachments", "Restraints", "Snipers", "RifleAmmo", "MedicalItems", "Vehicle", "SMGAmmo", "RifleAttachments", "Rifles", "RoadFlares", "PistolAmmo", "Restraints", "SMG", "MedicalItems", "Trash", "Rifles", "Restraints", "Restraints", "Chemlights", "PistolAmmo", "Pistols", "SmokeGrenades", "HandGrenades", "Rifles", "MilitaryHeadgear", "MilitaryVests", "IndustrialItems", "SniperAttachments", "Restraints", "RifleAmmo", "Snipers", "RoadFlares", "SmokeGrenades", "Trash", "RifleAttachments", "Rifles", "Vehicle", "Vehicle", "SmokeGrenades", "SniperAmmo", "PistolAmmo", "RifleAmmo", "RifleAttachments", "MilitaryClothing", "SniperAttachments", "Vehicle", "IndustrialItems", "LMGAmmo", "RifleAttachments", "SMG", "Restraints", "LMG", "Pistols", "RifleAttachments", "SmokeGrenades", "Chemlights", "Chemlights", "Vehicle", "LMG", "Vehicle", "SMGAmmo", "SmokeGrenades", "RifleAttachments", "Explosives", "PistolAmmo", "Restraints", "Vehicle", "RifleAttachments", "LMGAmmo", "RifleAmmo", "Chemlights", "Trash", "SmokeGrenades", "SmokeGrenades", "RoadFlares", "Vehicle", "SniperAttachments", "Restraints", "RoadFlares", "MedicalItems", "MilitaryHeadgear", "MedicalItems", "Rifles", "SmokeGrenades", "RifleAmmo", "RoadFlares", "Vehicle", "MilitaryHeadgear", "MilitaryClothing", "RifleAttachments", "Pistols", "RoadFlares", "Restraints", "Pistols", "Vehicle", "Chemlights", "Electronics", "RifleAttachments", "RoadFlares", "MedicalItems", "Trash", "MilitaryBackpacks", "SniperAmmo", "Rifles", "RifleAmmo", "RoadFlares", "SniperAttachments", "Rifles", "MilitaryBackpacks", "RifleAmmo", "Trash", "MilitaryHeadgear", "SmokeGrenades", "MedicalItems", "MilitaryHeadgear", "MilitaryClothing", "MedicalItems", "LMG", "Trash", "LMG", "MedicalItems", "MilitaryVests", "Pistols", "RifleAttachments", "RoadFlares", "MilitaryBackpacks", "Rifles", "SmokeGrenades", "Pistols", "Chemlights", "SmokeGrenades", "Vehicle", "MedicalItems", "MilitaryHeadgear", "RifleAmmo", "RoadFlares", "SniperAttachments", "RifleAmmo", "PistolAmmo", "MedicalItems", "Snipers", "Rifles", "Chemlights", "RifleAmmo", "RifleAmmo", "MilitaryBackpacks", "MilitaryClothing", "MilitaryBackpacks", "Rifles", "Rifles", "LMGAmmo", "RifleAttachments", "MilitaryBackpacks", "MilitaryVests", "LMGAmmo", "SniperAttachments", "Vehicle", "SmokeGrenades", "SmokeGrenades", "MilitaryHeadgear", "LMG", "LMGAmmo", "LMGAmmo", "SmokeGrenades", "Restraints", "SMG", "SMGAmmo", "SmokeGrenades", "SmokeGrenades", "SniperAttachments", "MilitaryClothing", "LMGAmmo", "Vehicle", "RifleAmmo", "RifleAmmo", "MedicalItems", "RifleAttachments", "RifleAmmo", "MilitaryBackpacks", "SniperAmmo", "Trash", "Restraints", "MilitaryHeadgear", "SniperAttachments", "Trash", "LMG", "Trash", "Chemlights", "LMGAmmo", "MilitaryVests", "MilitaryVests", "SniperAttachments", "Restraints", "RifleAmmo", "RoadFlares", "SMGAmmo", "Electronics", "RoadFlares", "MilitaryClothing", "MedicalItems", "SniperAmmo", "RoadFlares", "MedicalItems", "Chemlights", "MedicalItems", "LMGAmmo", "SMG", "SmokeGrenades", "MilitaryBackpacks", "Restraints", "IndustrialItems", "SMGAmmo", "IndustrialItems", "RoadFlares", "Restraints", "Vehicle", "MilitaryHeadgear", "RoadFlares", "Vehicle", "SmokeGrenades", "RoadFlares", "MilitaryVests", "MilitaryHeadgear", "RifleAmmo", "Trash", "MilitaryVests", "SmokeGrenades", "RifleAmmo", "MilitaryClothing", "SMGAmmo", "MedicalItems", "Chemlights", "RifleAttachments", "MilitaryVests", "RifleAttachments", "SMGAmmo", "MedicalItems", "MilitaryHeadgear", "Trash", "Vehicle", "SmokeGrenades", "Chemlights", "IndustrialItems", "RoadFlares", "Rifles", "Restraints", "LMG", "Rifles", "MilitaryBackpacks", "Vehicle", "RifleAmmo", "MedicalItems", "MedicalItems", "Rifles", "Pistols", "PistolAmmo", "Trash", "Chemlights", "SMG", "SmokeGrenades", "SniperAttachments", "Restraints", "Rifles", "MilitaryVests", "MilitaryHeadgear", "RoadFlares", "RoadFlares", "RifleAttachments", "Vehicle", "SmokeGrenades", "Chemlights", "SMGAmmo", "RifleAttachments", "Chemlights", "MedicalItems", "Restraints", "IndustrialItems", "Chemlights", "SMG", "SMG", "Chemlights", "Ghillies", "MilitaryBackpacks", "IndustrialItems", "IndustrialItems", "MilitaryVests", "PistolAmmo", "LMG", "SmokeGrenades", "RoadFlares", "IndustrialItems", "MilitaryHeadgear", "Chemlights", "RoadFlares", "Chemlights", "RoadFlares", "Rifles", "MedicalItems", "LMGAmmo", "RifleAttachments", "RoadFlares", "LMG", "Chemlights", "RifleAttachments", "MedicalItems", "Restraints", "Snipers", "Restraints", "MilitaryBackpacks", "SMG", "LMG", "SmokeGrenades", "LMGAmmo", "RoadFlares", "Vehicle", "MilitaryClothing", "RifleAmmo", "RifleAttachments", "Snipers", "Rifles", "Rifles", "Trash", "MedicalItems", "Vehicle", "SmokeGrenades", "MilitaryVests", "Rifles", "Vehicle", "Chemlights", "RifleAttachments", "HandGrenades", "Rifles", "Restraints", "MilitaryClothing", "PistolAmmo", "Vehicle", "RifleAmmo", "RoadFlares", "Rifles", "RifleAmmo", "Chemlights", "Rifles", "LMGAmmo", "Vehicle", "Rifles", "Chemlights", "RifleAmmo", "SMG", "LMG", "Chemlights", "RifleAttachments", "Restraints", "RoadFlares", "LMGAmmo", "Chemlights", "Pistols", "Rifles", "Rifles", "RifleAmmo", "RoadFlares", "RifleAttachments", "RifleAttachments", "PistolAmmo", "SmokeGrenades", "RoadFlares", "MilitaryBackpacks", "Chemlights", "MedicalItems", "Pistols", "Trash", "LMG", "MilitaryVests", "Restraints", "LMG", "MilitaryVests", "SmokeGrenades", "Restraints", "RoadFlares", "Restraints", "RifleAmmo", "MilitaryClothing", "MilitaryBackpacks", "Pistols", "SmokeGrenades", "RifleAmmo", "RifleAttachments", "Vehicle", "Chemlights", "Rifles", "SMGAmmo", "SmokeGrenades", "MilitaryHeadgear", "HandGrenades", "Rifles", "MedicalItems"};

		/*
			Percental Item Group Spawn Chances of Medical:

			Trash        = 40.00%
			MedicalItems = 60.00%
		*/
		Medical[] = {"Trash", "Trash", "MedicalItems", "MedicalItems", "MedicalItems", "Trash", "MedicalItems", "MedicalItems", "MedicalItems", "Trash", "MedicalItems", "Trash", "MedicalItems", "MedicalItems", "MedicalItems", "Trash", "MedicalItems", "Trash", "MedicalItems", "Trash", "MedicalItems", "Trash", "Trash", "MedicalItems", "MedicalItems", "MedicalItems", "Trash", "MedicalItems", "Trash", "MedicalItems", "MedicalItems", "MedicalItems", "Trash", "Trash", "MedicalItems", "MedicalItems", "MedicalItems", "Trash", "MedicalItems", "Trash", "MedicalItems", "Trash", "Trash", "MedicalItems", "MedicalItems", "Trash", "MedicalItems", "MedicalItems", "MedicalItems", "MedicalItems", "MedicalItems", "Trash", "MedicalItems", "Trash", "MedicalItems", "MedicalItems", "MedicalItems", "MedicalItems", "MedicalItems", "MedicalItems", "MedicalItems", "Trash", "MedicalItems", "Trash", "Trash", "Trash", "MedicalItems", "Trash", "MedicalItems", "Trash", "MedicalItems", "MedicalItems", "MedicalItems", "MedicalItems", "Trash", "MedicalItems", "MedicalItems", "MedicalItems", "MedicalItems", "Trash", "MedicalItems", "MedicalItems", "MedicalItems", "MedicalItems", "Trash", "Trash", "Trash", "Trash", "Trash", "MedicalItems", "Trash", "MedicalItems", "Trash", "MedicalItems", "Trash", "Trash", "Trash", "MedicalItems", "Trash", "MedicalItems"};

		/*
			Percental Item Group Spawn Chances of Tourist:

			CivilianItems     = 10.36%
			CivilianClothing  = 10.36%
			CivilianBackpacks = 10.36%
			CivilianVests     = 10.36%
			CivilianHeadgear  = 10.36%
			MedicalItems      = 5.18%
			Chemlights        = 5.70%
			RoadFlares        = 5.70%
			Trash             = 5.70%
			Food              = 12.95%
			Drinks            = 12.95%
		*/
		Tourist[] = {"RoadFlares", "Drinks", "CivilianItems", "CivilianHeadgear", "CivilianBackpacks", "Drinks", "MedicalItems", "Chemlights", "Trash", "CivilianHeadgear", "Chemlights", "CivilianItems", "Food", "Drinks", "CivilianBackpacks", "CivilianVests", "Food", "Drinks", "CivilianVests", "Drinks", "CivilianItems", "CivilianClothing", "Trash", "CivilianItems", "Drinks", "Trash", "CivilianBackpacks", "Drinks", "CivilianVests", "CivilianItems", "MedicalItems", "Drinks", "CivilianHeadgear", "MedicalItems", "CivilianBackpacks", "CivilianClothing", "CivilianClothing", "CivilianClothing", "CivilianClothing", "Food", "CivilianHeadgear", "Food", "CivilianBackpacks", "CivilianBackpacks", "CivilianVests", "CivilianVests", "RoadFlares", "Food", "Chemlights", "CivilianHeadgear", "Food", "CivilianClothing", "CivilianBackpacks", "Trash", "CivilianHeadgear", "CivilianHeadgear", "Drinks", "RoadFlares", "CivilianBackpacks", "Food", "CivilianClothing", "Chemlights", "CivilianItems", "RoadFlares", "CivilianItems", "CivilianVests", "CivilianVests", "Food", "Food", "CivilianItems", "RoadFlares", "MedicalItems", "RoadFlares", "Chemlights", "CivilianItems", "MedicalItems", "Chemlights", "CivilianHeadgear", "CivilianHeadgear", "CivilianVests", "Food", "CivilianBackpacks", "CivilianClothing", "Chemlights", "Drinks", "RoadFlares", "Drinks", "Drinks", "CivilianBackpacks", "CivilianItems", "Food", "RoadFlares", "RoadFlares", "CivilianClothing", "CivilianHeadgear", "CivilianBackpacks", "MedicalItems", "CivilianHeadgear", "Drinks", "Food", "Food", "CivilianItems", "Food", "Food", "MedicalItems", "MedicalItems", "CivilianClothing", "Food", "CivilianBackpacks", "CivilianItems", "Food", "Trash", "CivilianHeadgear", "CivilianHeadgear", "CivilianItems", "CivilianVests", "CivilianClothing", "Food", "RoadFlares", "Drinks", "Trash", "Drinks", "CivilianVests", "CivilianItems", "Drinks", "MedicalItems", "Food", "CivilianHeadgear", "Drinks", "Food", "Food", "CivilianVests", "CivilianItems", "CivilianClothing", "CivilianHeadgear", "Drinks", "CivilianClothing", "CivilianVests", "MedicalItems", "CivilianVests", "CivilianHeadgear", "CivilianVests", "CivilianBackpacks", "CivilianClothing", "Food", "CivilianItems", "CivilianVests", "CivilianBackpacks", "Drinks", "CivilianItems", "Drinks", "Drinks", "CivilianVests", "CivilianItems", "Trash", "CivilianVests", "Chemlights", "CivilianClothing", "Trash", "Trash", "CivilianVests", "Trash", "CivilianClothing", "Drinks", "CivilianBackpacks", "CivilianClothing", "CivilianHeadgear", "Drinks", "Drinks", "CivilianItems", "Chemlights", "CivilianBackpacks", "CivilianHeadgear", "CivilianBackpacks", "CivilianClothing", "CivilianHeadgear", "CivilianVests", "CivilianBackpacks", "CivilianBackpacks", "CivilianBackpacks", "RoadFlares", "Trash", "CivilianHeadgear", "CivilianClothing", "CivilianItems", "CivilianClothing", "Food", "Chemlights", "CivilianVests", "Food", "Chemlights", "Drinks", "Food"};

		/*
			Percental Item Group Spawn Chances of Radiation:

			Food              = 1.98%
			Drinks            = 1.98%
			Pistols           = 2.98%
			PistolAmmo        = 2.98%
			SMG               = 3.87%
			SMGAmmo           = 3.87%
			Rifles            = 4.17%
			RifleAmmo         = 4.17%
			RifleAttachments  = 4.17%
			LMG               = 3.97%
			LMGAmmo           = 3.97%
			Snipers           = 3.77%
			SniperAmmo        = 3.77%
			SniperAttachments = 3.47%
			HandGrenades      = 2.98%
			Explosives        = 3.37%
			MilitaryClothing  = 3.97%
			MilitaryBackpacks = 3.97%
			MilitaryVests     = 3.97%
			MilitaryHeadgear  = 3.97%
			Ghillies          = 2.48%
			MedicalItems      = 2.98%
			IndustrialItems   = 3.97%
			Vehicle           = 2.58%
			Chemlights        = 3.67%
			RoadFlares        = 3.67%
			SmokeGrenades     = 3.77%
			Restraints        = 3.37%
			Electronics       = 0.20%
			Trash             = 1.98%
		*/
		Radiation[] = {"IndustrialItems", "RoadFlares", "SMG", "MilitaryHeadgear", "PistolAmmo", "LMGAmmo", "Explosives", "SniperAmmo", "SniperAmmo", "Chemlights", "Ghillies", "Chemlights", "Chemlights", "MilitaryBackpacks", "SMG", "SniperAmmo", "MilitaryBackpacks", "SniperAttachments", "MilitaryHeadgear", "SMG", "Rifles", "Drinks", "SniperAttachments", "SmokeGrenades", "PistolAmmo", "MilitaryClothing", "LMG", "SniperAmmo", "Chemlights", "Food", "MilitaryBackpacks", "MedicalItems", "SniperAttachments", "Chemlights", "LMGAmmo", "IndustrialItems", "Food", "Rifles", "Trash", "HandGrenades", "SMGAmmo", "SmokeGrenades", "HandGrenades", "RifleAttachments", "PistolAmmo", "MedicalItems", "SMGAmmo", "MilitaryBackpacks", "Explosives", "RifleAmmo", "Ghillies", "RifleAttachments", "RifleAttachments", "MilitaryClothing", "MilitaryBackpacks", "MilitaryHeadgear", "PistolAmmo", "Ghillies", "MilitaryVests", "Ghillies", "SMGAmmo", "SMGAmmo", "PistolAmmo", "Explosives", "MilitaryClothing", "Ghillies", "Explosives", "PistolAmmo", "MedicalItems", "RifleAmmo", "RifleAttachments", "Trash", "Trash", "IndustrialItems", "LMGAmmo", "IndustrialItems", "SMGAmmo", "Restraints", "Rifles", "Explosives", "MilitaryClothing", "Snipers", "LMGAmmo", "SniperAmmo", "RifleAttachments", "Vehicle", "MilitaryBackpacks", "SMGAmmo", "SniperAttachments", "SMG", "Chemlights", "Restraints", "MilitaryVests", "Rifles", "IndustrialItems", "MilitaryClothing", "Rifles", "SniperAttachments", "MilitaryVests", "Rifles", "Explosives", "MilitaryVests", "MilitaryVests", "RifleAmmo", "SMGAmmo", "LMGAmmo", "MilitaryClothing", "MilitaryHeadgear", "MilitaryHeadgear", "SniperAmmo", "RifleAmmo", "Ghillies", "SniperAmmo", "MilitaryVests", "SMG", "SniperAmmo", "SmokeGrenades", "RifleAttachments", "SmokeGrenades", "Pistols", "LMG", "SMG", "PistolAmmo", "SmokeGrenades", "MilitaryBackpacks", "Restraints", "Drinks", "MilitaryVests", "Ghillies", "LMGAmmo", "RifleAmmo", "SniperAmmo", "Snipers", "Chemlights", "SniperAmmo", "IndustrialItems", "Chemlights", "Snipers", "IndustrialItems", "LMGAmmo", "PistolAmmo", "Restraints", "Ghillies", "MilitaryBackpacks", "Restraints", "MilitaryVests", "Pistols", "RoadFlares", "MilitaryBackpacks", "LMGAmmo", "Vehicle", "SmokeGrenades", "Ghillies", "Rifles", "Restraints", "Snipers", "Pistols", "PistolAmmo", "SMG", "RifleAttachments", "Chemlights", "MilitaryVests", "Rifles", "Pistols", "Restraints", "Snipers", "SmokeGrenades", "Chemlights", "LMG", "MilitaryVests", "Restraints", "RifleAmmo", "Snipers", "SMGAmmo", "MilitaryClothing", "IndustrialItems", "RoadFlares", "Restraints", "Rifles", "SMG", "IndustrialItems", "SniperAmmo", "Ghillies", "SmokeGrenades", "SmokeGrenades", "MilitaryHeadgear", "SmokeGrenades", "MilitaryBackpacks", "Explosives", "Rifles", "Rifles", "RoadFlares", "Trash", "RifleAmmo", "IndustrialItems", "RifleAmmo", "PistolAmmo", "SMG", "Food", "Pistols", "Vehicle", "LMGAmmo", "Drinks", "Pistols", "IndustrialItems", "MilitaryVests", "Trash", "Chemlights", "MilitaryHeadgear", "RifleAmmo", "Trash", "HandGrenades", "RifleAttachments", "Rifles", "Restraints", "RifleAttachments", "Pistols", "MilitaryClothing", "Chemlights", "LMGAmmo", "RoadFlares", "PistolAmmo", "SniperAmmo", "IndustrialItems", "SniperAmmo", "Restraints", "Vehicle", "SniperAttachments", "SmokeGrenades", "RoadFlares", "SniperAttachments", "Vehicle", "MilitaryBackpacks", "SniperAmmo", "SMGAmmo", "HandGrenades", "Ghillies", "IndustrialItems", "MilitaryBackpacks", "LMG", "SniperAmmo", "Chemlights", "SmokeGrenades", "SMG", "Restraints", "MilitaryVests", "MilitaryVests", "RifleAttachments", "RoadFlares", "RifleAttachments", "RifleAttachments", "MilitaryHeadgear", "Food", "Chemlights", "Rifles", "Chemlights", "Restraints", "Drinks", "SniperAmmo", "Rifles", "Drinks", "Explosives", "RoadFlares", "MedicalItems", "MilitaryBackpacks", "Food", "Food", "Ghillies", "PistolAmmo", "IndustrialItems", "Pistols", "PistolAmmo", "LMG", "RifleAmmo", "Trash", "RoadFlares", "RifleAmmo", "Snipers", "LMG", "MilitaryClothing", "LMG", "LMG", "SmokeGrenades", "Rifles", "RifleAttachments", "Pistols", "RoadFlares", "Pistols", "LMG", "RifleAttachments", "PistolAmmo", "SniperAttachments", "Ghillies", "Trash", "RoadFlares", "Explosives", "HandGrenades", "LMGAmmo", "SMGAmmo", "LMGAmmo", "RifleAmmo", "SmokeGrenades", "Rifles", "MilitaryBackpacks", "MilitaryBackpacks", "Food", "MilitaryBackpacks", "MedicalItems", "SMG", "Rifles", "Snipers", "LMGAmmo", "SMG", "Rifles", "Ghillies", "Chemlights", "HandGrenades", "SmokeGrenades", "Chemlights", "RifleAttachments", "LMG", "MilitaryClothing", "RifleAmmo", "RoadFlares", "SniperAttachments", "Snipers", "IndustrialItems", "SniperAmmo", "Ghillies", "RifleAttachments", "SmokeGrenades", "SMG", "Rifles", "LMGAmmo", "Rifles", "SmokeGrenades", "Pistols", "SniperAttachments", "Chemlights", "SniperAttachments", "Vehicle", "RifleAmmo", "SmokeGrenades", "RifleAmmo", "SmokeGrenades", "SniperAmmo", "LMGAmmo", "RifleAmmo", "SmokeGrenades", "Pistols", "SniperAttachments", "HandGrenades", "MilitaryHeadgear", "Drinks", "Restraints", "HandGrenades", "IndustrialItems", "MilitaryVests", "LMGAmmo", "Drinks", "SmokeGrenades", "RifleAmmo", "PistolAmmo", "SMG", "SMGAmmo", "Vehicle", "IndustrialItems", "SMGAmmo", "SMG", "RifleAmmo", "MilitaryClothing", "Explosives", "MilitaryClothing", "MilitaryVests", "Snipers", "SniperAttachments", "RoadFlares", "Explosives", "LMGAmmo", "IndustrialItems", "LMG", "RoadFlares", "Chemlights", "Ghillies", "MilitaryHeadgear", "LMG", "SniperAmmo", "Explosives", "SMGAmmo", "Snipers", "MedicalItems", "Trash", "Snipers", "SmokeGrenades", "Food", "PistolAmmo", "MedicalItems", "MilitaryBackpacks", "Vehicle", "Snipers", "Restraints", "LMG", "Chemlights", "Restraints", "SmokeGrenades", "HandGrenades", "Snipers", "MedicalItems", "Explosives", "RifleAmmo", "SMG", "PistolAmmo", "MilitaryVests", "SMG", "MilitaryVests", "SMGAmmo", "LMG", "Pistols", "IndustrialItems", "SMG", "MilitaryVests", "LMG", "SMG", "LMG", "Restraints", "MilitaryClothing", "Chemlights", "SMG", "Snipers", "RifleAttachments", "RoadFlares", "MilitaryBackpacks", "SMGAmmo", "Food", "HandGrenades", "RoadFlares", "MedicalItems", "RoadFlares", "LMGAmmo", "MilitaryVests", "MilitaryClothing", "Chemlights", "MilitaryHeadgear", "SmokeGrenades", "RifleAttachments", "LMGAmmo", "Pistols", "Explosives", "SniperAmmo", "MilitaryHeadgear", "MedicalItems", "MilitaryHeadgear", "SMGAmmo", "MilitaryVests", "Food", "SniperAttachments", "RifleAmmo", "RifleAmmo", "MilitaryClothing", "LMG", "IndustrialItems", "MilitaryBackpacks", "MedicalItems", "MilitaryClothing", "SMG", "SniperAmmo", "MilitaryVests", "PistolAmmo", "MilitaryHeadgear", "MilitaryClothing", "SMGAmmo", "MilitaryClothing", "Chemlights", "LMG", "RoadFlares", "RifleAmmo", "HandGrenades", "LMGAmmo", "MedicalItems", "MilitaryBackpacks", "RifleAttachments", "Trash", "Rifles", "IndustrialItems", "RoadFlares", "PistolAmmo", "Vehicle", "SMGAmmo", "Explosives", "MilitaryClothing", "MilitaryBackpacks", "Rifles", "Drinks", "MilitaryClothing", "MedicalItems", "MilitaryBackpacks", "MilitaryHeadgear", "Restraints", "SmokeGrenades", "Explosives", "MilitaryHeadgear", "HandGrenades", "RoadFlares", "MilitaryHeadgear", "RifleAttachments", "RifleAttachments", "Restraints", "LMG", "LMG", "Ghillies", "SniperAmmo", "MilitaryBackpacks", "SniperAttachments", "RoadFlares", "RifleAttachments", "RifleAttachments", "SniperAmmo", "RoadFlares", "SmokeGrenades", "LMGAmmo", "MilitaryHeadgear", "LMG", "MilitaryBackpacks", "SMGAmmo", "IndustrialItems", "MilitaryClothing", "Ghillies", "Drinks", "SMGAmmo", "IndustrialItems", "LMGAmmo", "SMG", "Snipers", "Restraints", "Vehicle", "Pistols", "Drinks", "SMGAmmo", "SniperAmmo", "MilitaryVests", "SniperAttachments", "PistolAmmo", "Explosives", "PistolAmmo", "LMG", "LMGAmmo", "SMGAmmo", "SMGAmmo", "SniperAttachments", "LMG", "SniperAttachments", "RifleAttachments", "SniperAttachments", "MilitaryVests", "SMG", "Rifles", "MilitaryVests", "Trash", "MedicalItems", "Rifles", "Ghillies", "Explosives", "Snipers", "LMGAmmo", "Rifles", "RifleAttachments", "LMGAmmo", "SMGAmmo", "MilitaryClothing", "RifleAmmo", "Pistols", "Snipers", "MilitaryVests", "LMG", "Explosives", "MilitaryHeadgear", "Food", "Vehicle", "Pistols", "Explosives", "SMG", "Pistols", "IndustrialItems", "Pistols", "SniperAttachments", "Pistols", "Snipers", "RifleAmmo", "LMG", "Electronics", "Chemlights", "PistolAmmo", "Food", "LMGAmmo", "HandGrenades", "MilitaryVests", "SMG", "Ghillies", "HandGrenades", "Snipers", "Chemlights", "RoadFlares", "RifleAmmo", "HandGrenades", "Snipers", "MedicalItems", "LMGAmmo", "Restraints", "LMGAmmo", "Chemlights", "SMG", "SmokeGrenades", "Chemlights", "SniperAmmo", "Vehicle", "IndustrialItems", "Restraints", "Ghillies", "IndustrialItems", "Electronics", "PistolAmmo", "SMGAmmo", "HandGrenades", "LMG", "MilitaryBackpacks", "SniperAttachments", "RifleAmmo", "RifleAmmo", "Restraints", "LMGAmmo", "HandGrenades", "SMGAmmo", "Drinks", "MilitaryBackpacks", "MilitaryVests", "SMGAmmo", "Explosives", "SniperAttachments", "Drinks", "RifleAttachments", "RoadFlares", "HandGrenades", "MedicalItems", "Vehicle", "SmokeGrenades", "HandGrenades", "MilitaryVests", "RifleAmmo", "Food", "MilitaryBackpacks", "MilitaryHeadgear", "Drinks", "RoadFlares", "IndustrialItems", "SniperAmmo", "SMGAmmo", "HandGrenades", "Rifles", "Snipers", "Vehicle", "Pistols", "RoadFlares", "MilitaryHeadgear", "SMGAmmo", "Chemlights", "Snipers", "PistolAmmo", "Explosives", "PistolAmmo", "Food", "Vehicle", "SMG", "Food", "MilitaryClothing", "SmokeGrenades", "Explosives", "RoadFlares", "Snipers", "MilitaryClothing", "RoadFlares", "Restraints", "LMG", "IndustrialItems", "RifleAmmo", "Vehicle", "MilitaryBackpacks", "MilitaryClothing", "SMG", "Explosives", "Explosives", "Rifles", "IndustrialItems", "MilitaryVests", "SmokeGrenades", "Rifles", "MedicalItems", "SniperAmmo", "Pistols", "MilitaryHeadgear", "MedicalItems", "SniperAmmo", "RifleAmmo", "MilitaryClothing", "Rifles", "Rifles", "SMGAmmo", "MilitaryVests", "Pistols", "Pistols", "LMG", "MilitaryHeadgear", "Trash", "IndustrialItems", "Snipers", "IndustrialItems", "RifleAmmo", "Rifles", "MilitaryHeadgear", "Vehicle", "IndustrialItems", "MedicalItems", "Explosives", "PistolAmmo", "Chemlights", "Rifles", "MilitaryHeadgear", "RifleAttachments", "MilitaryHeadgear", "MedicalItems", "RoadFlares", "Vehicle", "LMG", "SmokeGrenades", "SniperAttachments", "RifleAttachments", "SMGAmmo", "MilitaryClothing", "Snipers", "Trash", "SMG", "MilitaryVests", "MedicalItems", "MilitaryHeadgear", "MilitaryHeadgear", "Chemlights", "Vehicle", "Snipers", "RifleAmmo", "RoadFlares", "SMGAmmo", "SniperAttachments", "MilitaryHeadgear", "Snipers", "SniperAttachments", "Chemlights", "Drinks", "Snipers", "SniperAttachments", "RoadFlares", "IndustrialItems", "Chemlights", "SmokeGrenades", "Restraints", "Food", "SmokeGrenades", "Explosives", "HandGrenades", "RifleAttachments", "MilitaryHeadgear", "MilitaryClothing", "SniperAmmo", "MilitaryHeadgear", "MilitaryVests", "MilitaryHeadgear", "SniperAttachments", "MilitaryClothing", "MilitaryBackpacks", "HandGrenades", "SniperAmmo", "SMG", "SniperAttachments", "MilitaryBackpacks", "MilitaryClothing", "MilitaryClothing", "SMGAmmo", "Explosives", "SMG", "RifleAmmo", "Drinks", "RifleAmmo", "MedicalItems", "Chemlights", "Snipers", "SMGAmmo", "Drinks", "Snipers", "LMGAmmo", "Chemlights", "SniperAttachments", "RifleAmmo", "MilitaryClothing", "SMG", "PistolAmmo", "MilitaryBackpacks", "MedicalItems", "MilitaryVests", "SniperAttachments", "Explosives", "MedicalItems", "Restraints", "RifleAttachments", "LMGAmmo", "Drinks", "RifleAmmo", "MilitaryHeadgear", "LMGAmmo", "RifleAmmo", "Rifles", "Vehicle", "IndustrialItems", "Restraints", "RifleAttachments", "SniperAmmo", "Food", "Snipers", "SniperAmmo", "MilitaryBackpacks", "LMGAmmo", "SniperAmmo", "SniperAmmo", "MilitaryClothing", "SmokeGrenades", "SMG", "HandGrenades", "LMGAmmo", "Snipers", "Restraints", "RoadFlares", "Vehicle", "IndustrialItems", "Explosives", "PistolAmmo", "MilitaryClothing", "SniperAttachments", "Trash", "Snipers", "MedicalItems", "Rifles", "MilitaryClothing", "HandGrenades", "Pistols", "SMG", "MedicalItems", "MilitaryBackpacks", "IndustrialItems", "SMG", "Restraints", "RifleAttachments", "MilitaryHeadgear", "Restraints", "MilitaryVests", "Rifles", "MilitaryVests", "SmokeGrenades", "Snipers", "Explosives", "IndustrialItems", "Vehicle", "SniperAttachments", "SniperAttachments", "Drinks", "LMG", "LMG", "Restraints", "MilitaryClothing", "IndustrialItems", "SniperAmmo", "SMGAmmo", "LMG", "RifleAttachments", "Snipers", "SniperAttachments", "MilitaryBackpacks", "RifleAttachments", "SMGAmmo", "SMGAmmo", "MilitaryHeadgear", "Pistols", "HandGrenades", "Food", "Drinks", "RifleAmmo", "LMGAmmo", "LMG", "Explosives", "RifleAttachments", "Restraints", "SMGAmmo", "MilitaryVests", "MilitaryClothing", "MilitaryHeadgear", "Trash", "MilitaryHeadgear", "LMG", "Chemlights", "Rifles", "RifleAttachments", "MilitaryBackpacks", "MilitaryHeadgear", "SniperAmmo", "SMGAmmo", "MilitaryBackpacks", "Explosives", "Rifles", "RifleAmmo", "LMGAmmo", "HandGrenades", "Trash", "Ghillies", "Rifles", "Trash", "MilitaryVests", "RifleAttachments", "RifleAttachments", "Vehicle", "RoadFlares", "Explosives", "MilitaryBackpacks", "LMG", "Snipers", "LMGAmmo", "Trash", "Vehicle", "RoadFlares", "HandGrenades", "MilitaryVests", "Chemlights", "SmokeGrenades", "SMG", "RoadFlares", "Restraints", "PistolAmmo", "MilitaryHeadgear", "Vehicle", "RifleAttachments", "RoadFlares", "Rifles", "SmokeGrenades", "Pistols", "RoadFlares", "Ghillies", "LMGAmmo", "IndustrialItems", "MilitaryClothing", "MilitaryClothing", "RifleAttachments", "PistolAmmo", "MilitaryVests", "MilitaryClothing", "Pistols", "Rifles", "MilitaryVests", "Ghillies", "HandGrenades", "LMG", "SniperAmmo", "MilitaryBackpacks", "IndustrialItems", "Rifles", "LMG", "LMG", "RifleAttachments", "Rifles", "MilitaryBackpacks", "Vehicle", "Chemlights", "Food", "LMGAmmo", "Food", "SniperAttachments", "Drinks", "MedicalItems", "LMGAmmo", "SMG", "SmokeGrenades", "MilitaryHeadgear", "SMG", "HandGrenades", "Trash", "MedicalItems", "Pistols", "RifleAttachments", "HandGrenades", "LMG", "MilitaryBackpacks", "RifleAmmo", "Restraints", "MedicalItems", "RifleAmmo", "LMG", "SniperAmmo", "RifleAmmo", "MedicalItems", "Snipers", "Pistols", "Ghillies", "SMG", "Trash"};
	};

	class ItemGroups
	{

		/*
			Percental Item Spawn Chances of Food:

			Exitem_purificationtablets   = 3.70%
			Exitem_bakedbeans            = 3.70%
			Exitem_cerealbox             = 3.70%
			Exitem_rice                  = 3.70%
			Exitem_container             = 3.70%
			Exitem_container_soup        = 1.85%
			Exitem_container_beef        = 1.85%
			Exitem_tacticalbacon         = 3.70%
			Exile_Item_CookingPot        = 5.56%
			Exile_Item_CanOpener         = 11.11%
			Exile_Item_Matches           = 1.85%
			Exile_Item_EMRE              = 1.85%
			Exile_Item_GloriousKnakworst = 1.85%
			Exile_Item_Surstromming      = 1.85%
			Exile_Item_SausageGravy      = 1.85%
			Exile_Item_ChristmasTinner   = 1.85%
			Exile_Item_MacasCheese       = 3.70%
			Exile_Item_BBQSandwich       = 1.85%
			Exile_Item_CatFood           = 1.85%
			Exile_Item_Dogfood           = 1.85%
			Exile_Item_BeefParts         = 3.70%
			Exile_Item_Cheathas          = 3.70%
			Exile_Item_DsNuts            = 3.70%
			Exile_Item_Noodles           = 3.70%
			Exile_Item_CockONut          = 3.70%
			Exile_Item_SeedAstics        = 3.70%
			Exile_Item_Raisins           = 3.70%
			Exile_Item_Moobar            = 3.70%
			Exile_Item_InstantCoffee     = 7.41%
		*/
		Food[] = {"Exitem_bakedbeans", "Exile_Item_BeefParts", "Exile_Item_CookingPot", "Exitem_cerealbox", "Exile_Item_BeefParts", "Exile_Item_InstantCoffee", "Exile_Item_EMRE", "Exile_Item_CatFood", "Exile_Item_Moobar", "Exile_Item_ChristmasTinner", "Exile_Item_CanOpener", "Exile_Item_CockONut", "Exile_Item_CanOpener", "Exile_Item_DsNuts", "Exile_Item_BeefParts", "Exitem_container_beef", "Exile_Item_InstantCoffee", "Exile_Item_Moobar", "Exitem_container", "Exile_Item_Noodles", "Exile_Item_DsNuts", "Exile_Item_Moobar", "Exile_Item_Dogfood", "Exitem_purificationtablets", "Exile_Item_BBQSandwich", "Exile_Item_CanOpener", "Exile_Item_SausageGravy", "Exile_Item_CookingPot", "Exile_Item_MacasCheese", "Exile_Item_SeedAstics", "Exitem_rice", "Exitem_bakedbeans", "Exitem_cerealbox", "Exile_Item_CanOpener", "Exitem_tacticalbacon", "Exile_Item_Cheathas", "Exitem_tacticalbacon", "Exile_Item_Cheathas", "Exitem_purificationtablets", "Exile_Item_InstantCoffee", "Exile_Item_DsNuts", "Exile_Item_Cheathas", "Exitem_purificationtablets", "Exitem_cerealbox", "Exile_Item_SeedAstics", "Exile_Item_MacasCheese", "Exile_Item_Surstromming", "Exile_Item_BBQSandwich", "Exitem_container", "Exile_Item_BeefParts", "Exile_Item_InstantCoffee", "Exitem_tacticalbacon", "Exile_Item_Noodles", "Exile_Item_Raisins", "Exile_Item_MacasCheese", "Exile_Item_MacasCheese", "Exile_Item_Cheathas", "Exile_Item_Noodles", "Exile_Item_CookingPot", "Exitem_container_soup", "Exitem_tacticalbacon", "Exitem_rice", "Exitem_cerealbox", "Exile_Item_CanOpener", "Exitem_container_beef", "Exitem_purificationtablets", "Exile_Item_Dogfood", "Exitem_container_soup", "Exile_Item_ChristmasTinner", "Exile_Item_SeedAstics", "Exile_Item_Raisins", "Exile_Item_Raisins", "Exile_Item_BeefParts", "Exile_Item_SeedAstics", "Exitem_cerealbox", "Exile_Item_MacasCheese", "Exitem_container", "Exitem_purificationtablets", "Exitem_purificationtablets", "Exile_Item_Raisins", "Exile_Item_CookingPot", "Exile_Item_CanOpener", "Exitem_bakedbeans", "Exile_Item_Matches", "Exile_Item_Raisins", "Exile_Item_InstantCoffee", "Exitem_tacticalbacon", "Exile_Item_CanOpener", "Exile_Item_CockONut", "Exitem_cerealbox", "Exitem_bakedbeans", "Exile_Item_CookingPot", "Exile_Item_CanOpener", "Exitem_container", "Exile_Item_CockONut", "Exile_Item_CanOpener", "Exitem_purificationtablets", "Exile_Item_CookingPot", "Exile_Item_Raisins", "Exile_Item_Matches", "Exile_Item_CanOpener", "Exile_Item_CanOpener", "Exile_Item_Surstromming", "Exile_Item_GloriousKnakworst", "Exile_Item_CanOpener", "Exile_Item_GloriousKnakworst", "Exile_Item_Moobar", "Exile_Item_BBQSandwich", "Exile_Item_CockONut", "Exile_Item_Dogfood", "Exile_Item_DsNuts", "Exitem_rice", "Exile_Item_Noodles", "Exitem_container_beef", "Exitem_rice", "Exitem_bakedbeans", "Exile_Item_BBQSandwich", "Exile_Item_CockONut", "Exile_Item_CanOpener", "Exitem_tacticalbacon", "Exitem_rice", "Exile_Item_CookingPot", "Exile_Item_Surstromming", "Exile_Item_InstantCoffee", "Exitem_purificationtablets", "Exile_Item_CanOpener", "Exile_Item_Surstromming", "Exile_Item_CanOpener", "Exile_Item_InstantCoffee", "Exile_Item_GloriousKnakworst", "Exile_Item_CanOpener", "Exile_Item_CatFood", "Exitem_container_beef", "Exile_Item_InstantCoffee", "Exile_Item_EMRE", "Exile_Item_SeedAstics", "Exile_Item_SeedAstics", "Exile_Item_Moobar", "Exitem_cerealbox", "Exile_Item_CockONut", "Exile_Item_CanOpener", "Exile_Item_ChristmasTinner", "Exile_Item_MacasCheese", "Exile_Item_CanOpener", "Exitem_cerealbox", "Exile_Item_Moobar", "Exile_Item_CookingPot", "Exile_Item_BeefParts", "Exitem_rice", "Exitem_tacticalbacon", "Exile_Item_CanOpener", "Exile_Item_InstantCoffee", "Exile_Item_GloriousKnakworst", "Exitem_bakedbeans", "Exile_Item_Matches", "Exile_Item_SeedAstics", "Exile_Item_Moobar", "Exitem_container", "Exitem_container", "Exitem_bakedbeans", "Exile_Item_SausageGravy", "Exitem_container_soup", "Exile_Item_Dogfood", "Exile_Item_Cheathas", "Exitem_container_soup", "Exile_Item_Raisins", "Exile_Item_Moobar", "Exile_Item_Moobar", "Exile_Item_SausageGravy", "Exile_Item_InstantCoffee", "Exile_Item_SeedAstics", "Exile_Item_Matches", "Exile_Item_BeefParts", "Exile_Item_Surstromming", "Exile_Item_EMRE", "Exile_Item_DsNuts", "Exile_Item_InstantCoffee", "Exile_Item_SeedAstics", "Exitem_container", "Exile_Item_InstantCoffee", "Exile_Item_ChristmasTinner", "Exile_Item_DsNuts", "Exile_Item_Moobar", "Exile_Item_InstantCoffee", "Exile_Item_Noodles", "Exitem_rice", "Exile_Item_CatFood", "Exile_Item_CatFood", "Exile_Item_Noodles", "Exile_Item_CockONut", "Exile_Item_MacasCheese", "Exitem_container_soup", "Exile_Item_Cheathas", "Exile_Item_CanOpener", "Exile_Item_MacasCheese", "Exile_Item_CookingPot", "Exitem_purificationtablets", "Exitem_container_beef", "Exile_Item_CanOpener", "Exile_Item_CanOpener", "Exile_Item_CookingPot", "Exitem_tacticalbacon", "Exitem_rice", "Exile_Item_InstantCoffee", "Exitem_tacticalbacon", "Exile_Item_SausageGravy", "Exitem_bakedbeans", "Exile_Item_MacasCheese", "Exile_Item_Raisins", "Exile_Item_CanOpener", "Exitem_purificationtablets", "Exile_Item_CockONut", "Exile_Item_GloriousKnakworst", "Exitem_container", "Exile_Item_InstantCoffee", "Exile_Item_ChristmasTinner", "Exile_Item_CatFood", "Exile_Item_CanOpener", "Exile_Item_CanOpener", "Exile_Item_DsNuts", "Exile_Item_InstantCoffee", "Exile_Item_InstantCoffee", "Exile_Item_CanOpener", "Exile_Item_SeedAstics", "Exile_Item_Raisins", "Exile_Item_Cheathas", "Exile_Item_InstantCoffee", "Exile_Item_CookingPot", "Exile_Item_InstantCoffee", "Exile_Item_BBQSandwich", "Exile_Item_InstantCoffee", "Exile_Item_Noodles", "Exile_Item_Raisins", "Exile_Item_Noodles", "Exile_Item_CanOpener", "Exile_Item_CookingPot", "Exile_Item_Matches", "Exile_Item_CockONut", "Exile_Item_CanOpener", "Exile_Item_EMRE", "Exitem_bakedbeans", "Exitem_bakedbeans", "Exile_Item_BeefParts", "Exitem_cerealbox", "Exile_Item_BeefParts", "Exile_Item_Cheathas", "Exitem_rice", "Exile_Item_CookingPot", "Exile_Item_Noodles", "Exitem_tacticalbacon", "Exitem_cerealbox", "Exile_Item_EMRE", "Exitem_container", "Exile_Item_CanOpener", "Exile_Item_CookingPot", "Exile_Item_CockONut", "Exile_Item_Dogfood", "Exile_Item_BeefParts", "Exile_Item_CookingPot", "Exile_Item_Cheathas", "Exitem_container", "Exitem_rice", "Exile_Item_Noodles", "Exile_Item_Cheathas", "Exile_Item_MacasCheese", "Exile_Item_DsNuts", "Exile_Item_DsNuts", "Exile_Item_DsNuts", "Exile_Item_SausageGravy", "Exile_Item_CanOpener"};

		/*
			Percental Item Spawn Chances of Drinks:

			Exitem_canteen_coffee              = 3.03%
			Exitem_canteen_fresh               = 3.03%
			Exitem_canteen                     = 6.06%
			Exitem_franta                      = 9.09%
			Exitem_redgull                     = 6.06%
			Exitem_spirit                      = 12.12%
			Exile_Item_PlasticBottleCoffee     = 3.03%
			Exile_Item_PowerDrink              = 3.03%
			Exile_Item_PlasticBottleFreshWater = 6.06%
			Exile_Item_Beer                    = 6.06%
			Exile_Item_EnergyDrink             = 6.06%
			Exile_Item_MountainDupe            = 6.06%
			Exile_Item_ChocolateMilk           = 15.15%
			Exile_Item_PlasticBottleDirtyWater = 15.15%
		*/
		Drinks[] = {"Exile_Item_ChocolateMilk", "Exile_Item_PlasticBottleDirtyWater", "Exile_Item_ChocolateMilk", "Exile_Item_PowerDrink", "Exile_Item_PowerDrink", "Exile_Item_MountainDupe", "Exitem_franta", "Exitem_spirit", "Exitem_spirit", "Exile_Item_EnergyDrink", "Exile_Item_PlasticBottleDirtyWater", "Exitem_canteen_coffee", "Exile_Item_MountainDupe", "Exile_Item_ChocolateMilk", "Exitem_canteen_fresh", "Exitem_spirit", "Exile_Item_ChocolateMilk", "Exitem_franta", "Exile_Item_PlasticBottleFreshWater", "Exile_Item_EnergyDrink", "Exile_Item_PlasticBottleFreshWater", "Exile_Item_MountainDupe", "Exitem_spirit", "Exile_Item_ChocolateMilk", "Exile_Item_PlasticBottleFreshWater", "Exile_Item_ChocolateMilk", "Exile_Item_ChocolateMilk", "Exitem_redgull", "Exitem_spirit", "Exitem_spirit", "Exile_Item_PlasticBottleDirtyWater", "Exile_Item_ChocolateMilk", "Exile_Item_PlasticBottleDirtyWater", "Exitem_franta", "Exile_Item_PlasticBottleDirtyWater", "Exile_Item_ChocolateMilk", "Exile_Item_ChocolateMilk", "Exile_Item_PlasticBottleFreshWater", "Exile_Item_ChocolateMilk", "Exile_Item_Beer", "Exitem_franta", "Exitem_canteen", "Exitem_canteen", "Exitem_franta", "Exile_Item_EnergyDrink", "Exile_Item_Beer", "Exile_Item_EnergyDrink", "Exitem_canteen_coffee", "Exitem_spirit", "Exitem_canteen", "Exitem_canteen_coffee", "Exitem_canteen", "Exile_Item_PlasticBottleFreshWater", "Exile_Item_PlasticBottleDirtyWater", "Exile_Item_Beer", "Exitem_canteen_coffee", "Exile_Item_PlasticBottleDirtyWater", "Exitem_spirit", "Exile_Item_Beer", "Exile_Item_MountainDupe", "Exile_Item_PlasticBottleDirtyWater", "Exitem_canteen", "Exile_Item_PlasticBottleDirtyWater", "Exile_Item_MountainDupe", "Exile_Item_Beer", "Exile_Item_PowerDrink", "Exitem_redgull", "Exile_Item_PlasticBottleDirtyWater", "Exile_Item_PlasticBottleDirtyWater", "Exitem_redgull", "Exitem_spirit", "Exile_Item_PlasticBottleDirtyWater", "Exile_Item_PlasticBottleDirtyWater", "Exile_Item_PlasticBottleDirtyWater", "Exitem_canteen", "Exile_Item_ChocolateMilk", "Exitem_spirit", "Exitem_spirit", "Exitem_canteen", "Exitem_canteen", "Exile_Item_ChocolateMilk", "Exile_Item_PlasticBottleCoffee", "Exitem_spirit", "Exitem_spirit", "Exile_Item_MountainDupe", "Exile_Item_EnergyDrink", "Exitem_spirit", "Exile_Item_Beer", "Exile_Item_EnergyDrink", "Exitem_canteen_fresh", "Exile_Item_PlasticBottleFreshWater", "Exitem_canteen_fresh", "Exile_Item_PowerDrink", "Exitem_redgull", "Exitem_spirit", "Exitem_canteen_fresh", "Exitem_canteen_coffee", "Exile_Item_Beer", "Exile_Item_ChocolateMilk", "Exile_Item_ChocolateMilk", "Exitem_redgull", "Exitem_canteen_fresh", "Exile_Item_PlasticBottleDirtyWater", "Exile_Item_PlasticBottleCoffee", "Exile_Item_Beer", "Exitem_franta", "Exile_Item_ChocolateMilk", "Exile_Item_PlasticBottleDirtyWater", "Exile_Item_EnergyDrink", "Exile_Item_ChocolateMilk", "Exitem_canteen", "Exile_Item_PowerDrink", "Exitem_franta", "Exitem_franta", "Exile_Item_PlasticBottleCoffee", "Exile_Item_PlasticBottleDirtyWater", "Exitem_redgull", "Exitem_franta", "Exile_Item_PlasticBottleFreshWater", "Exitem_franta", "Exile_Item_PlasticBottleFreshWater", "Exile_Item_MountainDupe", "Exitem_franta", "Exile_Item_MountainDupe", "Exile_Item_PlasticBottleDirtyWater", "Exile_Item_Beer", "Exile_Item_PlasticBottleDirtyWater", "Exile_Item_ChocolateMilk", "Exile_Item_PlasticBottleDirtyWater", "Exitem_franta", "Exile_Item_MountainDupe", "Exile_Item_PlasticBottleDirtyWater", "Exile_Item_PlasticBottleDirtyWater", "Exitem_spirit", "Exitem_spirit", "Exitem_redgull", "Exitem_spirit", "Exile_Item_PlasticBottleDirtyWater", "Exile_Item_ChocolateMilk", "Exile_Item_ChocolateMilk", "Exile_Item_PlasticBottleFreshWater", "Exitem_redgull", "Exile_Item_PlasticBottleCoffee", "Exitem_redgull", "Exile_Item_PlasticBottleDirtyWater", "Exitem_franta", "Exile_Item_MountainDupe", "Exitem_spirit", "Exile_Item_EnergyDrink", "Exile_Item_ChocolateMilk", "Exile_Item_PlasticBottleDirtyWater", "Exile_Item_ChocolateMilk", "Exile_Item_EnergyDrink", "Exile_Item_ChocolateMilk", "Exile_Item_EnergyDrink", "Exile_Item_ChocolateMilk", "Exitem_spirit", "Exitem_redgull", "Exile_Item_Beer", "Exile_Item_ChocolateMilk", "Exitem_franta", "Exitem_canteen", "Exitem_franta", "Exile_Item_PlasticBottleCoffee", "Exile_Item_PlasticBottleFreshWater"};

		/*
			Percental Item Spawn Chances of CivilianWeapons:

			rhs_weap_makarov_pm     = 16.53%
			rhs_weap_makarov_pmm    = 16.53%
			rhsusf_weap_m1911a1     = 8.26%
			rhsusf_weap_glock17g4   = 4.13%
			Exile_Weapon_Taurus     = 16.53%
			Exile_Weapon_TaurusGold = 0.83%
			hlc_rifle_M1903A1       = 4.13%
			hlc_rifle_saiga12k      = 8.26%
			rhs_weap_M590_8RD       = 4.13%
			rhs_weap_M590_5RD       = 4.13%
			rhs_weap_m38            = 8.26%
			rhs_weap_kar98k         = 8.26%
		*/
		CivilianWeapons[] = {"rhs_weap_makarov_pmm", "rhs_weap_makarov_pmm", "rhs_weap_makarov_pmm", "hlc_rifle_M1903A1", "rhs_weap_makarov_pmm", "rhs_weap_makarov_pm", "rhs_weap_kar98k", "rhsusf_weap_glock17g4", "rhs_weap_m38", "rhs_weap_makarov_pm", "rhs_weap_makarov_pm", "hlc_rifle_saiga12k", "rhs_weap_kar98k", "rhs_weap_kar98k", "Exile_Weapon_TaurusGold", "rhs_weap_m38", "rhs_weap_makarov_pmm", "rhs_weap_M590_8RD", "hlc_rifle_saiga12k", "rhs_weap_M590_8RD", "rhs_weap_makarov_pmm", "rhsusf_weap_m1911a1", "rhsusf_weap_m1911a1", "rhs_weap_makarov_pm", "rhs_weap_makarov_pm", "rhs_weap_m38", "hlc_rifle_M1903A1", "rhs_weap_makarov_pmm", "rhs_weap_makarov_pmm", "Exile_Weapon_Taurus", "hlc_rifle_M1903A1", "rhs_weap_makarov_pm", "Exile_Weapon_Taurus", "rhs_weap_makarov_pmm", "rhsusf_weap_m1911a1", "rhs_weap_makarov_pmm", "rhs_weap_M590_5RD", "rhsusf_weap_m1911a1", "rhs_weap_makarov_pmm", "rhs_weap_M590_8RD", "rhs_weap_makarov_pm", "rhsusf_weap_m1911a1", "Exile_Weapon_Taurus", "Exile_Weapon_Taurus", "rhs_weap_m38", "rhs_weap_makarov_pmm", "rhs_weap_m38", "rhs_weap_m38", "rhsusf_weap_m1911a1", "rhs_weap_makarov_pm", "rhs_weap_makarov_pm", "Exile_Weapon_Taurus", "Exile_Weapon_Taurus", "rhsusf_weap_m1911a1", "rhs_weap_kar98k", "Exile_Weapon_Taurus", "rhs_weap_makarov_pmm", "rhs_weap_makarov_pm", "rhsusf_weap_m1911a1", "rhs_weap_makarov_pm", "rhs_weap_M590_5RD", "rhs_weap_makarov_pmm", "rhs_weap_m38", "rhs_weap_kar98k", "rhs_weap_kar98k", "rhs_weap_makarov_pmm", "hlc_rifle_saiga12k", "rhs_weap_makarov_pm", "Exile_Weapon_Taurus", "hlc_rifle_M1903A1", "rhsusf_weap_glock17g4", "rhs_weap_makarov_pmm", "Exile_Weapon_Taurus", "rhs_weap_M590_5RD", "hlc_rifle_saiga12k", "hlc_rifle_saiga12k", "rhs_weap_kar98k", "Exile_Weapon_Taurus", "rhsusf_weap_glock17g4", "Exile_Weapon_Taurus", "Exile_Weapon_Taurus", "Exile_Weapon_Taurus", "hlc_rifle_saiga12k", "rhs_weap_makarov_pm", "rhsusf_weap_m1911a1", "rhs_weap_kar98k", "Exile_Weapon_Taurus", "rhs_weap_kar98k", "rhs_weap_makarov_pm", "rhs_weap_m38", "rhs_weap_makarov_pmm", "rhs_weap_makarov_pm", "hlc_rifle_saiga12k", "Exile_Weapon_Taurus", "rhs_weap_M590_8RD", "rhs_weap_kar98k", "hlc_rifle_saiga12k", "rhs_weap_m38", "rhs_weap_makarov_pmm", "rhs_weap_makarov_pmm", "Exile_Weapon_Taurus", "Exile_Weapon_Taurus", "rhs_weap_makarov_pm", "rhsusf_weap_glock17g4", "rhs_weap_makarov_pm", "rhs_weap_M590_5RD", "rhs_weap_M590_5RD", "Exile_Weapon_Taurus", "Exile_Weapon_Taurus", "rhs_weap_makarov_pm", "rhsusf_weap_glock17g4", "hlc_rifle_saiga12k", "rhs_weap_makarov_pmm", "hlc_rifle_M1903A1", "hlc_rifle_saiga12k", "Exile_Weapon_Taurus", "rhs_weap_M590_8RD", "rhs_weap_makarov_pm", "rhsusf_weap_m1911a1", "rhs_weap_makarov_pm", "rhs_weap_m38"};

		/*
			Percental Item Spawn Chances of CivilianAmmo:

			rhs_mag_9x18_8_57N181S     = 12.90%
			rhs_mag_9x18_12_57N181S    = 12.90%
			rhsusf_mag_7x45acp_MHPg    = 6.45%
			rhsusf_mag_17Rnd_9x19_JHP  = 3.23%
			Exile_Magazine_8Rnd_9x18   = 12.90%
			Exile_Magazine_6Rnd_45ACP  = 12.90%
			Exile_Magazine_10Rnd_303   = 3.23%
			hlc_5rnd_3006_1903         = 3.23%
			hlc_10rnd_12g_slug_S12     = 6.45%
			rhsusf_8Rnd_Slug           = 3.23%
			rhsusf_5Rnd_00Buck         = 3.23%
			rhsgref_5Rnd_762x54_m38    = 6.45%
			Exile_Magazine_5Rnd_22LR   = 6.45%
			rhsgref_5Rnd_792x57_kar98k = 6.45%
		*/
		CivilianAmmo[] = {"rhs_mag_9x18_8_57N181S", "rhsgref_5Rnd_762x54_m38", "hlc_10rnd_12g_slug_S12", "rhsusf_mag_7x45acp_MHPg", "rhsusf_mag_17Rnd_9x19_JHP", "Exile_Magazine_10Rnd_303", "rhs_mag_9x18_12_57N181S", "rhsgref_5Rnd_762x54_m38", "hlc_5rnd_3006_1903", "Exile_Magazine_6Rnd_45ACP", "rhsusf_5Rnd_00Buck", "Exile_Magazine_6Rnd_45ACP", "rhs_mag_9x18_12_57N181S", "Exile_Magazine_6Rnd_45ACP", "Exile_Magazine_5Rnd_22LR", "rhs_mag_9x18_8_57N181S", "rhs_mag_9x18_8_57N181S", "Exile_Magazine_8Rnd_9x18", "rhsusf_mag_7x45acp_MHPg", "rhsgref_5Rnd_792x57_kar98k", "Exile_Magazine_8Rnd_9x18", "rhsgref_5Rnd_792x57_kar98k", "rhsgref_5Rnd_762x54_m38", "rhsgref_5Rnd_762x54_m38", "rhs_mag_9x18_8_57N181S", "rhs_mag_9x18_8_57N181S", "rhsgref_5Rnd_792x57_kar98k", "rhsgref_5Rnd_762x54_m38", "Exile_Magazine_6Rnd_45ACP", "Exile_Magazine_6Rnd_45ACP", "rhsusf_mag_17Rnd_9x19_JHP", "Exile_Magazine_8Rnd_9x18", "Exile_Magazine_6Rnd_45ACP", "rhsgref_5Rnd_762x54_m38", "Exile_Magazine_10Rnd_303", "rhsgref_5Rnd_792x57_kar98k", "rhs_mag_9x18_8_57N181S", "rhsusf_mag_17Rnd_9x19_JHP", "Exile_Magazine_6Rnd_45ACP", "hlc_10rnd_12g_slug_S12", "Exile_Magazine_10Rnd_303", "Exile_Magazine_6Rnd_45ACP", "Exile_Magazine_10Rnd_303", "Exile_Magazine_5Rnd_22LR", "Exile_Magazine_5Rnd_22LR", "Exile_Magazine_6Rnd_45ACP", "rhsusf_mag_7x45acp_MHPg", "rhsgref_5Rnd_792x57_kar98k", "rhs_mag_9x18_8_57N181S", "rhsgref_5Rnd_792x57_kar98k", "Exile_Magazine_8Rnd_9x18", "Exile_Magazine_8Rnd_9x18", "rhs_mag_9x18_12_57N181S", "rhs_mag_9x18_12_57N181S", "rhsgref_5Rnd_792x57_kar98k", "rhsusf_8Rnd_Slug", "hlc_10rnd_12g_slug_S12", "rhs_mag_9x18_12_57N181S", "rhsgref_5Rnd_792x57_kar98k", "Exile_Magazine_6Rnd_45ACP", "Exile_Magazine_8Rnd_9x18", "rhsusf_mag_7x45acp_MHPg", "Exile_Magazine_8Rnd_9x18", "rhs_mag_9x18_8_57N181S", "Exile_Magazine_8Rnd_9x18", "rhsusf_mag_7x45acp_MHPg", "rhsgref_5Rnd_762x54_m38", "rhsgref_5Rnd_762x54_m38", "Exile_Magazine_6Rnd_45ACP", "Exile_Magazine_5Rnd_22LR", "Exile_Magazine_10Rnd_303", "hlc_10rnd_12g_slug_S12", "rhsusf_8Rnd_Slug", "hlc_10rnd_12g_slug_S12", "Exile_Magazine_6Rnd_45ACP", "rhsusf_mag_7x45acp_MHPg", "rhs_mag_9x18_8_57N181S", "rhs_mag_9x18_12_57N181S", "rhsusf_mag_17Rnd_9x19_JHP", "rhs_mag_9x18_8_57N181S", "Exile_Magazine_5Rnd_22LR", "Exile_Magazine_6Rnd_45ACP", "hlc_5rnd_3006_1903", "Exile_Magazine_8Rnd_9x18", "rhsusf_mag_7x45acp_MHPg", "rhs_mag_9x18_8_57N181S", "rhsusf_mag_7x45acp_MHPg", "rhs_mag_9x18_12_57N181S", "Exile_Magazine_8Rnd_9x18", "rhs_mag_9x18_12_57N181S", "rhsusf_mag_17Rnd_9x19_JHP", "rhsusf_8Rnd_Slug", "rhs_mag_9x18_12_57N181S", "Exile_Magazine_8Rnd_9x18", "rhs_mag_9x18_12_57N181S", "rhs_mag_9x18_12_57N181S", "rhs_mag_9x18_12_57N181S", "hlc_10rnd_12g_slug_S12", "rhs_mag_9x18_12_57N181S", "hlc_10rnd_12g_slug_S12", "hlc_10rnd_12g_slug_S12", "hlc_5rnd_3006_1903", "Exile_Magazine_5Rnd_22LR", "rhsusf_5Rnd_00Buck", "rhsgref_5Rnd_792x57_kar98k", "Exile_Magazine_8Rnd_9x18", "hlc_10rnd_12g_slug_S12", "rhs_mag_9x18_8_57N181S", "Exile_Magazine_6Rnd_45ACP", "Exile_Magazine_6Rnd_45ACP", "rhs_mag_9x18_8_57N181S", "Exile_Magazine_5Rnd_22LR", "rhsusf_5Rnd_00Buck", "Exile_Magazine_6Rnd_45ACP", "Exile_Magazine_8Rnd_9x18", "Exile_Magazine_6Rnd_45ACP", "rhs_mag_9x18_8_57N181S", "rhsusf_mag_7x45acp_MHPg", "rhs_mag_9x18_8_57N181S", "rhsusf_mag_7x45acp_MHPg", "rhs_mag_9x18_12_57N181S", "Exile_Magazine_8Rnd_9x18", "rhsusf_5Rnd_00Buck", "Exile_Magazine_8Rnd_9x18", "Exile_Magazine_8Rnd_9x18", "rhsgref_5Rnd_762x54_m38", "hlc_5rnd_3006_1903", "Exile_Magazine_8Rnd_9x18", "rhs_mag_9x18_8_57N181S", "hlc_10rnd_12g_slug_S12", "rhs_mag_9x18_12_57N181S", "rhs_mag_9x18_8_57N181S", "Exile_Magazine_6Rnd_45ACP", "rhs_mag_9x18_12_57N181S", "rhsusf_8Rnd_Slug", "Exile_Magazine_6Rnd_45ACP", "rhs_mag_9x18_12_57N181S", "Exile_Magazine_6Rnd_45ACP", "rhs_mag_9x18_8_57N181S", "Exile_Magazine_8Rnd_9x18", "Exile_Magazine_8Rnd_9x18", "rhsgref_5Rnd_792x57_kar98k", "rhsusf_5Rnd_00Buck", "rhs_mag_9x18_12_57N181S", "rhsusf_8Rnd_Slug", "rhs_mag_9x18_8_57N181S", "Exile_Magazine_5Rnd_22LR", "rhs_mag_9x18_8_57N181S", "rhs_mag_9x18_12_57N181S", "Exile_Magazine_8Rnd_9x18", "rhs_mag_9x18_12_57N181S", "hlc_5rnd_3006_1903", "Exile_Magazine_5Rnd_22LR", "Exile_Magazine_5Rnd_22LR", "rhsgref_5Rnd_762x54_m38"};

		/*
			Percental Item Spawn Chances of Pistols:

			rhs_weap_pya           = 43.48%
			rhs_weap_makarov_pm    = 43.48%
			rhsusf_weap_glock17g4  = 4.35%
			rhs_weap_pp2000_folded = 4.35%
			hlc_smg_mp5k           = 4.35%
		*/
		Pistols[] = {"rhs_weap_pya", "rhs_weap_pya", "rhs_weap_makarov_pm", "rhs_weap_makarov_pm", "rhsusf_weap_glock17g4", "rhs_weap_makarov_pm", "rhs_weap_pya", "rhs_weap_pya", "rhs_weap_pya", "rhs_weap_pya", "rhs_weap_pya", "rhs_weap_makarov_pm", "rhs_weap_pya", "rhs_weap_makarov_pm", "rhs_weap_pya", "rhs_weap_pya", "hlc_smg_mp5k", "rhs_weap_makarov_pm", "rhs_weap_makarov_pm", "rhs_weap_pp2000_folded", "rhs_weap_makarov_pm", "rhs_weap_makarov_pm", "rhs_weap_makarov_pm"};

		/*
			Percental Item Spawn Chances of PistolAmmo:

			rhs_mag_9x19_17           = 43.48%
			rhs_mag_9x18_8_57N181S    = 43.48%
			rhsusf_mag_17Rnd_9x19_FMJ = 4.35%
			rhs_mag_9x19mm_7n21_20    = 4.35%
			hlc_30Rnd_9x19_B_MP5      = 4.35%
		*/
		PistolAmmo[] = {"rhs_mag_9x19_17", "rhs_mag_9x18_8_57N181S", "rhs_mag_9x19mm_7n21_20", "rhs_mag_9x18_8_57N181S", "rhs_mag_9x19_17", "rhs_mag_9x19_17", "rhs_mag_9x19_17", "rhs_mag_9x18_8_57N181S", "rhsusf_mag_17Rnd_9x19_FMJ", "rhs_mag_9x19_17", "hlc_30Rnd_9x19_B_MP5", "rhs_mag_9x19_17", "rhs_mag_9x18_8_57N181S", "rhs_mag_9x18_8_57N181S", "rhs_mag_9x18_8_57N181S", "rhs_mag_9x18_8_57N181S", "rhs_mag_9x19_17", "rhs_mag_9x18_8_57N181S", "rhs_mag_9x18_8_57N181S", "rhs_mag_9x18_8_57N181S", "rhs_mag_9x19_17", "rhs_mag_9x19_17", "rhs_mag_9x19_17"};

		/*
			Percental Item Spawn Chances of SMG:

			rhs_weap_asval    = 10.99%
			hlc_smg_mp5a2     = 5.49%
			hlc_smg_mp5a4     = 5.49%
			rhsusf_weap_MP7A2 = 1.10%
			rhs_weap_pp2000   = 32.97%
			hlc_smg_mp5k      = 10.99%
			rhs_weap_savz61   = 32.97%
		*/
		SMG[] = {"rhs_weap_savz61", "rhs_weap_asval", "rhs_weap_savz61", "rhs_weap_pp2000", "hlc_smg_mp5k", "rhs_weap_pp2000", "rhs_weap_pp2000", "rhs_weap_savz61", "rhsusf_weap_MP7A2", "rhs_weap_savz61", "rhs_weap_savz61", "rhs_weap_pp2000", "rhs_weap_savz61", "rhs_weap_pp2000", "rhs_weap_asval", "hlc_smg_mp5a2", "rhs_weap_savz61", "rhs_weap_savz61", "rhs_weap_pp2000", "hlc_smg_mp5k", "rhs_weap_savz61", "hlc_smg_mp5k", "hlc_smg_mp5a4", "hlc_smg_mp5a2", "hlc_smg_mp5k", "rhs_weap_asval", "hlc_smg_mp5k", "rhs_weap_pp2000", "hlc_smg_mp5k", "rhs_weap_asval", "rhs_weap_pp2000", "rhs_weap_savz61", "rhs_weap_pp2000", "rhs_weap_pp2000", "rhs_weap_pp2000", "rhs_weap_savz61", "hlc_smg_mp5a2", "hlc_smg_mp5k", "rhs_weap_pp2000", "rhs_weap_pp2000", "hlc_smg_mp5k", "hlc_smg_mp5a4", "rhs_weap_savz61", "rhs_weap_savz61", "hlc_smg_mp5a2", "rhs_weap_asval", "rhs_weap_savz61", "rhs_weap_savz61", "rhs_weap_pp2000", "rhs_weap_asval", "rhs_weap_pp2000", "hlc_smg_mp5a2", "rhs_weap_savz61", "rhs_weap_asval", "rhs_weap_savz61", "rhs_weap_asval", "rhs_weap_savz61", "rhs_weap_savz61", "rhs_weap_pp2000", "rhs_weap_savz61", "rhs_weap_pp2000", "rhs_weap_savz61", "rhs_weap_savz61", "rhs_weap_asval", "rhs_weap_pp2000", "rhs_weap_pp2000", "rhs_weap_pp2000", "rhs_weap_savz61", "rhs_weap_savz61", "rhs_weap_savz61", "rhs_weap_savz61", "rhs_weap_pp2000", "rhs_weap_pp2000", "rhs_weap_pp2000", "rhs_weap_pp2000", "hlc_smg_mp5a4", "hlc_smg_mp5k", "rhs_weap_pp2000", "rhs_weap_savz61", "rhs_weap_pp2000", "rhs_weap_asval", "rhs_weap_pp2000", "rhs_weap_pp2000", "hlc_smg_mp5k", "hlc_smg_mp5a4", "rhs_weap_savz61", "rhs_weap_savz61", "rhs_weap_pp2000", "hlc_smg_mp5a4", "rhs_weap_savz61", "rhs_weap_pp2000"};

		/*
			Percental Item Spawn Chances of SMGAmmo:

			rhs_20rnd_9x39mm_SP5       = 12.35%
			hlc_30Rnd_9x19_B_MP5       = 6.17%
			hlc_30Rnd_9x19_GD_MP5      = 6.17%
			rhsusf_mag_40Rnd_46x30_FMJ = 1.23%
			rhs_mag_9x19mm_7n21_44     = 37.04%
			rhsgref_20rnd_765x17_vz61  = 37.04%
		*/
		SMGAmmo[] = {"rhsgref_20rnd_765x17_vz61", "hlc_30Rnd_9x19_B_MP5", "rhs_mag_9x19mm_7n21_44", "rhs_mag_9x19mm_7n21_44", "rhs_mag_9x19mm_7n21_44", "rhs_mag_9x19mm_7n21_44", "rhs_mag_9x19mm_7n21_44", "hlc_30Rnd_9x19_GD_MP5", "rhsgref_20rnd_765x17_vz61", "rhs_mag_9x19mm_7n21_44", "rhsgref_20rnd_765x17_vz61", "rhsgref_20rnd_765x17_vz61", "rhs_mag_9x19mm_7n21_44", "rhs_mag_9x19mm_7n21_44", "rhsusf_mag_40Rnd_46x30_FMJ", "rhsgref_20rnd_765x17_vz61", "rhs_20rnd_9x39mm_SP5", "rhs_20rnd_9x39mm_SP5", "rhs_mag_9x19mm_7n21_44", "rhs_mag_9x19mm_7n21_44", "rhsgref_20rnd_765x17_vz61", "rhsgref_20rnd_765x17_vz61", "rhsgref_20rnd_765x17_vz61", "rhsgref_20rnd_765x17_vz61", "rhsgref_20rnd_765x17_vz61", "rhs_mag_9x19mm_7n21_44", "rhsgref_20rnd_765x17_vz61", "rhs_20rnd_9x39mm_SP5", "rhs_mag_9x19mm_7n21_44", "rhs_20rnd_9x39mm_SP5", "rhs_mag_9x19mm_7n21_44", "rhsgref_20rnd_765x17_vz61", "rhs_mag_9x19mm_7n21_44", "rhs_mag_9x19mm_7n21_44", "hlc_30Rnd_9x19_GD_MP5", "rhsgref_20rnd_765x17_vz61", "rhs_mag_9x19mm_7n21_44", "rhs_mag_9x19mm_7n21_44", "hlc_30Rnd_9x19_B_MP5", "rhs_mag_9x19mm_7n21_44", "rhs_20rnd_9x39mm_SP5", "rhsgref_20rnd_765x17_vz61", "rhs_20rnd_9x39mm_SP5", "rhsgref_20rnd_765x17_vz61", "rhsgref_20rnd_765x17_vz61", "rhs_20rnd_9x39mm_SP5", "rhs_mag_9x19mm_7n21_44", "rhs_mag_9x19mm_7n21_44", "rhsgref_20rnd_765x17_vz61", "hlc_30Rnd_9x19_B_MP5", "hlc_30Rnd_9x19_B_MP5", "rhsgref_20rnd_765x17_vz61", "rhsgref_20rnd_765x17_vz61", "rhsgref_20rnd_765x17_vz61", "rhs_mag_9x19mm_7n21_44", "rhsgref_20rnd_765x17_vz61", "rhs_20rnd_9x39mm_SP5", "rhsgref_20rnd_765x17_vz61", "rhsgref_20rnd_765x17_vz61", "rhsgref_20rnd_765x17_vz61", "hlc_30Rnd_9x19_GD_MP5", "rhs_mag_9x19mm_7n21_44", "hlc_30Rnd_9x19_GD_MP5", "rhsgref_20rnd_765x17_vz61", "rhs_20rnd_9x39mm_SP5", "rhs_mag_9x19mm_7n21_44", "rhs_mag_9x19mm_7n21_44", "hlc_30Rnd_9x19_GD_MP5", "rhsgref_20rnd_765x17_vz61", "rhsgref_20rnd_765x17_vz61", "rhs_20rnd_9x39mm_SP5", "rhs_mag_9x19mm_7n21_44", "rhs_mag_9x19mm_7n21_44", "rhs_mag_9x19mm_7n21_44", "rhs_mag_9x19mm_7n21_44", "rhsgref_20rnd_765x17_vz61", "rhsgref_20rnd_765x17_vz61", "rhs_mag_9x19mm_7n21_44", "rhs_mag_9x19mm_7n21_44", "rhsgref_20rnd_765x17_vz61", "hlc_30Rnd_9x19_B_MP5"};

		/*
			Percental Item Spawn Chances of Rifles:

			Exile_Weapon_AKS_Gold            = 0.31%
			rhs_weap_ak103_1                 = 0.94%
			rhs_weap_ak103_1_npz             = 0.94%
			rhs_weap_ak103_2                 = 0.94%
			rhs_weap_ak103_2_npz             = 0.94%
			rhs_weap_ak103_gp25_npz          = 0.94%
			rhs_weap_ak103_gp25              = 0.94%
			rhs_weap_ak103                   = 0.94%
			rhs_weap_ak103_npz               = 0.94%
			rhs_weap_ak103_zenitco01         = 0.94%
			rhs_weap_ak103_zenitco01_b33     = 0.94%
			rhs_weap_ak104                   = 0.94%
			rhs_weap_ak104_npz               = 0.94%
			rhs_weap_ak104_zenitco01         = 0.94%
			rhs_weap_ak104_zenitco01_b33     = 0.94%
			rhs_weap_ak105                   = 1.57%
			rhs_weap_ak105_npz               = 1.57%
			rhs_weap_ak105_zenitco01         = 1.57%
			rhs_weap_ak105_zenitco01_b33     = 1.57%
			rhs_weap_ak74                    = 1.57%
			rhs_weap_ak74_gp25               = 1.57%
			rhs_weap_ak74_3                  = 1.57%
			rhs_weap_ak74_2                  = 1.57%
			rhs_weap_ak74m                   = 1.57%
			rhs_weap_ak74m_2mag              = 1.57%
			rhs_weap_ak74m_2mag_camo         = 1.57%
			rhs_weap_ak74m_2mag_npz          = 1.57%
			rhs_weap_ak74m_camo              = 1.57%
			rhs_weap_ak74m_camo_npz          = 1.57%
			rhs_weap_ak74m_desert            = 1.57%
			rhs_weap_ak74m_desert_npz        = 1.57%
			rhs_weap_ak74m_gp25              = 1.57%
			rhs_weap_ak74m_gp25_npz          = 1.57%
			rhs_weap_ak74m_fullplum_gp25     = 1.57%
			rhs_weap_ak74m_fullplum_gp25_npz = 1.57%
			rhs_weap_ak74m_npz               = 1.57%
			rhs_weap_ak74m_plummag           = 1.57%
			rhs_weap_ak74m_plummag_npz       = 1.57%
			rhs_weap_ak74m_fullplum          = 1.57%
			rhs_weap_ak74m_fullplum_npz      = 1.57%
			rhs_weap_ak74m_zenitco01         = 1.57%
			rhs_weap_ak74m_zenitco01_b33     = 1.57%
			rhs_weap_ak74mr                  = 1.57%
			rhs_weap_ak74mr_gp25             = 1.57%
			rhs_weap_ak74n                   = 1.57%
			rhs_weap_ak74n_gp25              = 1.57%
			rhs_weap_ak74n_gp25_npz          = 1.57%
			rhs_weap_ak74n_npz               = 1.57%
			rhs_weap_akm                     = 1.25%
			rhs_weap_akm_gp25                = 1.25%
			rhs_weap_akms                    = 1.25%
			rhs_weap_akms_gp25               = 1.25%
			rhs_weap_aks74                   = 1.57%
			rhs_weap_aks74_gp25              = 1.57%
			rhs_weap_aks74_2                 = 1.57%
			rhs_weap_aks74n                  = 1.57%
			rhs_weap_aks74n_gp25             = 1.57%
			rhs_weap_aks74n_gp25_npz         = 1.57%
			rhs_weap_aks74n_npz              = 1.57%
			rhs_weap_aks74u                  = 1.57%
			rhs_weap_aks74un                 = 1.57%
			rhs_weap_m21a                    = 1.25%
			rhs_weap_m21a_pr                 = 1.25%
			rhs_weap_m21s                    = 1.25%
			rhs_weap_m21s_pr                 = 1.25%
			rhs_weap_g36kv                   = 0.31%
			hlc_rifle_g3a3                   = 0.31%
			hlc_rifle_vendimus               = 0.31%
			SMA_Steyr_AUG_BLACK_F            = 0.31%
			SMA_ACRREMblk                    = 0.31%
			SMA_ACRREMGL_B                   = 0.31%
			SMA_ACRREMCQBGL_B                = 0.31%
			SMA_ACRREMMOEblk                 = 0.31%
			hlc_rifle_FAL5061Rail            = 0.63%
			hlc_rifle_FAL5061                = 0.63%
			hlc_rifle_FAL5000                = 0.63%
			hlc_rifle_FAL5000Rail            = 0.63%
			hlc_rifle_FAL5000_RH             = 0.63%
			hlc_rifle_M14                    = 0.63%
			hlc_rifle_M14_Rail               = 0.63%
			hlc_rifle_auga1_b                = 0.63%
			hlc_rifle_auga1carb_B            = 0.63%
			hlc_rifle_aughbar_B              = 0.63%
			hlc_rifle_auga2_b                = 0.63%
			hlc_rifle_augsr_b                = 0.63%
			rhs_weap_hk416d10                = 0.31%
			SMA_HK417_16in                   = 0.31%
		*/
		Rifles[] = {"rhs_weap_ak74m", "rhs_weap_ak74m_npz", "rhs_weap_aks74n_gp25_npz", "rhs_weap_ak104", "hlc_rifle_auga1carb_B", "rhs_weap_ak74_3", "rhs_weap_ak105_zenitco01", "hlc_rifle_M14_Rail", "rhs_weap_ak74m_zenitco01_b33", "rhs_weap_ak105_npz", "rhs_weap_ak74_2", "rhs_weap_akm", "rhs_weap_g36kv", "SMA_ACRREMblk", "rhs_weap_ak74m_desert_npz", "rhs_weap_ak74", "rhs_weap_ak74n_gp25", "rhs_weap_aks74u", "rhs_weap_ak105_zenitco01", "rhs_weap_ak105_npz", "hlc_rifle_g3a3", "hlc_rifle_M14", "rhs_weap_aks74_2", "rhs_weap_ak74n", "rhs_weap_akms", "rhs_weap_ak105", "rhs_weap_ak74m_2mag", "rhs_weap_ak74m_camo_npz", "rhs_weap_ak74n_gp25_npz", "rhs_weap_ak74n", "rhs_weap_ak74m_plummag", "rhs_weap_ak74m_2mag_npz", "rhs_weap_ak74_3", "rhs_weap_ak74_gp25", "rhs_weap_aks74", "rhs_weap_ak104", "rhs_weap_ak74m_fullplum_gp25_npz", "hlc_rifle_aughbar_B", "rhs_weap_ak74m_2mag_camo", "rhs_weap_aks74_2", "rhs_weap_ak74_2", "rhs_weap_ak74mr", "rhs_weap_ak74m_fullplum_gp25_npz", "rhs_weap_aks74u", "rhs_weap_ak74m_2mag_camo", "rhs_weap_ak103_npz", "rhs_weap_ak74m_desert", "rhs_weap_m21a", "rhs_weap_ak74m_fullplum_gp25", "rhs_weap_ak74m_zenitco01", "rhs_weap_aks74un", "rhs_weap_aks74n_gp25_npz", "rhs_weap_ak104_npz", "rhs_weap_ak74m_fullplum_npz", "rhs_weap_ak74n_gp25_npz", "rhs_weap_ak74m_desert_npz", "rhs_weap_ak74m", "rhs_weap_aks74", "rhs_weap_ak74m_desert", "rhs_weap_aks74n_gp25", "rhs_weap_ak74m_fullplum_npz", "rhs_weap_ak103_2", "Exile_Weapon_AKS_Gold", "rhs_weap_akms_gp25", "rhs_weap_ak74m_zenitco01_b33", "rhs_weap_ak74m_desert_npz", "rhs_weap_ak74m_camo_npz", "rhs_weap_hk416d10", "rhs_weap_ak103_1_npz", "rhs_weap_ak74m_gp25_npz", "rhs_weap_aks74u", "rhs_weap_ak74_gp25", "SMA_HK417_16in", "rhs_weap_ak74m_camo", "rhs_weap_ak74m_fullplum", "hlc_rifle_auga2_b", "rhs_weap_m21a_pr", "rhs_weap_ak74m_fullplum", "rhs_weap_ak74m_camo", "hlc_rifle_vendimus", "rhs_weap_ak74n", "rhs_weap_ak74m_plummag_npz", "rhs_weap_ak74m_plummag", "hlc_rifle_FAL5000", "rhs_weap_ak74n_gp25_npz", "rhs_weap_ak104_zenitco01", "rhs_weap_aks74_gp25", "hlc_rifle_M14_Rail", "rhs_weap_ak74_gp25", "rhs_weap_ak74m_fullplum_gp25_npz", "rhs_weap_aks74n_gp25_npz", "rhs_weap_ak74m_2mag_camo", "rhs_weap_ak74m_camo_npz", "rhs_weap_ak103_npz", "rhs_weap_ak74mr_gp25", "rhs_weap_ak74m_fullplum_gp25_npz", "rhs_weap_ak74", "rhs_weap_aks74n_npz", "rhs_weap_akms", "rhs_weap_ak74n_gp25", "hlc_rifle_auga1_b", "rhs_weap_m21a_pr", "rhs_weap_m21a_pr", "rhs_weap_aks74u", "rhs_weap_ak74n_gp25", "rhs_weap_ak74n_gp25", "rhs_weap_ak74m_plummag_npz", "rhs_weap_ak74n_npz", "rhs_weap_aks74_2", "rhs_weap_ak74m_fullplum", "hlc_rifle_auga2_b", "rhs_weap_aks74n_npz", "rhs_weap_ak103_1", "rhs_weap_ak74mr_gp25", "rhs_weap_ak74m_fullplum_gp25", "rhs_weap_ak74n_gp25", "rhs_weap_ak104_npz", "hlc_rifle_FAL5061", "rhs_weap_akm", "rhs_weap_aks74n_npz", "SMA_ACRREMCQBGL_B", "rhs_weap_aks74n_npz", "rhs_weap_ak74", "rhs_weap_ak103_zenitco01", "rhs_weap_ak103_zenitco01", "rhs_weap_ak74m", "rhs_weap_ak104_npz", "rhs_weap_ak105_npz", "rhs_weap_ak74mr_gp25", "hlc_rifle_FAL5000Rail", "rhs_weap_ak74m_plummag_npz", "rhs_weap_ak74m_zenitco01_b33", "rhs_weap_m21s_pr", "rhs_weap_ak74m_npz", "rhs_weap_ak105_npz", "rhs_weap_ak103_1", "rhs_weap_ak74m_npz", "rhs_weap_m21s", "rhs_weap_ak74m_zenitco01_b33", "rhs_weap_ak74m_camo_npz", "rhs_weap_m21a", "rhs_weap_ak74m_desert_npz", "rhs_weap_aks74n_gp25", "SMA_Steyr_AUG_BLACK_F", "rhs_weap_ak105_zenitco01_b33", "rhs_weap_ak103_zenitco01_b33", "rhs_weap_aks74n_gp25_npz", "rhs_weap_ak74m_fullplum_npz", "rhs_weap_ak74m_2mag_npz", "rhs_weap_ak74m_desert", "rhs_weap_ak74m_2mag", "rhs_weap_ak74m_gp25_npz", "rhs_weap_ak105_zenitco01", "rhs_weap_ak74m_plummag_npz", "rhs_weap_ak74m_gp25_npz", "rhs_weap_ak103_zenitco01_b33", "rhs_weap_ak103_npz", "hlc_rifle_FAL5000_RH", "rhs_weap_ak104_zenitco01_b33", "rhs_weap_ak105_zenitco01_b33", "rhs_weap_ak103_gp25", "rhs_weap_aks74n", "rhs_weap_aks74n", "rhs_weap_ak105", "rhs_weap_ak74_2", "rhs_weap_ak103_gp25_npz", "hlc_rifle_FAL5000Rail", "rhs_weap_aks74n_gp25", "rhs_weap_ak105_zenitco01_b33", "hlc_rifle_FAL5061Rail", "hlc_rifle_aughbar_B", "rhs_weap_aks74u", "rhs_weap_ak74m_2mag_camo", "rhs_weap_akms", "rhs_weap_ak105_npz", "rhs_weap_ak105_zenitco01_b33", "rhs_weap_ak105", "rhs_weap_ak74mr_gp25", "SMA_ACRREMGL_B", "rhs_weap_ak74m", "rhs_weap_ak103_gp25_npz", "rhs_weap_ak74_gp25", "rhs_weap_ak74m_desert_npz", "hlc_rifle_augsr_b", "rhs_weap_ak74m_gp25", "rhs_weap_ak74m_gp25", "rhs_weap_akms_gp25", "rhs_weap_ak103", "rhs_weap_ak74m_fullplum_npz", "hlc_rifle_auga1_b", "rhs_weap_aks74_gp25", "rhs_weap_ak74m_desert", "rhs_weap_ak103_1", "rhs_weap_ak74m_gp25_npz", "rhs_weap_ak74m_zenitco01", "rhs_weap_ak74m_fullplum", "rhs_weap_ak104_zenitco01", "rhs_weap_m21a", "rhs_weap_ak103_1_npz", "rhs_weap_ak103", "rhs_weap_ak74m_fullplum_gp25", "rhs_weap_ak74m_2mag_npz", "rhs_weap_ak74m_fullplum_gp25", "rhs_weap_akms_gp25", "rhs_weap_ak104", "rhs_weap_ak105_zenitco01", "rhs_weap_ak74m_camo", "rhs_weap_ak74_2", "rhs_weap_aks74n_gp25_npz", "rhs_weap_ak74m_npz", "rhs_weap_ak74n", "rhs_weap_ak74mr", "rhs_weap_aks74_gp25", "SMA_ACRREMMOEblk", "rhs_weap_ak103_2_npz", "rhs_weap_akm", "rhs_weap_aks74", "rhs_weap_ak103_2", "rhs_weap_ak74n_npz", "rhs_weap_aks74", "rhs_weap_ak105", "hlc_rifle_FAL5061Rail", "rhs_weap_ak74n_gp25_npz", "rhs_weap_ak103_1_npz", "rhs_weap_aks74", "rhs_weap_m21a", "rhs_weap_ak104_zenitco01", "rhs_weap_ak103_gp25", "rhs_weap_aks74n_npz", "rhs_weap_ak74m_fullplum_gp25", "rhs_weap_aks74n", "rhs_weap_ak104_zenitco01_b33", "rhs_weap_aks74un", "rhs_weap_ak74m_zenitco01_b33", "rhs_weap_ak74mr", "rhs_weap_m21s_pr", "rhs_weap_ak74m", "rhs_weap_aks74un", "rhs_weap_ak74m_2mag_npz", "rhs_weap_ak74m_plummag", "rhs_weap_ak104_zenitco01_b33", "rhs_weap_ak105_zenitco01", "rhs_weap_ak103_2_npz", "rhs_weap_ak74n", "rhs_weap_ak74mr", "rhs_weap_ak74m_zenitco01", "rhs_weap_aks74n_gp25", "rhs_weap_ak105", "rhs_weap_ak74mr_gp25", "hlc_rifle_FAL5000_RH", "rhs_weap_ak74m_2mag_npz", "rhs_weap_ak74", "rhs_weap_akm_gp25", "hlc_rifle_M14", "rhs_weap_akms", "rhs_weap_ak74m_camo_npz", "rhs_weap_ak74m_fullplum", "rhs_weap_ak103_2_npz", "rhs_weap_m21s", "rhs_weap_ak74m_plummag", "rhs_weap_aks74_2", "rhs_weap_ak74mr", "rhs_weap_ak74m_fullplum_npz", "hlc_rifle_augsr_b", "rhs_weap_ak74m_gp25", "rhs_weap_ak74m_zenitco01", "rhs_weap_m21s", "rhs_weap_m21a_pr", "rhs_weap_ak74m_gp25", "rhs_weap_akm_gp25", "rhs_weap_ak74m_2mag", "rhs_weap_ak74m_gp25_npz", "rhs_weap_ak74_3", "rhs_weap_akm_gp25", "rhs_weap_ak103", "rhs_weap_ak103_gp25_npz", "rhs_weap_ak74m_camo", "rhs_weap_ak74m_npz", "rhs_weap_m21s_pr", "rhs_weap_ak103_2", "rhs_weap_m21s", "rhs_weap_ak103_gp25", "rhs_weap_akm_gp25", "rhs_weap_ak103_zenitco01_b33", "rhs_weap_aks74un", "rhs_weap_ak74m_plummag", "rhs_weap_aks74_2", "rhs_weap_ak103_zenitco01", "rhs_weap_aks74_gp25", "rhs_weap_ak74", "rhs_weap_aks74un", "rhs_weap_ak74n_npz", "rhs_weap_ak105_zenitco01_b33", "rhs_weap_akm", "rhs_weap_ak74m_desert", "rhs_weap_ak74_gp25", "rhs_weap_ak74_2", "rhs_weap_ak74m_gp25", "rhs_weap_ak74m_2mag", "rhs_weap_aks74n", "rhs_weap_akms_gp25", "hlc_rifle_FAL5000", "rhs_weap_ak74_3", "rhs_weap_ak74m_plummag_npz", "rhs_weap_ak74m_fullplum_gp25_npz", "rhs_weap_ak74m_camo", "rhs_weap_aks74n", "rhs_weap_ak74n_npz", "rhs_weap_ak74n_gp25_npz", "hlc_rifle_auga1carb_B", "rhs_weap_ak74n_npz", "rhs_weap_ak74m_zenitco01", "rhs_weap_aks74_gp25", "rhs_weap_ak74_3", "rhs_weap_ak74m_2mag", "rhs_weap_ak74m_2mag_camo", "hlc_rifle_FAL5061", "rhs_weap_m21s_pr", "rhs_weap_aks74n_gp25"};

		/*
			Percental Item Spawn Chances of RifleAmmo:

			rhs_30Rnd_762x39mm                  = 16.95%
			rhs_30Rnd_545x39_AK                 = 25.42%
			rhsgref_30rnd_556x45_m21            = 16.95%
			150Rnd_556x45_Drum_Mag_F            = 1.69%
			hlc_20rnd_762x51_b_G3               = 1.69%
			29rnd_300BLK_STANAG                 = 1.69%
			SMA_30Rnd_556x45_M855A1             = 1.69%
			SMA_30Rnd_68x43_BT                  = 3.39%
			hlc_20Rnd_762x51_B_fal              = 13.56%
			hlc_20Rnd_762x51_B_M14              = 5.08%
			hlc_30Rnd_556x45_SPR_AUG            = 8.47%
			rhs_mag_30Rnd_556x45_Mk262_Stanag   = 1.69%
			SMA_20Rnd_762x51mm_M80A1_EPR_Tracer = 1.69%
		*/
		RifleAmmo[] = {"rhsgref_30rnd_556x45_m21", "hlc_30Rnd_556x45_SPR_AUG", "hlc_20Rnd_762x51_B_M14", "rhs_30Rnd_545x39_AK", "rhs_30Rnd_762x39mm", "hlc_20Rnd_762x51_B_fal", "rhs_30Rnd_545x39_AK", "hlc_20Rnd_762x51_B_M14", "rhs_30Rnd_545x39_AK", "rhs_30Rnd_545x39_AK", "rhs_30Rnd_545x39_AK", "rhsgref_30rnd_556x45_m21", "hlc_20Rnd_762x51_B_fal", "rhs_30Rnd_762x39mm", "SMA_20Rnd_762x51mm_M80A1_EPR_Tracer", "rhsgref_30rnd_556x45_m21", "rhsgref_30rnd_556x45_m21", "rhs_30Rnd_545x39_AK", "hlc_20Rnd_762x51_B_fal", "rhsgref_30rnd_556x45_m21", "rhs_30Rnd_545x39_AK", "rhs_30Rnd_762x39mm", "150Rnd_556x45_Drum_Mag_F", "SMA_30Rnd_68x43_BT", "rhsgref_30rnd_556x45_m21", "rhs_30Rnd_545x39_AK", "hlc_20rnd_762x51_b_G3", "29rnd_300BLK_STANAG", "hlc_30Rnd_556x45_SPR_AUG", "rhs_30Rnd_762x39mm", "rhs_30Rnd_762x39mm", "rhs_30Rnd_762x39mm", "rhs_30Rnd_545x39_AK", "rhs_30Rnd_545x39_AK", "hlc_20Rnd_762x51_B_fal", "hlc_20Rnd_762x51_B_fal", "rhs_30Rnd_762x39mm", "rhs_30Rnd_762x39mm", "hlc_20Rnd_762x51_B_fal", "hlc_20Rnd_762x51_B_fal", "rhs_30Rnd_545x39_AK", "rhs_30Rnd_762x39mm", "rhsgref_30rnd_556x45_m21", "hlc_30Rnd_556x45_SPR_AUG", "rhs_mag_30Rnd_556x45_Mk262_Stanag", "rhs_30Rnd_545x39_AK", "SMA_30Rnd_68x43_BT", "SMA_30Rnd_556x45_M855A1", "rhs_30Rnd_545x39_AK", "hlc_20Rnd_762x51_B_fal", "hlc_20Rnd_762x51_B_M14", "rhsgref_30rnd_556x45_m21", "rhs_30Rnd_545x39_AK", "hlc_30Rnd_556x45_SPR_AUG", "hlc_30Rnd_556x45_SPR_AUG", "rhsgref_30rnd_556x45_m21", "rhsgref_30rnd_556x45_m21", "rhs_30Rnd_762x39mm", "rhs_30Rnd_545x39_AK"};

		/*
			Percental Item Spawn Chances of RifleAttachments:

			rhsusf_acc_grip1            = 2.43%
			rhsusf_acc_grip2            = 2.43%
			rhsusf_acc_grip2_tan        = 2.43%
			rhsusf_acc_grip3            = 2.43%
			rhsusf_acc_grip3_tan        = 2.43%
			rhs_acc_grip_rk2            = 2.43%
			rhs_acc_grip_rk6            = 2.43%
			rhs_acc_grip_ffg2           = 2.43%
			rhsusf_acc_anpeq15side      = 1.46%
			rhsusf_acc_anpeq15          = 1.46%
			rhsusf_acc_anpeq15A         = 1.46%
			rhsusf_acc_anpeq15_light    = 1.46%
			rhsusf_acc_M952V            = 1.46%
			rhs_acc_perst3              = 1.46%
			rhs_acc_perst3_top          = 1.46%
			rhs_acc_perst3_2dp_h        = 1.46%
			rhs_acc_perst3_2dp_light_h  = 1.46%
			rhs_acc_2dpZenit            = 1.46%
			rhs_acc_2dpZenit_ris        = 1.46%
			rhs_acc_perst1ik            = 1.46%
			rhs_acc_perst1ik_ris        = 1.46%
			rhsusf_acc_anpeq15_bk       = 1.46%
			rhsusf_acc_anpeq15_bk_light = 1.46%
			rhsusf_acc_harris_swivel    = 1.46%
			rhs_acc_harris_swivel       = 1.46%
			rhs_bipod                   = 1.46%
			rhs_acc_ak5                 = 0.49%
			rhs_acc_dtk                 = 0.49%
			rhs_acc_dtk1                = 0.49%
			rhs_acc_dtk3                = 0.49%
			rhs_acc_dtk4screws          = 0.49%
			rhs_acc_dtk4long            = 0.49%
			rhs_acc_dtk4short           = 0.49%
			rhs_acc_tgpa                = 0.49%
			rhs_acc_dtk1l               = 0.49%
			rhs_acc_pbs1                = 0.49%
			rhsusf_acc_omega9k          = 0.49%
			rhs_acc_uuk                 = 0.49%
			rhs_acc_1pn93_2             = 1.46%
			rhs_acc_1p29                = 1.46%
			rhs_acc_1p63                = 1.46%
			rhs_acc_1p78                = 1.46%
			rhs_acc_1pn93_1             = 1.46%
			rhs_acc_ekp1                = 1.46%
			rhs_acc_pgo7v               = 1.46%
			rhs_acc_pkas                = 1.46%
			rhs_acc_pso1m2              = 1.46%
			rhs_acc_nita                = 1.46%
			rhsusf_acc_ACOG_MDO         = 1.46%
			rhsusf_acc_ACOG_RMR         = 1.46%
			rhsusf_acc_ACOG_d           = 1.46%
			rhsusf_acc_ACOG_wd          = 1.46%
			rhsusf_acc_M8541            = 0.97%
			rhsusf_acc_M8541_low        = 0.97%
			rhsusf_acc_M8541_low_d      = 0.97%
			rhsusf_acc_M8541_low_wd     = 0.97%
			rhsusf_acc_premier_low      = 2.43%
			rhsusf_acc_premier_anpvs27  = 2.43%
			rhsusf_acc_premier          = 2.43%
			rhsusf_acc_SpecterDR        = 2.43%
			rhsusf_acc_SpecterDR_OD     = 2.43%
			rhsusf_acc_SpecterDR_D      = 2.43%
			rhsusf_acc_SpecterDR_A_3d   = 2.43%
			rhs_acc_rakursPM            = 2.43%
			rhs_acc_dh520x56            = 2.43%
			rhs_weap_optic_smaw         = 2.43%
		*/
		RifleAttachments[] = {"rhsusf_acc_SpecterDR_D", "rhs_acc_1p78", "rhsusf_acc_SpecterDR_OD", "rhs_acc_dh520x56", "rhs_acc_2dpZenit", "rhs_bipod", "rhsusf_acc_grip2", "rhsusf_acc_anpeq15A", "rhsusf_acc_anpeq15side", "rhsusf_acc_harris_swivel", "rhsusf_acc_anpeq15_light", "rhs_acc_rakursPM", "rhsusf_acc_SpecterDR", "rhsusf_acc_grip2_tan", "rhsusf_acc_grip1", "rhs_acc_dh520x56", "rhs_acc_dh520x56", "rhs_weap_optic_smaw", "rhsusf_acc_premier", "rhsusf_acc_SpecterDR_A_3d", "rhsusf_acc_premier_low", "rhs_acc_perst3", "rhs_bipod", "rhs_acc_ekp1", "rhs_acc_grip_rk6", "rhs_acc_pbs1", "rhs_acc_grip_rk6", "rhsusf_acc_SpecterDR_A_3d", "rhs_acc_rakursPM", "rhs_acc_1pn93_2", "rhsusf_acc_anpeq15_bk_light", "rhsusf_acc_premier", "rhs_acc_pgo7v", "rhsusf_acc_M8541_low_d", "rhsusf_acc_grip3", "rhs_acc_ak5", "rhsusf_acc_SpecterDR", "rhsusf_acc_ACOG_RMR", "rhs_acc_perst3_top", "rhs_weap_optic_smaw", "rhsusf_acc_M952V", "rhsusf_acc_premier_anpvs27", "rhsusf_acc_anpeq15_light", "rhs_acc_uuk", "rhsusf_acc_grip3_tan", "rhs_acc_2dpZenit", "rhsusf_acc_ACOG_d", "rhsusf_acc_grip3", "rhsusf_acc_M8541", "rhsusf_acc_SpecterDR", "rhsusf_acc_grip2_tan", "rhs_acc_grip_rk2", "rhs_acc_perst1ik_ris", "rhs_acc_dtk3", "rhsusf_acc_M8541_low", "rhs_acc_dtk1", "rhsusf_acc_anpeq15_light", "rhs_acc_harris_swivel", "rhsusf_acc_grip3_tan", "rhs_acc_perst3", "rhsusf_acc_grip2_tan", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_grip3", "rhs_acc_perst1ik", "rhsusf_acc_grip2", "rhsusf_acc_SpecterDR_D", "rhsusf_acc_harris_swivel", "rhs_acc_dtk1l", "rhsusf_acc_ACOG_d", "rhs_acc_pkas", "rhs_acc_perst3_2dp_light_h", "rhs_acc_grip_rk6", "rhsusf_acc_SpecterDR_D", "rhs_acc_perst3_2dp_light_h", "rhs_weap_optic_smaw", "rhsusf_acc_premier_low", "rhs_acc_1p63", "rhs_acc_1p78", "rhs_acc_grip_ffg2", "rhs_acc_grip_ffg2", "rhs_acc_1pn93_1", "rhsusf_acc_grip3_tan", "rhs_acc_perst3_2dp_h", "rhsusf_acc_ACOG_MDO", "rhs_acc_dtk4long", "rhsusf_acc_grip1", "rhsusf_acc_anpeq15side", "rhs_acc_2dpZenit", "rhs_acc_1p29", "rhs_bipod", "rhsusf_acc_ACOG_MDO", "rhs_acc_tgpa", "rhsusf_acc_omega9k", "rhsusf_acc_anpeq15side", "rhs_acc_perst1ik", "rhsusf_acc_ACOG_wd", "rhsusf_acc_anpeq15", "rhs_acc_ekp1", "rhs_acc_pgo7v", "rhsusf_acc_SpecterDR_D", "rhsusf_acc_grip2", "rhsusf_acc_SpecterDR", "rhs_acc_perst3_2dp_light_h", "rhs_acc_perst1ik", "rhs_acc_perst1ik_ris", "rhsusf_acc_M8541_low_d", "rhs_acc_perst3_2dp_h", "rhsusf_acc_SpecterDR_D", "rhsusf_acc_SpecterDR", "rhsusf_acc_M952V", "rhs_acc_2dpZenit_ris", "rhs_acc_grip_ffg2", "rhsusf_acc_anpeq15_bk", "rhs_acc_grip_rk2", "rhs_acc_ekp1", "rhsusf_acc_grip1", "rhsusf_acc_SpecterDR_A_3d", "rhs_acc_rakursPM", "rhs_acc_perst3_top", "rhs_acc_1p63", "rhsusf_acc_anpeq15", "rhs_acc_nita", "rhsusf_acc_SpecterDR_A_3d", "rhsusf_acc_grip1", "rhs_acc_1p63", "rhs_weap_optic_smaw", "rhs_acc_dtk4screws", "rhsusf_acc_premier_low", "rhsusf_acc_grip2_tan", "rhsusf_acc_premier_low", "rhsusf_acc_premier_anpvs27", "rhsusf_acc_grip3", "rhsusf_acc_M8541_low", "rhs_acc_rakursPM", "rhs_acc_dtk", "rhsusf_acc_premier", "rhs_acc_grip_ffg2", "rhsusf_acc_harris_swivel", "rhsusf_acc_SpecterDR_OD", "rhsusf_acc_ACOG_wd", "rhsusf_acc_ACOG_MDO", "rhsusf_acc_ACOG_d", "rhs_acc_1pn93_1", "rhs_acc_grip_rk2", "rhsusf_acc_SpecterDR_A_3d", "rhs_acc_dh520x56", "rhsusf_acc_grip2_tan", "rhsusf_acc_premier_anpvs27", "rhs_acc_dh520x56", "rhs_acc_pso1m2", "rhsusf_acc_premier_low", "rhs_acc_perst1ik_ris", "rhs_acc_rakursPM", "rhs_acc_grip_rk2", "rhsusf_acc_grip3", "rhsusf_acc_premier_anpvs27", "rhsusf_acc_M952V", "rhsusf_acc_ACOG_wd", "rhs_acc_perst3", "rhsusf_acc_premier_anpvs27", "rhsusf_acc_M8541_low_wd", "rhs_acc_harris_swivel", "rhsusf_acc_grip2", "rhs_acc_1pn93_1", "rhs_acc_1p29", "rhs_acc_harris_swivel", "rhs_acc_1pn93_2", "rhs_acc_pso1m2", "rhsusf_acc_ACOG_RMR", "rhsusf_acc_anpeq15A", "rhsusf_acc_M8541_low_wd", "rhsusf_acc_ACOG_RMR", "rhs_acc_grip_ffg2", "rhs_acc_pgo7v", "rhsusf_acc_grip3_tan", "rhsusf_acc_anpeq15_bk_light", "rhsusf_acc_M8541", "rhs_acc_pkas", "rhsusf_acc_premier", "rhsusf_acc_anpeq15A", "rhs_acc_perst3_top", "rhs_acc_nita", "rhsusf_acc_SpecterDR_OD", "rhs_acc_grip_rk2", "rhs_acc_1pn93_2", "rhs_acc_nita", "rhs_acc_pkas", "rhsusf_acc_grip1", "rhs_weap_optic_smaw", "rhs_acc_dtk4short", "rhsusf_acc_anpeq15", "rhs_acc_grip_rk6", "rhsusf_acc_anpeq15_bk_light", "rhs_acc_grip_rk6", "rhs_acc_2dpZenit_ris", "rhsusf_acc_grip3_tan", "rhs_acc_perst3_2dp_h", "rhs_acc_pso1m2", "rhsusf_acc_SpecterDR_OD", "rhsusf_acc_premier", "rhs_acc_1p78", "rhsusf_acc_anpeq15_bk", "rhs_acc_2dpZenit_ris", "rhsusf_acc_SpecterDR_OD", "rhsusf_acc_grip2", "rhs_acc_1p29"};

		/*
			Percental Item Spawn Chances of LMG:

			sma_minimi_mk3_762tlb_wdl = 1.20%
			rhs_weap_pkm              = 24.10%
			hlc_lmg_MG42              = 6.02%
			rhs_weap_pkp              = 24.10%
			lmg_UK59                  = 24.10%
			hlc_lmg_MG3KWS_b          = 1.20%
			rhs_weap_m84              = 12.05%
			rhs_weap_m27iar_grip      = 6.02%
			rhs_weap_m249_pip         = 1.20%
		*/
		LMG[] = {"lmg_UK59", "lmg_UK59", "rhs_weap_pkm", "rhs_weap_pkm", "lmg_UK59", "lmg_UK59", "rhs_weap_pkp", "rhs_weap_pkp", "lmg_UK59", "rhs_weap_pkp", "rhs_weap_pkm", "rhs_weap_pkm", "rhs_weap_pkp", "rhs_weap_pkm", "rhs_weap_m84", "rhs_weap_pkp", "rhs_weap_m84", "rhs_weap_pkm", "rhs_weap_pkm", "lmg_UK59", "rhs_weap_pkm", "rhs_weap_m84", "rhs_weap_m84", "rhs_weap_m27iar_grip", "rhs_weap_pkm", "lmg_UK59", "rhs_weap_pkm", "rhs_weap_m84", "lmg_UK59", "lmg_UK59", "rhs_weap_pkp", "sma_minimi_mk3_762tlb_wdl", "lmg_UK59", "lmg_UK59", "lmg_UK59", "rhs_weap_m27iar_grip", "rhs_weap_m84", "rhs_weap_pkp", "rhs_weap_pkp", "rhs_weap_pkp", "hlc_lmg_MG42", "rhs_weap_pkm", "rhs_weap_m27iar_grip", "rhs_weap_pkp", "rhs_weap_m249_pip", "lmg_UK59", "rhs_weap_pkm", "lmg_UK59", "rhs_weap_pkm", "hlc_lmg_MG42", "hlc_lmg_MG42", "rhs_weap_pkm", "rhs_weap_pkm", "rhs_weap_m84", "rhs_weap_m27iar_grip", "rhs_weap_pkp", "rhs_weap_m84", "rhs_weap_pkp", "lmg_UK59", "lmg_UK59", "rhs_weap_pkp", "rhs_weap_pkp", "rhs_weap_pkm", "rhs_weap_pkm", "rhs_weap_pkm", "rhs_weap_pkm", "lmg_UK59", "hlc_lmg_MG42", "hlc_lmg_MG3KWS_b", "lmg_UK59", "lmg_UK59", "hlc_lmg_MG42", "rhs_weap_pkp", "rhs_weap_pkm", "rhs_weap_pkp", "rhs_weap_m84", "rhs_weap_pkp", "rhs_weap_pkp", "rhs_weap_m27iar_grip", "lmg_UK59", "rhs_weap_pkp", "rhs_weap_m84", "rhs_weap_pkp"};

		/*
			Percental Item Spawn Chances of LMGAmmo:

			SMA_150Rnd_762_M80A1                          = 1.20%
			rhs_100Rnd_762x54mmR                          = 48.19%
			hlc_200Rnd_792x57_B_MG42                      = 6.02%
			50Rnd_UK59_762x54_Tracer_Green                = 24.10%
			hlc_250Rnd_762x51_Barrier_MG3                 = 1.20%
			rhssaf_250Rnd_762x54R                         = 12.05%
			rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red = 6.02%
			rhs_200rnd_556x45_M_SAW                       = 1.20%
		*/
		LMGAmmo[] = {"rhs_100Rnd_762x54mmR", "rhssaf_250Rnd_762x54R", "rhs_100Rnd_762x54mmR", "rhssaf_250Rnd_762x54R", "50Rnd_UK59_762x54_Tracer_Green", "rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR", "50Rnd_UK59_762x54_Tracer_Green", "rhssaf_250Rnd_762x54R", "50Rnd_UK59_762x54_Tracer_Green", "hlc_200Rnd_792x57_B_MG42", "hlc_200Rnd_792x57_B_MG42", "rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", "rhs_100Rnd_762x54mmR", "50Rnd_UK59_762x54_Tracer_Green", "rhs_100Rnd_762x54mmR", "rhssaf_250Rnd_762x54R", "hlc_200Rnd_792x57_B_MG42", "rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", "50Rnd_UK59_762x54_Tracer_Green", "rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR", "50Rnd_UK59_762x54_Tracer_Green", "rhs_100Rnd_762x54mmR", "50Rnd_UK59_762x54_Tracer_Green", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", "rhssaf_250Rnd_762x54R", "50Rnd_UK59_762x54_Tracer_Green", "rhs_100Rnd_762x54mmR", "50Rnd_UK59_762x54_Tracer_Green", "rhs_100Rnd_762x54mmR", "50Rnd_UK59_762x54_Tracer_Green", "hlc_200Rnd_792x57_B_MG42", "rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR", "hlc_200Rnd_792x57_B_MG42", "rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR", "50Rnd_UK59_762x54_Tracer_Green", "rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR", "50Rnd_UK59_762x54_Tracer_Green", "rhssaf_250Rnd_762x54R", "rhs_100Rnd_762x54mmR", "hlc_250Rnd_762x51_Barrier_MG3", "50Rnd_UK59_762x54_Tracer_Green", "50Rnd_UK59_762x54_Tracer_Green", "50Rnd_UK59_762x54_Tracer_Green", "50Rnd_UK59_762x54_Tracer_Green", "rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", "rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR", "50Rnd_UK59_762x54_Tracer_Green", "rhssaf_250Rnd_762x54R", "SMA_150Rnd_762_M80A1", "50Rnd_UK59_762x54_Tracer_Green", "50Rnd_UK59_762x54_Tracer_Green", "rhssaf_250Rnd_762x54R", "rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR", "rhssaf_250Rnd_762x54R", "rhs_100Rnd_762x54mmR", "rhssaf_250Rnd_762x54R", "rhs_100Rnd_762x54mmR", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", "50Rnd_UK59_762x54_Tracer_Green", "rhs_200rnd_556x45_M_SAW", "rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR"};

		/*
			Percental Item Spawn Chances of Snipers:

			rhs_weap_svdp         = 23.81%
			rhs_weap_svdp_wd      = 9.52%
			rhs_weap_svdp_wd_npz  = 9.52%
			rhs_weap_svdp_npz     = 9.52%
			rhs_weap_svds         = 9.52%
			rhs_weap_svds_npz     = 4.76%
			rhs_weap_t5000        = 1.43%
			rhs_weap_vss          = 2.38%
			rhs_weap_vss_grip     = 2.38%
			rhs_weap_vss_grip_npz = 2.38%
			rhs_weap_vss_npz      = 2.38%
			rhs_weap_m24sws       = 4.76%
			hlc_rifle_M14_Rail    = 9.52%
			rhs_weap_m82a1        = 0.48%
			hlc_rifle_awmagnum    = 0.48%
			hlc_rifle_augsrhbar_b = 7.14%
		*/
		Snipers[] = {"rhs_weap_svdp_wd_npz", "rhs_weap_vss_grip_npz", "rhs_weap_svdp", "rhs_weap_vss_grip", "rhs_weap_m24sws", "rhs_weap_svdp_wd_npz", "rhs_weap_svdp", "rhs_weap_svdp", "rhs_weap_svdp_npz", "rhs_weap_vss_npz", "rhs_weap_svdp_wd", "hlc_rifle_M14_Rail", "rhs_weap_svdp", "rhs_weap_svdp", "rhs_weap_vss", "rhs_weap_svdp_wd_npz", "rhs_weap_svds", "rhs_weap_svds_npz", "rhs_weap_vss", "rhs_weap_svdp", "rhs_weap_svds_npz", "rhs_weap_svds", "rhs_weap_svds", "hlc_rifle_M14_Rail", "hlc_rifle_M14_Rail", "rhs_weap_svdp_wd_npz", "rhs_weap_t5000", "rhs_weap_svdp_wd", "rhs_weap_svdp", "rhs_weap_svdp", "rhs_weap_svdp_npz", "hlc_rifle_augsrhbar_b", "rhs_weap_svdp", "rhs_weap_m24sws", "hlc_rifle_augsrhbar_b", "rhs_weap_svds_npz", "hlc_rifle_augsrhbar_b", "rhs_weap_svds", "rhs_weap_svdp_wd_npz", "rhs_weap_svdp_wd_npz", "rhs_weap_svdp_npz", "rhs_weap_svdp_wd_npz", "rhs_weap_svdp", "rhs_weap_svdp", "hlc_rifle_augsrhbar_b", "rhs_weap_svds", "rhs_weap_svdp", "hlc_rifle_augsrhbar_b", "rhs_weap_vss_grip_npz", "rhs_weap_svdp_npz", "rhs_weap_svds", "rhs_weap_svdp_wd", "rhs_weap_svdp_wd_npz", "rhs_weap_svdp", "rhs_weap_svds", "rhs_weap_svdp", "rhs_weap_svdp", "rhs_weap_svdp_npz", "rhs_weap_svds_npz", "hlc_rifle_M14_Rail", "rhs_weap_svdp", "rhs_weap_m24sws", "rhs_weap_m24sws", "rhs_weap_svdp_npz", "rhs_weap_vss_npz", "hlc_rifle_M14_Rail", "rhs_weap_svdp", "hlc_rifle_M14_Rail", "rhs_weap_svdp_wd_npz", "rhs_weap_svds", "rhs_weap_svdp", "rhs_weap_vss_npz", "hlc_rifle_M14_Rail", "rhs_weap_svdp", "rhs_weap_svdp", "hlc_rifle_augsrhbar_b", "rhs_weap_svdp", "rhs_weap_svdp_wd_npz", "rhs_weap_vss_grip", "rhs_weap_svdp", "rhs_weap_svdp_wd", "rhs_weap_svdp_wd", "rhs_weap_svdp", "rhs_weap_t5000", "rhs_weap_m24sws", "rhs_weap_svds", "rhs_weap_svdp", "rhs_weap_svdp_wd", "rhs_weap_svdp", "rhs_weap_svdp", "hlc_rifle_M14_Rail", "rhs_weap_svdp", "rhs_weap_svdp_npz", "rhs_weap_svdp_npz", "rhs_weap_svdp_npz", "rhs_weap_svdp", "rhs_weap_svdp_wd", "rhs_weap_m24sws", "rhs_weap_svdp_wd_npz", "rhs_weap_svdp_wd", "rhs_weap_svdp_wd", "rhs_weap_svdp_npz", "rhs_weap_svdp", "hlc_rifle_augsrhbar_b", "rhs_weap_svdp", "rhs_weap_svds", "rhs_weap_svdp", "rhs_weap_svdp", "rhs_weap_svdp_wd", "rhs_weap_svdp", "rhs_weap_svdp_wd_npz", "rhs_weap_svds", "rhs_weap_vss_npz", "rhs_weap_svdp", "rhs_weap_svds", "hlc_rifle_M14_Rail", "rhs_weap_svds", "rhs_weap_svdp_npz", "rhs_weap_svds", "rhs_weap_svdp", "rhs_weap_svdp_wd", "rhs_weap_vss_npz", "rhs_weap_m24sws", "rhs_weap_svds_npz", "rhs_weap_vss", "rhs_weap_svdp_wd_npz", "rhs_weap_m24sws", "rhs_weap_svds", "hlc_rifle_augsrhbar_b", "rhs_weap_vss", "hlc_rifle_augsrhbar_b", "rhs_weap_svds", "rhs_weap_svdp_wd", "hlc_rifle_M14_Rail", "hlc_rifle_M14_Rail", "rhs_weap_m82a1", "rhs_weap_svdp_wd_npz", "rhs_weap_svdp_npz", "rhs_weap_svdp_npz", "rhs_weap_svdp_wd", "hlc_rifle_M14_Rail", "rhs_weap_svdp_wd", "hlc_rifle_M14_Rail", "rhs_weap_svds", "rhs_weap_svds_npz", "rhs_weap_svdp_wd", "rhs_weap_svdp_npz", "rhs_weap_svds_npz", "rhs_weap_svdp_wd_npz", "hlc_rifle_M14_Rail", "rhs_weap_svdp", "rhs_weap_svdp", "rhs_weap_svdp", "rhs_weap_vss_grip_npz", "rhs_weap_svdp_wd_npz", "rhs_weap_svdp", "hlc_rifle_M14_Rail", "rhs_weap_svdp", "rhs_weap_svds", "rhs_weap_svds_npz", "rhs_weap_svdp", "hlc_rifle_augsrhbar_b", "rhs_weap_svdp_npz", "rhs_weap_svdp", "rhs_weap_vss_grip", "rhs_weap_svdp_npz", "rhs_weap_svdp", "rhs_weap_svdp_wd", "rhs_weap_svdp", "hlc_rifle_augsrhbar_b", "rhs_weap_svdp_wd", "rhs_weap_svds", "rhs_weap_svdp", "rhs_weap_vss_grip_npz", "hlc_rifle_augsrhbar_b", "hlc_rifle_M14_Rail", "rhs_weap_svdp", "rhs_weap_svdp_npz", "rhs_weap_vss", "rhs_weap_svds", "hlc_rifle_M14_Rail", "rhs_weap_svdp", "rhs_weap_m24sws", "rhs_weap_svdp_wd", "hlc_rifle_M14_Rail", "rhs_weap_svdp_npz", "hlc_rifle_augsrhbar_b", "rhs_weap_t5000", "rhs_weap_svdp_wd_npz", "hlc_rifle_M14_Rail", "hlc_rifle_M14_Rail", "rhs_weap_svdp", "rhs_weap_svdp_wd", "rhs_weap_vss_grip_npz", "rhs_weap_svdp_wd_npz", "rhs_weap_svdp_npz", "rhs_weap_svdp_npz", "rhs_weap_svds_npz", "rhs_weap_svdp_wd_npz", "rhs_weap_vss_grip", "hlc_rifle_augsrhbar_b", "rhs_weap_svdp", "hlc_rifle_augsrhbar_b", "rhs_weap_svdp_wd_npz", "rhs_weap_m24sws", "rhs_weap_svdp_wd", "rhs_weap_vss_grip", "rhs_weap_svds_npz", "rhs_weap_svdp", "hlc_rifle_awmagnum"};

		/*
			Percental Item Spawn Chances of SniperAmmo:

			rhs_10Rnd_762x54mmR_7N1        = 48.00%
			rhs_5Rnd_338lapua_t5000        = 2.40%
			rhs_10rnd_9x39mm_SP5           = 16.00%
			rhsusf_5Rnd_762x51_m993_Mag    = 8.00%
			hlc_20Rnd_762x51_mk316_M14     = 12.00%
			rhsusf_mag_10Rnd_STD_50BMG_M33 = 0.80%
			hlc_5rnd_300WM_FMJ_AWM         = 0.80%
			hlc_40Rnd_556x45_SPR_AUG       = 12.00%
		*/
		SniperAmmo[] = {"rhs_10Rnd_762x54mmR_7N1", "hlc_20Rnd_762x51_mk316_M14", "rhs_10Rnd_762x54mmR_7N1", "hlc_40Rnd_556x45_SPR_AUG", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_10rnd_9x39mm_SP5", "hlc_40Rnd_556x45_SPR_AUG", "hlc_40Rnd_556x45_SPR_AUG", "rhsusf_5Rnd_762x51_m993_Mag", "rhs_10Rnd_762x54mmR_7N1", "hlc_20Rnd_762x51_mk316_M14", "rhs_10rnd_9x39mm_SP5", "hlc_20Rnd_762x51_mk316_M14", "rhs_10Rnd_762x54mmR_7N1", "hlc_40Rnd_556x45_SPR_AUG", "rhsusf_5Rnd_762x51_m993_Mag", "rhs_10rnd_9x39mm_SP5", "rhsusf_5Rnd_762x51_m993_Mag", "rhs_10Rnd_762x54mmR_7N1", "hlc_20Rnd_762x51_mk316_M14", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "hlc_20Rnd_762x51_mk316_M14", "rhs_10rnd_9x39mm_SP5", "hlc_40Rnd_556x45_SPR_AUG", "hlc_40Rnd_556x45_SPR_AUG", "hlc_40Rnd_556x45_SPR_AUG", "rhs_10rnd_9x39mm_SP5", "rhs_10Rnd_762x54mmR_7N1", "hlc_40Rnd_556x45_SPR_AUG", "rhs_10rnd_9x39mm_SP5", "rhs_10Rnd_762x54mmR_7N1", "hlc_20Rnd_762x51_mk316_M14", "hlc_40Rnd_556x45_SPR_AUG", "rhsusf_5Rnd_762x51_m993_Mag", "rhs_10Rnd_762x54mmR_7N1", "hlc_40Rnd_556x45_SPR_AUG", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_10rnd_9x39mm_SP5", "rhs_10Rnd_762x54mmR_7N1", "rhs_10rnd_9x39mm_SP5", "rhs_10Rnd_762x54mmR_7N1", "rhs_10rnd_9x39mm_SP5", "hlc_20Rnd_762x51_mk316_M14", "rhs_10rnd_9x39mm_SP5", "rhs_5Rnd_338lapua_t5000", "hlc_40Rnd_556x45_SPR_AUG", "hlc_20Rnd_762x51_mk316_M14", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_5Rnd_338lapua_t5000", "rhsusf_5Rnd_762x51_m993_Mag", "rhs_10Rnd_762x54mmR_7N1", "rhsusf_5Rnd_762x51_m993_Mag", "rhs_10rnd_9x39mm_SP5", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "hlc_20Rnd_762x51_mk316_M14", "rhsusf_5Rnd_762x51_m993_Mag", "rhs_10Rnd_762x54mmR_7N1", "hlc_40Rnd_556x45_SPR_AUG", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "hlc_20Rnd_762x51_mk316_M14", "rhs_10rnd_9x39mm_SP5", "hlc_40Rnd_556x45_SPR_AUG", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhsusf_5Rnd_762x51_m993_Mag", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "hlc_20Rnd_762x51_mk316_M14", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "hlc_40Rnd_556x45_SPR_AUG", "rhs_10Rnd_762x54mmR_7N1", "rhs_10rnd_9x39mm_SP5", "hlc_40Rnd_556x45_SPR_AUG", "hlc_20Rnd_762x51_mk316_M14", "rhsusf_5Rnd_762x51_m993_Mag", "hlc_20Rnd_762x51_mk316_M14", "rhs_10rnd_9x39mm_SP5", "rhsusf_mag_10Rnd_STD_50BMG_M33", "rhsusf_5Rnd_762x51_m993_Mag", "rhs_10Rnd_762x54mmR_7N1", "rhs_10rnd_9x39mm_SP5", "hlc_20Rnd_762x51_mk316_M14", "rhs_10Rnd_762x54mmR_7N1", "hlc_5rnd_300WM_FMJ_AWM", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_10rnd_9x39mm_SP5", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_10rnd_9x39mm_SP5", "rhs_10Rnd_762x54mmR_7N1", "hlc_20Rnd_762x51_mk316_M14", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_10rnd_9x39mm_SP5", "rhs_10rnd_9x39mm_SP5", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_10rnd_9x39mm_SP5", "rhs_10Rnd_762x54mmR_7N1", "rhs_5Rnd_338lapua_t5000"};

		/*
			Percental Item Spawn Chances of SniperAttachments:

			rhs_acc_pso1m2          = 32.00%
			rhs_acc_pso1m21         = 32.00%
			rhsusf_acc_LEUPOLDMK4   = 8.00%
			rhsusf_acc_LEUPOLDMK4_2 = 8.00%
			hlc_optic_LRT_m14       = 8.00%
			optic_AMS               = 8.00%
			optic_LRPS              = 4.00%
		*/
		SniperAttachments[] = {"rhs_acc_pso1m21", "rhs_acc_pso1m2", "rhs_acc_pso1m2", "rhs_acc_pso1m2", "rhsusf_acc_LEUPOLDMK4_2", "rhs_acc_pso1m2", "rhs_acc_pso1m2", "rhs_acc_pso1m21", "rhsusf_acc_LEUPOLDMK4_2", "hlc_optic_LRT_m14", "rhs_acc_pso1m21", "optic_AMS", "rhs_acc_pso1m21", "optic_LRPS", "rhs_acc_pso1m2", "rhsusf_acc_LEUPOLDMK4", "rhs_acc_pso1m2", "rhs_acc_pso1m21", "hlc_optic_LRT_m14", "rhs_acc_pso1m2", "hlc_optic_LRT_m14", "rhs_acc_pso1m2", "rhs_acc_pso1m2", "rhs_acc_pso1m21", "rhs_acc_pso1m2", "rhs_acc_pso1m2", "rhs_acc_pso1m21", "rhsusf_acc_LEUPOLDMK4", "hlc_optic_LRT_m14", "rhsusf_acc_LEUPOLDMK4", "hlc_optic_LRT_m14", "rhs_acc_pso1m2", "rhsusf_acc_LEUPOLDMK4_2", "rhs_acc_pso1m2", "rhsusf_acc_LEUPOLDMK4_2", "optic_LRPS", "rhs_acc_pso1m21", "rhs_acc_pso1m21", "rhs_acc_pso1m2", "rhs_acc_pso1m21", "rhs_acc_pso1m21", "rhs_acc_pso1m2", "rhsusf_acc_LEUPOLDMK4_2", "rhs_acc_pso1m21", "rhsusf_acc_LEUPOLDMK4_2", "rhs_acc_pso1m2", "rhs_acc_pso1m21", "optic_AMS", "rhs_acc_pso1m21", "rhs_acc_pso1m2", "rhs_acc_pso1m21", "rhsusf_acc_LEUPOLDMK4_2", "rhs_acc_pso1m2", "rhs_acc_pso1m21", "rhs_acc_pso1m2", "rhs_acc_pso1m21", "rhs_acc_pso1m2", "rhs_acc_pso1m2", "rhs_acc_pso1m21", "optic_AMS", "rhsusf_acc_LEUPOLDMK4", "rhs_acc_pso1m21", "optic_AMS", "optic_LRPS", "rhs_acc_pso1m21", "hlc_optic_LRT_m14", "rhs_acc_pso1m2", "rhs_acc_pso1m21", "rhs_acc_pso1m2", "hlc_optic_LRT_m14", "rhs_acc_pso1m21", "rhs_acc_pso1m21", "rhs_acc_pso1m2", "optic_AMS", "hlc_optic_LRT_m14", "optic_AMS", "rhsusf_acc_LEUPOLDMK4_2", "optic_AMS", "rhsusf_acc_LEUPOLDMK4_2", "optic_AMS", "rhsusf_acc_LEUPOLDMK4_2", "optic_LRPS", "rhs_acc_pso1m2", "rhs_acc_pso1m2", "rhs_acc_pso1m21", "rhs_acc_pso1m2", "rhs_acc_pso1m21", "rhs_acc_pso1m21", "rhs_acc_pso1m2", "hlc_optic_LRT_m14", "rhs_acc_pso1m21", "rhs_acc_pso1m21", "rhs_acc_pso1m2", "optic_AMS", "rhs_acc_pso1m21", "rhs_acc_pso1m2", "rhs_acc_pso1m21", "rhsusf_acc_LEUPOLDMK4", "rhsusf_acc_LEUPOLDMK4", "rhs_acc_pso1m21", "rhs_acc_pso1m21", "rhs_acc_pso1m21", "rhs_acc_pso1m2", "hlc_optic_LRT_m14", "rhs_acc_pso1m2", "optic_LRPS", "rhs_acc_pso1m2", "rhs_acc_pso1m2", "rhs_acc_pso1m21", "rhs_acc_pso1m21", "rhs_acc_pso1m2", "rhs_acc_pso1m21", "rhsusf_acc_LEUPOLDMK4", "rhs_acc_pso1m2", "rhsusf_acc_LEUPOLDMK4", "rhs_acc_pso1m2", "rhs_acc_pso1m2", "rhsusf_acc_LEUPOLDMK4", "rhsusf_acc_LEUPOLDMK4", "optic_AMS", "rhs_acc_pso1m21", "rhs_acc_pso1m2", "rhs_acc_pso1m21", "rhs_acc_pso1m21", "rhs_acc_pso1m21"};

		/*
			Percental Item Spawn Chances of HandGrenades:

			HandGrenade  = 20.00%
			MiniGrenade  = 20.00%
			rhs_mag_rgd5 = 20.00%
			rhs_mag_m67  = 20.00%
			rhs_VOG25    = 20.00%
		*/
		HandGrenades[] = {"HandGrenade", "rhs_mag_m67", "MiniGrenade", "rhs_VOG25", "rhs_mag_rgd5"};

		/*
			Percental Item Spawn Chances of Explosives:

			DemoCharge_Remote_Mag    = 4.55%
			IEDUrbanSmall_Remote_Mag = 45.45%
			IEDLandSmall_Remote_Mag  = 45.45%
			SatchelCharge_Remote_Mag = 4.55%
		*/
		Explosives[] = {"IEDLandSmall_Remote_Mag", "IEDLandSmall_Remote_Mag", "IEDUrbanSmall_Remote_Mag", "IEDUrbanSmall_Remote_Mag", "IEDLandSmall_Remote_Mag", "IEDUrbanSmall_Remote_Mag", "IEDUrbanSmall_Remote_Mag", "IEDLandSmall_Remote_Mag", "IEDUrbanSmall_Remote_Mag", "IEDUrbanSmall_Remote_Mag", "IEDLandSmall_Remote_Mag", "IEDLandSmall_Remote_Mag", "IEDLandSmall_Remote_Mag", "IEDLandSmall_Remote_Mag", "IEDUrbanSmall_Remote_Mag", "IEDLandSmall_Remote_Mag", "DemoCharge_Remote_Mag", "IEDUrbanSmall_Remote_Mag", "IEDUrbanSmall_Remote_Mag", "IEDUrbanSmall_Remote_Mag", "SatchelCharge_Remote_Mag", "IEDLandSmall_Remote_Mag"};

		/*
			Percental Item Spawn Chances of CivilianItems:

			ItemWatch              = 19.05%
			NVGoggles              = 19.05%
			ItemRadio              = 19.05%
			ItemGPS                = 19.05%
			Binocular              = 19.05%
			Exile_Item_MobilePhone = 4.76%
		*/
		CivilianItems[] = {"ItemGPS", "NVGoggles", "ItemRadio", "ItemGPS", "Binocular", "ItemRadio", "Exile_Item_MobilePhone", "ItemGPS", "Binocular", "ItemWatch", "ItemWatch", "NVGoggles", "ItemWatch", "ItemRadio", "Binocular", "ItemWatch", "Binocular", "ItemGPS", "NVGoggles", "ItemGPS", "Binocular", "ItemGPS", "NVGoggles", "ItemWatch", "Exile_Item_MobilePhone", "ItemWatch", "NVGoggles", "Binocular", "ItemGPS", "ItemWatch", "ItemWatch", "Binocular", "NVGoggles", "ItemRadio", "ItemRadio", "Binocular", "ItemGPS", "Binocular", "Binocular", "Exile_Item_MobilePhone", "ItemWatch", "ItemGPS", "NVGoggles", "ItemRadio", "Binocular", "ItemWatch", "NVGoggles", "NVGoggles", "ItemGPS", "ItemWatch", "ItemRadio", "NVGoggles", "NVGoggles", "NVGoggles", "Exile_Item_MobilePhone", "ItemWatch", "ItemWatch", "ItemRadio", "NVGoggles", "ItemWatch", "ItemGPS", "Binocular", "ItemRadio", "ItemWatch", "ItemGPS", "Binocular", "ItemWatch", "Exile_Item_MobilePhone", "ItemWatch", "ItemWatch", "Binocular", "NVGoggles", "ItemRadio", "ItemRadio", "ItemGPS", "ItemWatch", "ItemRadio", "ItemGPS", "Binocular", "ItemRadio", "ItemGPS", "ItemRadio", "NVGoggles", "ItemGPS", "ItemRadio", "ItemRadio", "ItemRadio", "Binocular", "ItemGPS", "ItemWatch", "NVGoggles", "ItemRadio", "NVGoggles", "ItemGPS", "NVGoggles", "Binocular", "ItemGPS", "ItemRadio", "Binocular", "NVGoggles", "Binocular", "ItemRadio", "NVGoggles", "ItemGPS", "Binocular"};

		/*
			Percental Item Spawn Chances of CivilianClothing:

			U_C_Poor_1               = 3.45%
			U_C_Poor_2               = 3.45%
			U_C_Poor_shorts_1        = 3.45%
			U_C_HunterBody_grn       = 3.45%
			U_C_Poloshirt_salmon     = 3.45%
			U_C_Poloshirt_tricolour  = 3.45%
			U_C_Poloshirt_stripped   = 3.45%
			U_C_Poloshirt_burgundy   = 3.45%
			U_C_Poloshirt_blue       = 3.45%
			U_C_Journalist           = 3.45%
			U_C_Scientist            = 3.45%
			U_Rangemaster            = 3.45%
			U_OrestesBody            = 3.45%
			U_NikosBody              = 3.45%
			U_NikosAgedBody          = 3.45%
			U_I_C_Soldier_Bandit_1_F = 3.45%
			U_I_C_Soldier_Bandit_2_F = 3.45%
			U_I_C_Soldier_Bandit_3_F = 3.45%
			U_I_C_Soldier_Bandit_4_F = 3.45%
			U_I_C_Soldier_Bandit_5_F = 3.45%
			U_C_man_sport_1_F        = 3.45%
			U_C_man_sport_2_F        = 3.45%
			U_C_man_sport_3_F        = 3.45%
			U_C_Man_casual_1_F       = 3.45%
			U_C_Man_casual_2_F       = 3.45%
			U_C_Man_casual_3_F       = 3.45%
			U_C_Man_casual_4_F       = 3.45%
			U_C_Man_casual_5_F       = 3.45%
			U_C_Man_casual_6_F       = 3.45%
		*/
		CivilianClothing[] = {"U_Rangemaster", "U_NikosAgedBody", "U_C_Poor_shorts_1", "U_NikosBody", "U_C_Poor_1", "U_I_C_Soldier_Bandit_2_F", "U_C_man_sport_1_F", "U_C_Poloshirt_salmon", "U_C_Journalist", "U_C_Scientist", "U_C_Poor_2", "U_C_Poloshirt_burgundy", "U_C_Poloshirt_blue", "U_C_Man_casual_4_F", "U_C_Poloshirt_stripped", "U_I_C_Soldier_Bandit_4_F", "U_I_C_Soldier_Bandit_5_F", "U_C_Poloshirt_tricolour", "U_C_Man_casual_2_F", "U_C_Man_casual_5_F", "U_C_man_sport_2_F", "U_I_C_Soldier_Bandit_1_F", "U_C_Man_casual_6_F", "U_OrestesBody", "U_C_man_sport_3_F", "U_I_C_Soldier_Bandit_3_F", "U_C_Man_casual_1_F", "U_C_Man_casual_3_F", "U_C_HunterBody_grn"};

		/*
			Percental Item Spawn Chances of CivilianBackpacks:

			B_AssaultPack_khk   = 9.09%
			B_AssaultPack_dgtl  = 9.09%
			B_AssaultPack_rgr   = 9.09%
			B_AssaultPack_sgg   = 9.09%
			B_AssaultPack_blk   = 9.09%
			B_AssaultPack_cbr   = 9.09%
			B_AssaultPack_mcamo = 9.09%
			B_Kitbag_mcamo      = 9.09%
			B_Kitbag_sgg        = 9.09%
			B_Kitbag_cbr        = 9.09%
			B_AssaultPack_tna_F = 9.09%
		*/
		CivilianBackpacks[] = {"B_AssaultPack_mcamo", "B_Kitbag_cbr", "B_AssaultPack_khk", "B_AssaultPack_dgtl", "B_AssaultPack_tna_F", "B_Kitbag_mcamo", "B_AssaultPack_sgg", "B_AssaultPack_rgr", "B_AssaultPack_blk", "B_Kitbag_sgg", "B_AssaultPack_cbr"};

		/*
			Percental Item Spawn Chances of CivilianVests:

			V_Rangemaster_belt   = 50.00%
			V_Press_F            = 25.00%
			V_TacVest_blk_POLICE = 25.00%
		*/
		CivilianVests[] = {"V_TacVest_blk_POLICE", "V_Press_F", "V_TacVest_blk_POLICE", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_Press_F", "V_Press_F", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_TacVest_blk_POLICE", "V_TacVest_blk_POLICE", "V_TacVest_blk_POLICE", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_TacVest_blk_POLICE", "V_Press_F", "V_Press_F", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_TacVest_blk_POLICE", "V_Rangemaster_belt", "V_TacVest_blk_POLICE", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_TacVest_blk_POLICE", "V_Press_F", "V_TacVest_blk_POLICE", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_Press_F", "V_TacVest_blk_POLICE", "V_Press_F", "V_Rangemaster_belt", "V_Press_F", "V_TacVest_blk_POLICE", "V_TacVest_blk_POLICE", "V_TacVest_blk_POLICE", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_TacVest_blk_POLICE", "V_TacVest_blk_POLICE", "V_TacVest_blk_POLICE", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_Press_F", "V_Rangemaster_belt", "V_Press_F", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_Press_F", "V_Press_F", "V_Press_F", "V_TacVest_blk_POLICE", "V_Rangemaster_belt", "V_TacVest_blk_POLICE", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_Press_F", "V_Press_F", "V_Press_F", "V_TacVest_blk_POLICE", "V_TacVest_blk_POLICE", "V_Press_F", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_Press_F", "V_TacVest_blk_POLICE", "V_TacVest_blk_POLICE", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_TacVest_blk_POLICE", "V_Press_F", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_Press_F", "V_Rangemaster_belt", "V_Press_F", "V_TacVest_blk_POLICE", "V_Press_F", "V_Rangemaster_belt", "V_Press_F", "V_Rangemaster_belt", "V_Press_F", "V_Rangemaster_belt", "V_Rangemaster_belt"};

		/*
			Percental Item Spawn Chances of CivilianHeadgear:

			H_Bandanna_surfer  = 5.56%
			H_Beret_blk_POLICE = 5.56%
			H_Cap_blk          = 5.56%
			H_Cap_blk_Raven    = 5.56%
			H_Cap_blu          = 5.56%
			H_Cap_grn          = 5.56%
			H_Cap_headphones   = 5.56%
			H_Cap_oli          = 5.56%
			H_Cap_press        = 5.56%
			H_Cap_red          = 5.56%
			H_Cap_tan          = 5.56%
			H_Hat_blue         = 5.56%
			H_Hat_brown        = 5.56%
			H_Hat_checker      = 5.56%
			H_Hat_grey         = 5.56%
			H_Hat_tan          = 5.56%
			H_StrawHat         = 5.56%
			H_StrawHat_dark    = 5.56%
		*/
		CivilianHeadgear[] = {"H_Cap_tan", "H_StrawHat_dark", "H_Cap_oli", "H_Cap_headphones", "H_Hat_checker", "H_Cap_blu", "H_Hat_grey", "H_Cap_press", "H_Cap_grn", "H_Cap_blk_Raven", "H_Hat_tan", "H_Hat_brown", "H_Beret_blk_POLICE", "H_StrawHat", "H_Hat_blue", "H_Cap_blk", "H_Bandanna_surfer", "H_Cap_red"};

		/*
			Percental Item Spawn Chances of GuerillaItems:

			ItemCompass = 100.00%
		*/
		GuerillaItems[] = {"ItemCompass", "ItemCompass", "ItemCompass", "ItemCompass", "ItemCompass", "ItemCompass", "ItemCompass", "ItemCompass", "ItemCompass", "ItemCompass"};

		/*
			Percental Item Spawn Chances of GuerillaClothing:

			U_IG_Guerilla1_1                         = 0.35%
			U_IG_Guerilla2_1                         = 0.35%
			U_IG_Guerilla2_2                         = 0.35%
			U_IG_Guerilla2_3                         = 0.35%
			U_IG_Guerilla3_1                         = 0.35%
			U_IG_Guerilla3_2                         = 0.35%
			U_IG_leader                              = 0.35%
			U_I_G_resistanceLeader_F                 = 0.35%
			U_I_C_Soldier_Para_1_F                   = 0.35%
			U_I_C_Soldier_Para_2_F                   = 0.35%
			U_I_C_Soldier_Para_3_F                   = 0.35%
			U_I_C_Soldier_Para_4_F                   = 0.35%
			U_I_C_Soldier_Para_5_F                   = 0.35%
			U_I_C_Soldier_Camo_F                     = 0.35%
			TRYK_U_B_OD_OD_CombatUniform             = 0.35%
			TRYK_U_B_OD_OD_R_CombatUniform           = 0.35%
			TRYK_U_B_TANTAN_CombatUniform            = 0.35%
			TRYK_U_B_TANTAN_R_CombatUniform          = 0.35%
			TRYK_U_B_BLKBLK_CombatUniform            = 0.35%
			TRYK_U_B_BLKBLK_R_CombatUniform          = 0.35%
			TRYK_U_B_GRYOCP_CombatUniform            = 0.35%
			TRYK_U_B_GRYOCP_R_CombatUniformTshirt    = 0.35%
			TRYK_U_B_TANOCP_CombatUniform            = 0.35%
			TRYK_U_B_TANOCP_R_CombatUniformTshirt    = 0.35%
			TRYK_U_B_BLKOCP_CombatUniform            = 0.35%
			TRYK_U_B_BLKOCP_R_CombatUniformTshirt    = 0.35%
			TRYK_U_B_BLKTAN_CombatUniform            = 0.35%
			TRYK_U_B_BLKTANR_CombatUniformTshirt     = 0.35%
			TRYK_U_B_ODTAN_CombatUniform             = 0.35%
			TRYK_U_B_ODTANR_CombatUniformTshirt      = 0.35%
			TRYK_U_B_GRTAN_CombatUniform             = 0.35%
			TRYK_U_B_GRTANR_CombatUniformTshirt      = 0.35%
			TRYK_U_B_wood_CombatUniform              = 0.35%
			TRYK_U_B_woodR_CombatUniformTshirt       = 0.35%
			TRYK_U_B_wood3c_CombatUniform            = 0.35%
			TRYK_U_B_wood3c_CombatUniformTshirt      = 0.35%
			TRYK_U_B_MARPAT_WOOD_CombatUniform       = 0.35%
			TRYK_U_B_MARPAT_WOOD_CombatUniformTshirt = 0.35%
			TRYK_U_B_WOOD_MARPAT_CombatUniform       = 0.35%
			TRYK_U_B_WOOD_MARPAT_CombatUniformTshirt = 0.35%
			TRYK_U_B_woodtan_CombatUniform           = 0.35%
			TRYK_U_B_woodtanR_CombatUniformTshirt    = 0.35%
			TRYK_U_B_JSDF_CombatUniform              = 0.35%
			TRYK_U_B_JSDF_CombatUniformTshirt        = 0.35%
			TRYK_U_B_3CD_Delta_BDU                   = 0.35%
			TRYK_U_B_3CD_Delta_BDUTshirt             = 0.35%
			TRYK_U_B_3CD_Ranger_BDU                  = 0.35%
			TRYK_U_B_3CD_Ranger_BDUTshirt            = 0.35%
			TRYK_U_B_3CD_BLK_BDUTshirt               = 0.35%
			TRYK_U_B_3CD_BLK_BDUTshirt2              = 0.35%
			TRYK_U_B_ACU                             = 0.35%
			TRYK_U_B_ACUTshirt                       = 0.35%
			TRYK_U_B_MARPAT_Wood                     = 0.35%
			TRYK_U_B_MARPAT_Wood_Tshirt              = 0.35%
			TRYK_U_B_MARPAT_Desert                   = 0.35%
			TRYK_U_B_MARPAT_Desert_Tshirt            = 0.35%
			TRYK_U_B_MARPAT_Desert2                  = 0.35%
			TRYK_U_B_MARPAT_Desert2_Tshirt           = 0.35%
			TRYK_U_B_3c                              = 0.35%
			TRYK_U_B_3cr                             = 0.35%
			TRYK_U_B_Sage_Tshirt                     = 0.35%
			TRYK_U_B_BLK3CD                          = 0.35%
			TRYK_U_B_BLK3CD_Tshirt                   = 0.35%
			TRYK_U_B_BLK                             = 0.35%
			TRYK_U_B_BLK_Tshirt                      = 0.35%
			TRYK_U_B_BLKTAN                          = 0.35%
			TRYK_U_B_BLKTAN_Tshirt                   = 0.35%
			TRYK_U_B_ODTAN                           = 0.35%
			TRYK_U_B_ODTAN_Tshirt                    = 0.35%
			TRYK_U_B_BLK_OD                          = 0.35%
			TRYK_U_B_BLK_OD_Tshirt                   = 0.35%
			TRYK_U_B_C01_Tsirt                       = 0.35%
			TRYK_U_B_C02_Tsirt                       = 0.35%
			TRYK_U_B_OD_BLK                          = 0.35%
			TRYK_U_B_OD_BLK_2                        = 0.35%
			TRYK_U_B_BLK_TAN_1                       = 0.35%
			TRYK_U_B_BLK_TAN_2                       = 0.35%
			TRYK_U_B_wh_tan_Rollup_CombatUniform     = 0.35%
			TRYK_U_B_wh_OD_Rollup_CombatUniform      = 0.35%
			TRYK_U_B_wh_blk_Rollup_CombatUniform     = 0.35%
			TRYK_U_B_BLK_tan_Rollup_CombatUniform    = 0.35%
			TRYK_U_B_BLK_OD_Rollup_CombatUniform     = 0.35%
			TRYK_U_B_NATO_UCP_GRY_CombatUniform      = 0.35%
			TRYK_U_B_NATO_UCP_GRY_R_CombatUniform    = 0.35%
			TRYK_U_B_NATO_UCP_CombatUniform          = 0.35%
			TRYK_U_B_NATO_UCP_R_CombatUniform        = 0.35%
			TRYK_U_B_NATO_OCP_c_BLK_CombatUniform    = 0.35%
			TRYK_U_B_NATO_OCP_BLK_c_R_CombatUniform  = 0.35%
			TRYK_U_B_NATO_OCP_BLK_CombatUniform      = 0.35%
			TRYK_U_B_NATO_OCP_BLK_R_CombatUniform    = 0.35%
			TRYK_U_B_NATO_OCPD_CombatUniform         = 0.35%
			TRYK_U_B_NATO_OCPD_R_CombatUniform       = 0.35%
			TRYK_U_B_NATO_OCP_CombatUniform          = 0.35%
			TRYK_U_B_NATO_OCP_R_CombatUniform        = 0.35%
			TRYK_U_B_AOR1_Rollup_CombatUniform       = 0.35%
			TRYK_U_B_AOR2_Rollup_CombatUniform       = 0.35%
			TRYK_U_B_MTP_CombatUniform               = 0.35%
			TRYK_U_B_MTP_R_CombatUniform             = 0.35%
			TRYK_U_B_MTP_BLK_CombatUniform           = 0.35%
			TRYK_U_B_MTP_BLK_R_CombatUniform         = 0.35%
			TRYK_U_B_Woodland                        = 0.35%
			TRYK_U_B_Woodland_Tshirt                 = 0.35%
			TRYK_U_B_WDL_GRY_CombatUniform           = 0.35%
			TRYK_U_B_WDL_GRY_R_CombatUniform         = 0.35%
			TRYK_U_B_ARO1_GR_CombatUniform           = 0.35%
			TRYK_U_B_ARO1_GR_R_CombatUniform         = 0.35%
			TRYK_U_B_ARO1_GRY_CombatUniform          = 0.35%
			TRYK_U_B_ARO1_GRY_R_CombatUniform        = 0.35%
			TRYK_U_B_ARO1_CombatUniform              = 0.35%
			TRYK_U_B_ARO1R_CombatUniform             = 0.35%
			TRYK_U_B_ARO1_BLK_CombatUniform          = 0.35%
			TRYK_U_B_ARO1_BLK_R_CombatUniform        = 0.35%
			TRYK_U_B_ARO1_CBR_CombatUniform          = 0.35%
			TRYK_U_B_ARO1_CBR_R_CombatUniform        = 0.35%
			TRYK_U_B_ARO2_CombatUniform              = 0.35%
			TRYK_U_B_ARO2R_CombatUniform             = 0.35%
			TRYK_U_B_AOR2_BLK_CombatUniform          = 0.35%
			TRYK_U_B_AOR2_BLK_R_CombatUniform        = 0.35%
			TRYK_U_B_AOR2_OD_CombatUniform           = 0.35%
			TRYK_U_B_AOR2_OD_R_CombatUniform         = 0.35%
			TRYK_U_B_AOR2_GRY_CombatUniform          = 0.35%
			TRYK_U_B_AOR2_GRY_R_CombatUniform        = 0.35%
			TRYK_U_B_Snow_CombatUniform              = 0.35%
			TRYK_U_B_Snowt                           = 0.35%
			TRYK_U_B_Denim_T_WH                      = 0.35%
			TRYK_U_B_Denim_T_BK                      = 0.35%
			TRYK_U_B_BLK_T_WH                        = 0.35%
			TRYK_U_B_BLK_T_BK                        = 0.35%
			TRYK_U_B_RED_T_BR                        = 0.35%
			TRYK_U_B_Denim_T_BG_WH                   = 0.35%
			TRYK_U_B_Denim_T_BG_BK                   = 0.35%
			TRYK_U_B_BLK_T_BG_WH                     = 0.35%
			TRYK_U_B_BLK_T_BG_BK                     = 0.35%
			TRYK_U_B_RED_T_BG_BR                     = 0.35%
			TRYK_U_B_fleece                          = 0.35%
			TRYK_U_B_fleece_UCP                      = 0.35%
			TRYK_U_B_UCP_PCUs                        = 0.35%
			TRYK_U_B_GRY_PCUs                        = 0.35%
			TRYK_U_B_Wood_PCUs                       = 0.35%
			TRYK_U_B_PCUs                            = 0.35%
			TRYK_U_B_UCP_PCUs_R                      = 0.35%
			TRYK_U_B_GRY_PCUs_R                      = 0.35%
			TRYK_U_B_Wood_PCUs_R                     = 0.35%
			TRYK_U_B_PCUs_R                          = 0.35%
			TRYK_U_B_PCUGs                           = 0.35%
			TRYK_U_B_PCUODs                          = 0.35%
			TRYK_U_B_PCUGs_gry                       = 0.35%
			TRYK_U_B_PCUGs_BLK                       = 0.35%
			TRYK_U_B_PCUGs_OD                        = 0.35%
			TRYK_U_B_PCUGs_gry_R                     = 0.35%
			TRYK_U_B_PCUGs_BLK_R                     = 0.35%
			TRYK_U_B_PCUGs_OD_R                      = 0.35%
			TRYK_U_Bts_GRYGRY_PCUs                   = 0.35%
			TRYK_U_Bts_UCP_PCUs                      = 0.35%
			TRYK_U_Bts_Wood_PCUs                     = 0.35%
			TRYK_U_Bts_PCUs                          = 0.35%
			TRYK_U_pad_j                             = 0.35%
			TRYK_U_pad_j_blk                         = 0.35%
			TRYK_U_pad_hood_Cl                       = 0.35%
			TRYK_U_pad_hood_Cl_blk                   = 0.35%
			TRYK_U_pad_hood_tan                      = 0.35%
			TRYK_U_pad_hood_Blk                      = 0.35%
			TRYK_U_pad_hood_CSATBlk                  = 0.35%
			TRYK_U_pad_hood_Blod                     = 0.35%
			TRYK_U_pad_hood_odBK                     = 0.35%
			TRYK_U_pad_hood_BKT2                     = 0.35%
			TRYK_hoodie_Blk                          = 0.35%
			TRYK_hoodie_FR                           = 0.35%
			TRYK_hoodie_Wood                         = 0.35%
			TRYK_hoodie_3c                           = 0.35%
			TRYK_T_camo_tan                          = 0.35%
			TRYK_T_camo_3c                           = 0.35%
			TRYK_T_camo_Wood                         = 0.35%
			TRYK_T_camo_wood_marpat                  = 0.35%
			TRYK_T_camo_Desert_marpat                = 0.35%
			TRYK_T_camo_3c_BG                        = 0.35%
			TRYK_T_camo_Wood_BG                      = 0.35%
			TRYK_T_camo_wood_marpat_BG               = 0.35%
			TRYK_T_camo_desert_marpat_BG             = 0.35%
			TRYK_T_PAD                               = 0.35%
			TRYK_T_OD_PAD                            = 0.35%
			TRYK_T_TAN_PAD                           = 0.35%
			TRYK_T_BLK_PAD                           = 0.35%
			TRYK_T_T2_PAD                            = 0.35%
			TRYK_T_CSAT_PAD                          = 0.35%
			TRYK_U_nohoodPcu_gry                     = 0.35%
			TRYK_U_hood_nc                           = 0.35%
			TRYK_U_hood_mc                           = 0.35%
			TRYK_U_denim_hood_blk                    = 0.35%
			TRYK_U_denim_hood_mc                     = 0.35%
			TRYK_U_denim_hood_3c                     = 0.35%
			TRYK_U_denim_hood_nc                     = 0.35%
			TRYK_U_denim_jersey_blu                  = 0.35%
			TRYK_U_denim_jersey_blk                  = 0.35%
			TRYK_shirts_PAD                          = 0.35%
			TRYK_shirts_OD_PAD                       = 0.35%
			TRYK_shirts_TAN_PAD                      = 0.35%
			TRYK_shirts_BLK_PAD                      = 0.35%
			TRYK_shirts_PAD_BK                       = 0.35%
			TRYK_shirts_OD_PAD_BK                    = 0.35%
			TRYK_shirts_TAN_PAD_BK                   = 0.35%
			TRYK_shirts_BLK_PAD_BK                   = 0.35%
			TRYK_shirts_PAD_BLW                      = 0.35%
			TRYK_shirts_OD_PAD_BLW                   = 0.35%
			TRYK_shirts_TAN_PAD_BLW                  = 0.35%
			TRYK_shirts_BLK_PAD_BLW                  = 0.35%
			TRYK_shirts_PAD_YEL                      = 0.35%
			TRYK_shirts_OD_PAD_YEL                   = 0.35%
			TRYK_shirts_TAN_PAD_YEL                  = 0.35%
			TRYK_shirts_BLK_PAD_YEL                  = 0.35%
			TRYK_shirts_PAD_RED2                     = 0.35%
			TRYK_shirts_OD_PAD_RED2                  = 0.35%
			TRYK_shirts_TAN_PAD_RED2                 = 0.35%
			TRYK_shirts_BLK_PAD_RED2                 = 0.35%
			TRYK_shirts_PAD_BLU3                     = 0.35%
			TRYK_shirts_OD_PAD_BLU3                  = 0.35%
			TRYK_shirts_TAN_PAD_BLU3                 = 0.35%
			TRYK_shirts_BLK_PAD_BLU3                 = 0.35%
			TRYK_shirts_DENIM_R                      = 0.35%
			TRYK_shirts_DENIM_BL                     = 0.35%
			TRYK_shirts_DENIM_BK                     = 0.35%
			TRYK_shirts_DENIM_WH                     = 0.35%
			TRYK_shirts_DENIM_BWH                    = 0.35%
			TRYK_shirts_DENIM_RED2                   = 0.35%
			TRYK_shirts_DENIM_WHB                    = 0.35%
			TRYK_shirts_DENIM_ylb                    = 0.35%
			TRYK_shirts_DENIM_od                     = 0.35%
			TRYK_shirts_DENIM_R_Sleeve               = 0.35%
			TRYK_shirts_DENIM_BL_Sleeve              = 0.35%
			TRYK_shirts_DENIM_BK_Sleeve              = 0.35%
			TRYK_shirts_DENIM_WH_Sleeve              = 0.35%
			TRYK_shirts_DENIM_BWH_Sleeve             = 0.35%
			TRYK_shirts_DENIM_RED2_Sleeve            = 0.35%
			TRYK_shirts_DENIM_WHB_Sleeve             = 0.35%
			TRYK_shirts_DENIM_ylb_Sleeve             = 0.35%
			TRYK_shirts_DENIM_od_Sleeve              = 0.35%
			TRYK_shirts_PAD_BL                       = 0.35%
			TRYK_shirts_OD_PAD_BL                    = 0.35%
			TRYK_shirts_TAN_PAD_BL                   = 0.35%
			TRYK_shirts_BLK_PAD_BL                   = 0.35%
			TRYK_U_taki_wh                           = 0.35%
			TRYK_U_taki_COY                          = 0.35%
			TRYK_U_taki_BL                           = 0.35%
			TRYK_U_taki_BLK                          = 0.35%
			TRYK_U_Bts_PCUGs                         = 0.35%
			TRYK_U_Bts_PCUODs                        = 0.35%
			TRYK_U_taki_G_WH                         = 0.35%
			TRYK_U_taki_G_COY                        = 0.35%
			TRYK_U_taki_G_BL                         = 0.35%
			TRYK_U_taki_G_BLK                        = 0.35%
			TRYK_U_B_PCUHs                           = 0.35%
			TRYK_U_B_PCUGHs                          = 0.35%
			TRYK_U_B_PCUODHs                         = 0.35%
			TRYK_B_USMC_R                            = 0.35%
			TRYK_B_USMC_R_ROLL                       = 0.35%
			TRYK_ZARATAKI                            = 0.35%
			TRYK_ZARATAKI2                           = 0.35%
			TRYK_ZARATAKI3                           = 0.35%
			TRYK_B_TRYK_UCP_T                        = 0.35%
			TRYK_B_TRYK_3C_T                         = 0.35%
			TRYK_B_TRYK_MTP_T                        = 0.35%
			TRYK_B_TRYK_OCP_T                        = 0.35%
			TRYK_B_TRYK_OCP_D_T                      = 0.35%
			TRYK_DMARPAT_T                           = 0.35%
			TRYK_C_AOR2_T                            = 0.35%
			TRYK_U_B_Sage_T                          = 0.35%
			TRYK_U_B_Wood_T                          = 0.35%
			TRYK_U_B_BLTAN_T                         = 0.35%
			TRYK_U_B_BLOD_T                          = 0.35%
			TRYK_OVERALL_flesh                       = 0.35%
			TRYK_OVERALL_nok_flesh                   = 0.35%
			TRYK_OVERALL_SAGE_BLKboots               = 0.35%
			TRYK_OVERALL_SAGE_BLKboots_nk_blk        = 0.35%
			TRYK_OVERALL_SAGE_BLKboots_nk            = 0.35%
			TRYK_OVERALL_SAGE_BLKboots_nk_blk2       = 0.35%
			TRYK_OVERALL_SAGE                        = 0.35%
			TRYK_SUITS_BLK_F                         = 0.35%
			TRYK_SUITS_BR_F                          = 0.35%
			TRYK_U_B_PCUHsW                          = 0.35%
			TRYK_U_B_PCUHsW2                         = 0.35%
			TRYK_U_B_PCUHsW3                         = 0.35%
			TRYK_U_B_PCUHsW4                         = 0.35%
			TRYK_U_B_PCUHsW5                         = 0.35%
			TRYK_U_B_PCUHsW6                         = 0.35%
			TRYK_U_B_PCUHsW7                         = 0.35%
			TRYK_U_B_PCUHsW8                         = 0.35%
			TRYK_U_B_PCUHsW9                         = 0.35%
		*/
		GuerillaClothing[] = {"TRYK_shirts_DENIM_RED2_Sleeve", "TRYK_U_Bts_PCUs", "TRYK_U_hood_mc", "TRYK_ZARATAKI", "TRYK_U_B_JSDF_CombatUniformTshirt", "U_IG_Guerilla3_1", "U_I_C_Soldier_Para_3_F", "TRYK_shirts_DENIM_BWH_Sleeve", "TRYK_shirts_PAD_BL", "TRYK_shirts_TAN_PAD_BLU3", "TRYK_U_B_PCUGs_OD", "TRYK_shirts_OD_PAD_BLW", "TRYK_U_B_WDL_GRY_CombatUniform", "TRYK_U_B_JSDF_CombatUniform", "TRYK_U_B_PCUHsW9", "TRYK_B_TRYK_UCP_T", "TRYK_U_B_wh_tan_Rollup_CombatUniform", "U_I_C_Soldier_Para_2_F", "TRYK_U_B_BLK_tan_Rollup_CombatUniform", "TRYK_U_B_3CD_Delta_BDU", "U_I_C_Soldier_Para_4_F", "TRYK_U_B_OD_OD_CombatUniform", "TRYK_U_B_AOR1_Rollup_CombatUniform", "TRYK_B_TRYK_OCP_D_T", "TRYK_U_pad_hood_Cl", "TRYK_U_B_wood_CombatUniform", "U_I_C_Soldier_Para_1_F", "TRYK_U_B_ARO2R_CombatUniform", "TRYK_shirts_DENIM_WHB", "TRYK_U_B_PCUODHs", "TRYK_shirts_DENIM_BL", "U_IG_Guerilla2_2", "TRYK_U_B_Denim_T_BK", "TRYK_U_B_NATO_OCPD_R_CombatUniform", "TRYK_shirts_PAD_BK", "TRYK_U_B_NATO_OCP_BLK_c_R_CombatUniform", "TRYK_U_B_Woodland", "TRYK_U_Bts_PCUODs", "TRYK_shirts_BLK_PAD", "TRYK_T_camo_Desert_marpat", "TRYK_shirts_DENIM_ylb_Sleeve", "TRYK_U_B_MARPAT_WOOD_CombatUniformTshirt", "TRYK_U_B_Snow_CombatUniform", "TRYK_U_B_ARO1_CBR_R_CombatUniform", "TRYK_U_B_NATO_OCP_R_CombatUniform", "TRYK_U_B_AOR2_BLK_CombatUniform", "TRYK_U_B_ARO1_BLK_R_CombatUniform", "TRYK_U_B_MARPAT_Desert2_Tshirt", "TRYK_U_B_BLKTAN", "TRYK_T_camo_Wood_BG", "TRYK_shirts_DENIM_R_Sleeve", "U_IG_leader", "TRYK_T_camo_wood_marpat_BG", "TRYK_U_B_AOR2_OD_R_CombatUniform", "TRYK_U_B_NATO_UCP_GRY_CombatUniform", "TRYK_U_B_BLK_TAN_1", "TRYK_shirts_OD_PAD_BL", "TRYK_T_camo_tan", "TRYK_U_pad_hood_tan", "TRYK_U_B_ARO1_BLK_CombatUniform", "TRYK_U_B_BLKTAN_CombatUniform", "TRYK_U_B_PCUGs_OD_R", "TRYK_U_B_woodtanR_CombatUniformTshirt", "TRYK_shirts_OD_PAD_YEL", "TRYK_U_B_TANTAN_R_CombatUniform", "TRYK_shirts_DENIM_BWH", "TRYK_U_B_AOR2_BLK_R_CombatUniform", "TRYK_U_denim_jersey_blu", "TRYK_U_Bts_UCP_PCUs", "TRYK_shirts_DENIM_BL_Sleeve", "TRYK_U_B_PCUHsW", "TRYK_U_pad_hood_Blk", "TRYK_U_B_Woodland_Tshirt", "TRYK_shirts_DENIM_WHB_Sleeve", "TRYK_shirts_DENIM_RED2", "TRYK_U_taki_BLK", "TRYK_U_pad_hood_BKT2", "TRYK_U_B_PCUHsW3", "TRYK_U_denim_hood_mc", "TRYK_hoodie_Wood", "U_IG_Guerilla2_3", "TRYK_U_pad_hood_CSATBlk", "TRYK_U_B_MARPAT_Wood_Tshirt", "TRYK_U_B_PCUGs_gry", "TRYK_shirts_OD_PAD_BLU3", "TRYK_U_B_ODTANR_CombatUniformTshirt", "TRYK_B_TRYK_3C_T", "TRYK_U_B_MTP_BLK_CombatUniform", "TRYK_U_B_BLK3CD_Tshirt", "TRYK_U_B_TANOCP_CombatUniform", "TRYK_U_B_TANTAN_CombatUniform", "TRYK_U_B_Denim_T_BG_BK", "TRYK_U_B_BLKOCP_R_CombatUniformTshirt", "TRYK_U_B_ACU", "TRYK_hoodie_3c", "TRYK_OVERALL_SAGE_BLKboots_nk_blk2", "TRYK_shirts_DENIM_ylb", "TRYK_U_B_NATO_UCP_GRY_R_CombatUniform", "TRYK_U_B_GRTANR_CombatUniformTshirt", "TRYK_U_B_PCUGs_gry_R", "TRYK_U_B_ARO1_GRY_CombatUniform", "TRYK_U_B_3CD_BLK_BDUTshirt2", "TRYK_shirts_BLK_PAD_BK", "TRYK_U_B_RED_T_BG_BR", "TRYK_U_B_fleece_UCP", "TRYK_U_B_C01_Tsirt", "TRYK_U_B_ACUTshirt", "TRYK_U_pad_hood_odBK", "TRYK_shirts_TAN_PAD_BK", "TRYK_U_taki_COY", "TRYK_hoodie_FR", "TRYK_U_B_BLK_T_BK", "TRYK_U_B_Sage_T", "TRYK_U_B_BLOD_T", "TRYK_U_denim_hood_blk", "TRYK_U_B_BLKTANR_CombatUniformTshirt", "TRYK_shirts_PAD_BLU3", "U_I_G_resistanceLeader_F", "TRYK_U_B_ARO2_CombatUniform", "TRYK_OVERALL_flesh", "TRYK_U_B_ARO1_GRY_R_CombatUniform", "TRYK_shirts_PAD_YEL", "TRYK_OVERALL_SAGE_BLKboots_nk", "TRYK_U_B_AOR2_GRY_R_CombatUniform", "TRYK_U_B_BLK3CD", "TRYK_OVERALL_nok_flesh", "TRYK_T_camo_desert_marpat_BG", "TRYK_shirts_OD_PAD", "TRYK_U_B_GRYOCP_CombatUniform", "TRYK_U_B_NATO_OCP_c_BLK_CombatUniform", "TRYK_U_B_TANOCP_R_CombatUniformTshirt", "TRYK_U_B_woodtan_CombatUniform", "TRYK_U_B_AOR2_GRY_CombatUniform", "TRYK_shirts_DENIM_WH", "TRYK_U_B_BLK_Tshirt", "TRYK_U_B_3CD_Delta_BDUTshirt", "TRYK_shirts_TAN_PAD_RED2", "TRYK_B_TRYK_MTP_T", "TRYK_U_B_OD_BLK", "TRYK_shirts_BLK_PAD_RED2", "TRYK_shirts_DENIM_WH_Sleeve", "TRYK_U_B_Snowt", "TRYK_U_B_UCP_PCUs_R", "TRYK_U_Bts_GRYGRY_PCUs", "TRYK_U_B_woodR_CombatUniformTshirt", "TRYK_U_B_PCUHsW4", "TRYK_shirts_TAN_PAD_BL", "TRYK_ZARATAKI2", "TRYK_U_B_PCUHsW7", "TRYK_U_B_PCUODs", "TRYK_U_B_WOOD_MARPAT_CombatUniform", "TRYK_SUITS_BR_F", "TRYK_U_B_BLKOCP_CombatUniform", "TRYK_U_denim_hood_nc", "TRYK_shirts_BLK_PAD_YEL", "TRYK_B_TRYK_OCP_T", "TRYK_U_B_RED_T_BR", "TRYK_U_pad_hood_Blod", "U_I_C_Soldier_Para_5_F", "TRYK_U_Bts_Wood_PCUs", "TRYK_U_taki_G_COY", "TRYK_U_B_BLKTAN_Tshirt", "TRYK_U_B_GRY_PCUs", "TRYK_U_B_PCUHsW2", "TRYK_U_B_PCUHs", "TRYK_shirts_OD_PAD_RED2", "TRYK_U_B_GRY_PCUs_R", "TRYK_B_USMC_R_ROLL", "TRYK_U_B_NATO_UCP_CombatUniform", "TRYK_hoodie_Blk", "TRYK_U_denim_jersey_blk", "TRYK_U_B_NATO_OCP_BLK_CombatUniform", "TRYK_U_B_ARO1_CBR_CombatUniform", "TRYK_U_B_GRYOCP_R_CombatUniformTshirt", "TRYK_U_B_PCUs_R", "TRYK_shirts_PAD_BLW", "TRYK_U_B_PCUHsW8", "TRYK_U_B_MARPAT_Wood", "TRYK_U_B_BLK_TAN_2", "TRYK_U_B_WDL_GRY_R_CombatUniform", "TRYK_U_B_NATO_UCP_R_CombatUniform", "TRYK_U_nohoodPcu_gry", "TRYK_U_B_ARO1_GR_CombatUniform", "U_IG_Guerilla1_1", "TRYK_U_B_BLKBLK_CombatUniform", "TRYK_DMARPAT_T", "TRYK_U_taki_G_WH", "TRYK_U_B_Wood_PCUs_R", "TRYK_shirts_DENIM_od_Sleeve", "TRYK_U_B_BLTAN_T", "TRYK_U_B_Sage_Tshirt", "TRYK_U_B_wood3c_CombatUniformTshirt", "TRYK_U_B_wh_blk_Rollup_CombatUniform", "TRYK_U_B_wood3c_CombatUniform", "TRYK_B_USMC_R", "TRYK_U_B_PCUGs_BLK", "TRYK_T_camo_3c", "TRYK_U_B_AOR2_OD_CombatUniform", "TRYK_U_B_NATO_OCP_CombatUniform", "TRYK_C_AOR2_T", "TRYK_U_B_3CD_BLK_BDUTshirt", "TRYK_U_B_3CD_Ranger_BDUTshirt", "TRYK_shirts_DENIM_BK", "TRYK_U_B_MARPAT_Desert", "TRYK_U_B_PCUHsW6", "TRYK_U_B_C02_Tsirt", "TRYK_U_B_BLK_T_WH", "TRYK_U_B_BLK_T_BG_BK", "TRYK_shirts_PAD_RED2", "TRYK_shirts_DENIM_BK_Sleeve", "TRYK_U_taki_BL", "TRYK_U_B_ODTAN_CombatUniform", "TRYK_U_B_fleece", "TRYK_U_B_ARO1_GR_R_CombatUniform", "TRYK_shirts_BLK_PAD_BL", "TRYK_U_B_ODTAN", "TRYK_U_B_MARPAT_WOOD_CombatUniform", "TRYK_U_pad_j", "U_IG_Guerilla3_2", "TRYK_U_B_ODTAN_Tshirt", "TRYK_T_T2_PAD", "TRYK_U_B_BLKBLK_R_CombatUniform", "TRYK_U_B_PCUGHs", "TRYK_U_B_NATO_OCPD_CombatUniform", "TRYK_U_B_MARPAT_Desert_Tshirt", "TRYK_U_B_WOOD_MARPAT_CombatUniformTshirt", "TRYK_OVERALL_SAGE_BLKboots", "TRYK_U_B_PCUHsW5", "TRYK_T_camo_wood_marpat", "TRYK_T_CSAT_PAD", "TRYK_shirts_TAN_PAD_BLW", "TRYK_U_B_UCP_PCUs", "TRYK_U_B_MTP_BLK_R_CombatUniform", "U_I_C_Soldier_Camo_F", "TRYK_U_B_OD_OD_R_CombatUniform", "TRYK_U_B_PCUGs", "TRYK_U_taki_wh", "TRYK_T_camo_3c_BG", "TRYK_T_camo_Wood", "TRYK_U_B_GRTAN_CombatUniform", "TRYK_U_B_BLK_OD_Rollup_CombatUniform", "TRYK_U_B_OD_BLK_2", "TRYK_shirts_BLK_PAD_BLW", "TRYK_OVERALL_SAGE", "TRYK_U_B_AOR2_Rollup_CombatUniform", "TRYK_U_B_Wood_PCUs", "TRYK_U_B_NATO_OCP_BLK_R_CombatUniform", "TRYK_U_B_BLK_OD", "TRYK_SUITS_BLK_F", "TRYK_U_pad_hood_Cl_blk", "TRYK_U_B_PCUs", "TRYK_U_denim_hood_3c", "TRYK_U_B_3CD_Ranger_BDU", "TRYK_shirts_DENIM_od", "TRYK_T_BLK_PAD", "TRYK_U_B_wh_OD_Rollup_CombatUniform", "TRYK_shirts_BLK_PAD_BLU3", "TRYK_U_B_BLK", "U_IG_Guerilla2_1", "TRYK_T_OD_PAD", "TRYK_U_B_Denim_T_WH", "TRYK_U_taki_G_BLK", "TRYK_U_taki_G_BL", "TRYK_shirts_DENIM_R", "TRYK_U_B_BLK_T_BG_WH", "TRYK_U_B_MTP_CombatUniform", "TRYK_U_hood_nc", "TRYK_U_B_Wood_T", "TRYK_shirts_TAN_PAD_YEL", "TRYK_U_pad_j_blk", "TRYK_ZARATAKI3", "TRYK_shirts_TAN_PAD", "TRYK_U_B_Denim_T_BG_WH", "TRYK_U_B_3c", "TRYK_U_B_MARPAT_Desert2", "TRYK_U_B_PCUGs_BLK_R", "TRYK_U_B_ARO1R_CombatUniform", "TRYK_shirts_PAD", "TRYK_T_TAN_PAD", "TRYK_U_B_BLK_OD_Tshirt", "TRYK_U_Bts_PCUGs", "TRYK_U_B_MTP_R_CombatUniform", "TRYK_U_B_3cr", "TRYK_shirts_OD_PAD_BK", "TRYK_T_PAD", "TRYK_U_B_ARO1_CombatUniform", "TRYK_OVERALL_SAGE_BLKboots_nk_blk"};

		/*
			Percental Item Spawn Chances of GuerillaBackpacks:

			B_FieldPack_blk                  = 1.67%
			B_FieldPack_ocamo                = 1.67%
			B_FieldPack_oucamo               = 1.67%
			B_FieldPack_cbr                  = 1.67%
			B_Bergen_sgg                     = 1.67%
			B_Bergen_mcamo                   = 1.67%
			B_Bergen_rgr                     = 1.67%
			B_Bergen_blk                     = 1.67%
			B_FieldPack_ghex_F               = 1.67%
			B_ViperHarness_base_F            = 1.67%
			B_ViperHarness_blk_F             = 1.67%
			B_ViperHarness_ghex_F            = 1.67%
			B_ViperHarness_hex_F             = 1.67%
			B_ViperHarness_khk_F             = 1.67%
			B_ViperHarness_oli_F             = 1.67%
			B_ViperLightHarness_base_F       = 1.67%
			B_ViperLightHarness_blk_F        = 1.67%
			B_ViperLightHarness_ghex_F       = 1.67%
			B_ViperLightHarness_hex_F        = 1.67%
			B_ViperLightHarness_khk_F        = 1.67%
			B_ViperLightHarness_oli_F        = 1.67%
			TRYK_B_AssaultPack_UCP           = 1.67%
			TRYK_B_AssaultPack_Type2camo     = 1.67%
			TRYK_B_AssaultPack_MARPAT_Desert = 1.67%
			TRYK_B_AssaultPack_MARPAT_Wood   = 1.67%
			TRYK_B_Kitbag_Base               = 1.67%
			TRYK_B_Kitbag_blk                = 1.67%
			TRYK_B_Kitbag_aaf                = 1.67%
			TRYK_B_Carryall_blk              = 1.67%
			TRYK_B_Carryall_wh               = 1.67%
			TRYK_B_Carryall_wood             = 1.67%
			TRYK_B_Carryall_JSDF             = 1.67%
			TRYK_B_Kitbag_Base_JSDF          = 1.67%
			TRYK_B_Coyotebackpack            = 1.67%
			TRYK_B_Coyotebackpack_OD         = 1.67%
			TRYK_B_Coyotebackpack_BLK        = 1.67%
			TRYK_B_Coyotebackpack_WH         = 1.67%
			TRYK_B_Alicepack                 = 1.67%
			TRYK_B_Medbag                    = 1.67%
			TRYK_B_Medbag_OD                 = 1.67%
			TRYK_B_Medbag_BK                 = 1.67%
			TRYK_B_Medbag_ucp                = 1.67%
			TRYK_B_Belt                      = 1.67%
			TRYK_B_Belt_BLK                  = 1.67%
			TRYK_B_Belt_CYT                  = 1.67%
			TRYK_B_Belt_tan                  = 1.67%
			TRYK_B_Belt_br                   = 1.67%
			TRYK_B_Belt_GR                   = 1.67%
			TRYK_B_Belt_AOR1                 = 1.67%
			TRYK_B_Belt_AOR2                 = 1.67%
			TRYK_B_BAF_BAG_BLK               = 1.67%
			TRYK_B_BAF_BAG_CYT               = 1.67%
			TRYK_B_BAF_BAG_OD                = 1.67%
			TRYK_B_BAF_BAG_rgr               = 1.67%
			TRYK_B_BAF_BAG_mcamo             = 1.67%
			TRYK_B_tube_cyt                  = 1.67%
			TRYK_B_tube_od                   = 1.67%
			TRYK_B_tube_blk                  = 1.67%
			TRYK_B_FieldPack_Wood            = 1.67%
			TRYK_Winter_pack                 = 1.67%
		*/
		GuerillaBackpacks[] = {"TRYK_B_Kitbag_Base_JSDF", "TRYK_B_AssaultPack_Type2camo", "B_ViperHarness_base_F", "TRYK_B_Carryall_blk", "TRYK_B_Belt_tan", "TRYK_B_Medbag_ucp", "TRYK_B_Medbag_BK", "TRYK_Winter_pack", "TRYK_B_Alicepack", "TRYK_B_Coyotebackpack_OD", "TRYK_B_Belt_AOR1", "TRYK_B_Kitbag_blk", "TRYK_B_Carryall_JSDF", "TRYK_B_Belt_br", "TRYK_B_Kitbag_Base", "TRYK_B_Medbag_OD", "TRYK_B_BAF_BAG_CYT", "TRYK_B_Kitbag_aaf", "TRYK_B_tube_cyt", "TRYK_B_Belt_BLK", "B_ViperLightHarness_ghex_F", "TRYK_B_Belt_CYT", "TRYK_B_AssaultPack_MARPAT_Desert", "TRYK_B_AssaultPack_MARPAT_Wood", "B_Bergen_rgr", "B_ViperLightHarness_hex_F", "TRYK_B_Coyotebackpack_BLK", "TRYK_B_BAF_BAG_BLK", "B_ViperHarness_khk_F", "TRYK_B_BAF_BAG_mcamo", "B_ViperLightHarness_base_F", "TRYK_B_AssaultPack_UCP", "TRYK_B_Coyotebackpack", "B_FieldPack_ocamo", "B_ViperHarness_oli_F", "TRYK_B_tube_od", "TRYK_B_Carryall_wh", "B_Bergen_mcamo", "TRYK_B_Coyotebackpack_WH", "B_Bergen_sgg", "B_FieldPack_oucamo", "TRYK_B_Belt_GR", "B_ViperHarness_hex_F", "B_ViperLightHarness_khk_F", "B_ViperHarness_blk_F", "TRYK_B_FieldPack_Wood", "TRYK_B_Medbag", "TRYK_B_Belt", "B_FieldPack_blk", "TRYK_B_BAF_BAG_rgr", "B_Bergen_blk", "B_ViperLightHarness_oli_F", "TRYK_B_Carryall_wood", "B_FieldPack_ghex_F", "B_ViperHarness_ghex_F", "B_FieldPack_cbr", "TRYK_B_BAF_BAG_OD", "TRYK_B_Belt_AOR2", "B_ViperLightHarness_blk_F", "TRYK_B_tube_blk"};

		/*
			Percental Item Spawn Chances of GuerillaVests:

			V_BandollierB_khk          = 2.08%
			V_BandollierB_cbr          = 2.08%
			V_BandollierB_rgr          = 2.08%
			V_BandollierB_blk          = 2.08%
			V_BandollierB_oli          = 2.08%
			V_Chestrig_khk             = 2.08%
			V_Chestrig_rgr             = 2.08%
			V_Chestrig_blk             = 2.08%
			V_Chestrig_oli             = 2.08%
			V_HarnessO_brn             = 2.08%
			V_HarnessOGL_brn           = 2.08%
			V_HarnessO_gry             = 2.08%
			V_HarnessOGL_gry           = 2.08%
			V_HarnessOSpec_brn         = 2.08%
			V_HarnessOSpec_gry         = 2.08%
			V_I_G_resistanceLeader_F   = 2.08%
			TRYK_V_PlateCarrier_JSDF   = 2.08%
			TRYK_V_ArmorVest_AOR1      = 2.08%
			TRYK_V_ArmorVest_AOR2      = 2.08%
			TRYK_V_ArmorVest_coyo      = 2.08%
			TRYK_V_ArmorVest_Brown     = 2.08%
			TRYK_V_ArmorVest_CBR       = 2.08%
			TRYK_V_ArmorVest_khk       = 2.08%
			TRYK_V_ArmorVest_green     = 2.08%
			TRYK_V_ArmorVest_tan       = 2.08%
			TRYK_V_ArmorVest_Delta     = 2.08%
			TRYK_V_ArmorVest_Ranger    = 2.08%
			TRYK_V_ArmorVest_AOR1_2    = 2.08%
			TRYK_V_ArmorVest_AOR2_2    = 2.08%
			TRYK_V_ArmorVest_coyo2     = 2.08%
			TRYK_V_ArmorVest_Brown2    = 2.08%
			TRYK_V_ArmorVest_cbr2      = 2.08%
			TRYK_V_ArmorVest_khk2      = 2.08%
			TRYK_V_ArmorVest_green2    = 2.08%
			TRYK_V_ArmorVest_tan2      = 2.08%
			TRYK_V_ArmorVest_Delta2    = 2.08%
			TRYK_V_ArmorVest_Ranger2   = 2.08%
			TRYK_V_harnes_blk_L        = 2.08%
			TRYK_V_harnes_od_L         = 2.08%
			TRYK_V_harnes_TAN_L        = 2.08%
			TRYK_V_PlateCarrier_blk_L  = 2.08%
			TRYK_V_PlateCarrier_wood_L = 2.08%
			TRYK_V_PlateCarrier_ACU_L  = 2.08%
			TRYK_V_PlateCarrier_coyo_L = 2.08%
			TRYK_V_Bulletproof         = 2.08%
			TRYK_V_Bulletproof_BLK     = 2.08%
			TRYK_V_Bulletproof_BL      = 2.08%
			TRYK_V_IOTV_BLK            = 2.08%
		*/
		GuerillaVests[] = {"V_Chestrig_blk", "V_HarnessO_brn", "V_BandollierB_khk", "V_BandollierB_cbr", "TRYK_V_IOTV_BLK", "TRYK_V_ArmorVest_green", "V_HarnessOSpec_brn", "TRYK_V_harnes_blk_L", "TRYK_V_ArmorVest_Delta", "TRYK_V_Bulletproof_BLK", "TRYK_V_ArmorVest_Brown", "TRYK_V_ArmorVest_coyo", "V_Chestrig_oli", "V_HarnessO_gry", "TRYK_V_ArmorVest_tan", "TRYK_V_ArmorVest_khk", "V_BandollierB_rgr", "TRYK_V_harnes_TAN_L", "V_HarnessOGL_brn", "TRYK_V_ArmorVest_AOR2", "TRYK_V_Bulletproof", "TRYK_V_ArmorVest_AOR1_2", "TRYK_V_PlateCarrier_ACU_L", "TRYK_V_ArmorVest_tan2", "TRYK_V_ArmorVest_Ranger", "TRYK_V_ArmorVest_Ranger2", "TRYK_V_PlateCarrier_JSDF", "TRYK_V_ArmorVest_AOR1", "V_HarnessOSpec_gry", "TRYK_V_ArmorVest_CBR", "TRYK_V_ArmorVest_green2", "TRYK_V_PlateCarrier_wood_L", "TRYK_V_PlateCarrier_coyo_L", "V_I_G_resistanceLeader_F", "TRYK_V_ArmorVest_AOR2_2", "TRYK_V_Bulletproof_BL", "TRYK_V_ArmorVest_Delta2", "V_BandollierB_oli", "V_BandollierB_blk", "V_HarnessOGL_gry", "TRYK_V_ArmorVest_Brown2", "TRYK_V_ArmorVest_coyo2", "TRYK_V_ArmorVest_khk2", "TRYK_V_harnes_od_L", "TRYK_V_PlateCarrier_blk_L", "V_Chestrig_khk", "V_Chestrig_rgr", "TRYK_V_ArmorVest_cbr2"};

		/*
			Percental Item Spawn Chances of GuerillaHeadgear:

			Exile_Headgear_GasMask         = 0.63%
			H_Booniehat_khk                = 0.63%
			H_Booniehat_indp               = 0.63%
			H_Booniehat_mcamo              = 0.63%
			H_Booniehat_grn                = 0.63%
			H_Booniehat_tan                = 0.63%
			H_Booniehat_dirty              = 0.63%
			H_Booniehat_dgtl               = 0.63%
			H_Booniehat_khk_hs             = 0.63%
			H_Bandanna_khk                 = 0.63%
			H_Bandanna_khk_hs              = 0.63%
			H_Bandanna_cbr                 = 0.63%
			H_Bandanna_sgg                 = 0.63%
			H_Bandanna_gry                 = 0.63%
			H_Bandanna_camo                = 0.63%
			H_Bandanna_mcamo               = 0.63%
			H_BandMask_blk                 = 0.63%
			H_Beret_blk                    = 0.63%
			H_Beret_red                    = 0.63%
			H_Beret_grn                    = 0.63%
			H_Beret_grn_SF                 = 0.63%
			H_Beret_brn_SF                 = 0.63%
			H_Beret_ocamo                  = 0.63%
			H_Beret_02                     = 0.63%
			H_Beret_Colonel                = 0.63%
			H_Hat_camo                     = 0.63%
			H_Cap_brn_SPECOPS              = 0.63%
			H_Cap_tan_specops_US           = 0.63%
			H_Cap_khaki_specops_UK         = 0.63%
			H_Watchcap_blk                 = 0.63%
			H_Watchcap_khk                 = 0.63%
			H_Watchcap_camo                = 0.63%
			H_Watchcap_sgg                 = 0.63%
			H_TurbanO_blk                  = 0.63%
			H_Shemag_khk                   = 0.63%
			H_Shemag_tan                   = 0.63%
			H_Shemag_olive                 = 0.63%
			H_Shemag_olive_hs              = 0.63%
			H_ShemagOpen_khk               = 0.63%
			H_ShemagOpen_tan               = 0.63%
			H_MilCap_tna_F                 = 0.63%
			H_MilCap_ghex_F                = 0.63%
			H_Booniehat_tna_F              = 0.63%
			H_MilCap_gen_F                 = 0.63%
			H_Cap_oli_Syndikat_F           = 0.63%
			H_Cap_tan_Syndikat_F           = 0.63%
			H_Cap_blk_Syndikat_F           = 0.63%
			H_Cap_grn_Syndikat_F           = 0.63%
			H_FakeHeadgear_Syndikat_F      = 0.63%
			TRYK_ESS_CAP                   = 0.63%
			TRYK_ESS_CAP_OD                = 0.63%
			TRYK_ESS_CAP_tan               = 0.63%
			TRYK_R_CAP_BLK                 = 0.63%
			TRYK_R_CAP_TAN                 = 0.63%
			TRYK_R_CAP_OD_US               = 0.63%
			TRYK_r_cap_tan_Glasses         = 0.63%
			TRYK_r_cap_blk_Glasses         = 0.63%
			TRYK_r_cap_od_Glasses          = 0.63%
			TRYK_H_headsetcap_Glasses      = 0.63%
			TRYK_H_headsetcap_blk_Glasses  = 0.63%
			TRYK_H_headsetcap_od_Glasses   = 0.63%
			TRYK_H_Helmet_Winter           = 0.63%
			TRYK_H_Helmet_Winter_2         = 0.63%
			TRYK_US_ESS_Glasses_H          = 0.63%
			TRYK_US_ESS_Glasses_NV         = 0.63%
			TRYK_US_ESS_Glasses_TAN_NV     = 0.63%
			TRYK_Headphone_NV              = 0.63%
			TRYK_HRPIGEAR_NV               = 0.63%
			TRYK_US_ESS_Glasses_Cover      = 0.63%
			TRYK_balaclava_BLACK_NV        = 0.63%
			TRYK_balaclava_NV              = 0.63%
			TRYK_balaclava_BLACK_EAR_NV    = 0.63%
			TRYK_balaclava_EAR_NV          = 0.63%
			TRYK_Shemagh_TAN_NV            = 0.63%
			TRYK_Shemagh_MESH_NV           = 0.63%
			TRYK_Shemagh_G_NV              = 0.63%
			TRYK_Shemagh_WH_NV             = 0.63%
			TRYK_Shemagh_EAR_NV            = 0.63%
			TRYK_Shemagh_EAR_G_NV          = 0.63%
			TRYK_Shemagh_EAR_WH_NV         = 0.63%
			TRYK_ShemaghESSTAN_NV          = 0.63%
			TRYK_ShemaghESSOD_NV           = 0.63%
			TRYK_ShemaghESSWH_NV           = 0.63%
			TRYK_ESS_BLKTAN_NV             = 0.63%
			TRYK_ESS_BLKBLK_NV             = 0.63%
			TRYK_Shemagh_shade_MESH        = 0.63%
			TRYK_Shemagh_shade_N           = 0.63%
			TRYK_Shemagh_shade_G_N         = 0.63%
			TRYK_Shemagh_shade_WH_N        = 0.63%
			TRYK_Headset_NV                = 0.63%
			TRYK_TAC_EARMUFF_SHADE         = 0.63%
			TRYK_TAC_EARMUFF               = 0.63%
			TRYK_NOMIC_TAC_EARMUFF         = 0.63%
			TRYK_TAC_boonie_SET_NV         = 0.63%
			TRYK_TAC_SET_NV_TAN            = 0.63%
			TRYK_TAC_SET_NV_OD             = 0.63%
			TRYK_TAC_SET_NV_WH             = 0.63%
			TRYK_TAC_SET_NV_MESH           = 0.63%
			TRYK_TAC_SET_NV_TAN_2          = 0.63%
			TRYK_TAC_SET_NV_OD_2           = 0.63%
			TRYK_TAC_SET_NV_WH_2           = 0.63%
			TRYK_TAC_SET_NV_MESH_2         = 0.63%
			TRYK_headset2                  = 0.63%
			TRYK_G_Shades_Black_NV         = 0.63%
			TRYK_G_Shades_Blue_NV          = 0.63%
			TRYK_G_bala_ess_NV             = 0.63%
			TRYK_bandana_NV                = 0.63%
			TRYK_SPgearG_NV                = 0.63%
			TRYK_SPgear_PHC1_NV            = 0.63%
			TRYK_SPgear_PHC2_NV            = 0.63%
			TRYK_G_bala_wh_NV              = 0.63%
			TRYK_ESS_wh_NV                 = 0.63%
			TRYK_Kio_Balaclava             = 0.63%
			TRYK_H_Helmet_JSDF             = 0.63%
			TRYK_H_Helmet_CC               = 0.63%
			TRYK_H_Helmet_WOOD             = 0.63%
			TRYK_H_Helmet_ACU              = 0.63%
			TRYK_H_Helmet_MARPAT_Wood      = 0.63%
			TRYK_H_Helmet_MARPAT_Desert    = 0.63%
			TRYK_H_Helmet_MARPAT_Desert2   = 0.63%
			TRYK_H_Helmet_3C               = 0.63%
			TRYK_H_Booniehat_JSDF          = 0.63%
			TRYK_H_Booniehat_3CD           = 0.63%
			TRYK_H_Booniehat_CC            = 0.63%
			TRYK_H_Booniehat_WOOD          = 0.63%
			TRYK_H_Booniehat_MARPAT_WOOD   = 0.63%
			TRYK_H_Booniehat_MARPAT_Desert = 0.63%
			TRYK_H_Booniehat_AOR1          = 0.63%
			TRYK_H_Booniehat_AOR2          = 0.63%
			TRYK_H_PASGT_BLK               = 0.63%
			TRYK_H_PASGT_OD                = 0.63%
			TRYK_H_PASGT_COYO              = 0.63%
			TRYK_H_PASGT_TAN               = 0.63%
			TRYK_H_Helmet_Snow             = 0.63%
			TRYK_H_WH                      = 0.63%
			TRYK_H_GR                      = 0.63%
			TRYK_H_AOR1                    = 0.63%
			TRYK_H_AOR2                    = 0.63%
			TRYK_H_DELTAHELM_NV            = 0.63%
			TRYK_H_EARMUFF                 = 0.63%
			TRYK_H_TACEARMUFF_H            = 0.63%
			TRYK_H_Bandana_H               = 0.63%
			TRYK_H_Bandana_wig             = 0.63%
			TRYK_H_Bandana_wig_g           = 0.63%
			TRYK_H_wig                     = 0.63%
			TRYK_H_headset2                = 0.63%
			TRYK_H_woolhat                 = 0.63%
			TRYK_H_woolhat_CW              = 0.63%
			TRYK_H_woolhat_WH              = 0.63%
			TRYK_H_woolhat_br              = 0.63%
			TRYK_H_woolhat_cu              = 0.63%
			TRYK_H_woolhat_tan             = 0.63%
			TRYK_H_headsetcap              = 0.63%
			TRYK_H_headsetcap_blk          = 0.63%
			TRYK_H_headsetcap_od           = 0.63%
			TRYK_H_pakol                   = 0.63%
			TRYK_H_pakol2                  = 0.63%
			TRYK_H_LHS_HEL_G               = 0.63%
		*/
		GuerillaHeadgear[] = {"TRYK_TAC_SET_NV_MESH_2", "TRYK_r_cap_tan_Glasses", "TRYK_H_headsetcap_blk", "TRYK_G_bala_wh_NV", "TRYK_Shemagh_MESH_NV", "TRYK_SPgear_PHC2_NV", "TRYK_H_Helmet_WOOD", "H_Hat_camo", "H_Beret_blk", "H_Cap_khaki_specops_UK", "TRYK_US_ESS_Glasses_H", "TRYK_H_Booniehat_AOR1", "H_Booniehat_dirty", "H_Shemag_khk", "H_Bandanna_sgg", "TRYK_H_Helmet_JSDF", "TRYK_H_pakol", "TRYK_headset2", "TRYK_balaclava_EAR_NV", "H_Cap_grn_Syndikat_F", "H_ShemagOpen_khk", "TRYK_G_bala_ess_NV", "H_Cap_tan_Syndikat_F", "TRYK_ESS_BLKTAN_NV", "H_Watchcap_sgg", "TRYK_H_Helmet_CC", "TRYK_R_CAP_OD_US", "TRYK_Shemagh_TAN_NV", "TRYK_ESS_CAP_tan", "TRYK_US_ESS_Glasses_TAN_NV", "TRYK_H_Helmet_MARPAT_Desert2", "TRYK_r_cap_od_Glasses", "TRYK_TAC_boonie_SET_NV", "H_Bandanna_mcamo", "H_Cap_tan_specops_US", "TRYK_TAC_SET_NV_OD_2", "TRYK_H_pakol2", "TRYK_HRPIGEAR_NV", "H_Booniehat_grn", "TRYK_G_Shades_Black_NV", "TRYK_H_WH", "TRYK_H_woolhat_CW", "TRYK_H_woolhat", "TRYK_H_TACEARMUFF_H", "TRYK_US_ESS_Glasses_NV", "H_Booniehat_mcamo", "H_Beret_02", "H_Watchcap_khk", "H_Cap_oli_Syndikat_F", "H_Bandanna_khk_hs", "TRYK_r_cap_blk_Glasses", "TRYK_H_Helmet_Winter_2", "TRYK_H_headsetcap", "TRYK_TAC_SET_NV_WH", "TRYK_H_PASGT_COYO", "TRYK_Shemagh_shade_WH_N", "H_Booniehat_khk", "TRYK_Shemagh_EAR_NV", "TRYK_H_Booniehat_AOR2", "TRYK_Shemagh_G_NV", "TRYK_TAC_SET_NV_TAN_2", "TRYK_Shemagh_shade_MESH", "H_Booniehat_indp", "TRYK_H_Helmet_ACU", "H_MilCap_tna_F", "TRYK_H_PASGT_OD", "TRYK_H_Booniehat_MARPAT_Desert", "TRYK_Kio_Balaclava", "H_Bandanna_cbr", "TRYK_R_CAP_BLK", "TRYK_H_Booniehat_JSDF", "TRYK_H_woolhat_br", "H_Beret_red", "TRYK_TAC_SET_NV_TAN", "H_Shemag_tan", "TRYK_H_Helmet_MARPAT_Wood", "H_Cap_brn_SPECOPS", "H_Bandanna_gry", "H_FakeHeadgear_Syndikat_F", "TRYK_ESS_wh_NV", "TRYK_H_Bandana_H", "TRYK_Headset_NV", "H_Beret_Colonel", "H_Bandanna_khk", "H_Beret_ocamo", "H_Beret_brn_SF", "H_Watchcap_blk", "H_Bandanna_camo", "H_MilCap_ghex_F", "TRYK_Shemagh_shade_G_N", "TRYK_SPgear_PHC1_NV", "TRYK_balaclava_NV", "H_Booniehat_khk_hs", "TRYK_TAC_SET_NV_OD", "TRYK_H_Booniehat_WOOD", "TRYK_TAC_SET_NV_WH_2", "TRYK_H_headsetcap_blk_Glasses", "TRYK_H_GR", "TRYK_R_CAP_TAN", "TRYK_H_Helmet_3C", "TRYK_TAC_SET_NV_MESH", "TRYK_ESS_CAP", "TRYK_H_woolhat_tan", "H_Beret_grn_SF", "H_TurbanO_blk", "TRYK_H_wig", "H_Watchcap_camo", "TRYK_Shemagh_EAR_WH_NV", "TRYK_H_woolhat_cu", "TRYK_H_LHS_HEL_G", "TRYK_Shemagh_EAR_G_NV", "TRYK_TAC_EARMUFF_SHADE", "Exile_Headgear_GasMask", "H_MilCap_gen_F", "TRYK_TAC_EARMUFF", "TRYK_NOMIC_TAC_EARMUFF", "TRYK_H_AOR1", "TRYK_Shemagh_WH_NV", "TRYK_Shemagh_shade_N", "TRYK_H_headsetcap_od", "TRYK_ESS_CAP_OD", "TRYK_ShemaghESSOD_NV", "TRYK_H_headsetcap_od_Glasses", "TRYK_H_Booniehat_3CD", "TRYK_H_Bandana_wig", "TRYK_Headphone_NV", "H_Cap_blk_Syndikat_F", "TRYK_balaclava_BLACK_NV", "TRYK_H_PASGT_TAN", "H_BandMask_blk", "TRYK_H_Booniehat_CC", "H_Booniehat_dgtl", "TRYK_H_PASGT_BLK", "TRYK_ShemaghESSWH_NV", "H_Shemag_olive", "TRYK_G_Shades_Blue_NV", "TRYK_H_woolhat_WH", "TRYK_H_AOR2", "TRYK_H_headset2", "TRYK_H_Bandana_wig_g", "TRYK_H_headsetcap_Glasses", "TRYK_SPgearG_NV", "TRYK_H_Helmet_MARPAT_Desert", "TRYK_H_DELTAHELM_NV", "TRYK_H_EARMUFF", "TRYK_bandana_NV", "H_Booniehat_tna_F", "TRYK_US_ESS_Glasses_Cover", "TRYK_H_Helmet_Snow", "H_Booniehat_tan", "TRYK_balaclava_BLACK_EAR_NV", "TRYK_ESS_BLKBLK_NV", "TRYK_H_Helmet_Winter", "TRYK_ShemaghESSTAN_NV", "H_Beret_grn", "H_Shemag_olive_hs", "H_ShemagOpen_tan", "TRYK_H_Booniehat_MARPAT_WOOD"};

		/*
			Percental Item Spawn Chances of MilitaryClothing:

			U_B_CTRG_1                      = 1.32%
			U_B_CTRG_2                      = 1.32%
			U_B_CTRG_3                      = 1.32%
			U_B_CombatUniform_mcam          = 1.32%
			U_B_CombatUniform_mcam_tshirt   = 1.32%
			U_B_CombatUniform_mcam_vest     = 1.32%
			U_B_CombatUniform_mcam_worn     = 1.32%
			U_B_SpecopsUniform_sgg          = 1.32%
			U_O_OfficerUniform_ocamo        = 1.32%
			U_I_OfficerUniform              = 1.32%
			U_I_CombatUniform               = 1.32%
			U_I_CombatUniform_tshirt        = 1.32%
			U_I_CombatUniform_shortsleeve   = 1.32%
			U_B_HeliPilotCoveralls          = 1.32%
			U_O_PilotCoveralls              = 1.32%
			U_B_PilotCoveralls              = 1.32%
			U_I_pilotCoveralls              = 1.32%
			U_I_HeliPilotCoveralls          = 1.32%
			U_B_Wetsuit                     = 1.32%
			U_O_Wetsuit                     = 1.32%
			U_I_Wetsuit                     = 1.32%
			U_O_CombatUniform_ocamo         = 1.32%
			U_O_CombatUniform_oucamo        = 1.32%
			U_O_SpecopsUniform_ocamo        = 1.32%
			U_O_SpecopsUniform_blk          = 1.32%
			U_O_V_Soldier_Viper_F           = 1.32%
			U_O_V_Soldier_Viper_hex_F       = 1.32%
			U_B_T_Soldier_AR_F              = 1.32%
			U_B_T_Soldier_SL_F              = 1.32%
			U_B_CTRG_Soldier_F              = 1.32%
			U_B_CTRG_Soldier_2_F            = 1.32%
			U_B_CTRG_Soldier_3_F            = 1.32%
			U_B_CTRG_Soldier_urb_1_F        = 1.32%
			U_B_CTRG_Soldier_urb_2_F        = 1.32%
			U_B_CTRG_Soldier_urb_3_F        = 1.32%
			U_B_GEN_Soldier_F               = 1.32%
			U_B_GEN_Commander_F             = 1.32%
			U_O_T_Soldier_F                 = 1.32%
			U_O_T_Officer_F                 = 1.32%
			rhs_uniform_cu_ocp              = 1.32%
			rhs_uniform_cu_ucp              = 1.32%
			rhs_uniform_cu_ocp_101st        = 1.32%
			rhs_uniform_df15                = 1.32%
			rhs_uniform_emr_patchless       = 1.32%
			rhs_uniform_flora_patchless     = 1.32%
			rhs_uniform_flora_patchless_alt = 1.32%
			rhs_uniform_m88_patchless       = 1.32%
			rhs_uniform_mflora_patchless    = 1.32%
			rhs_uniform_vdv_mflora          = 1.32%
			rhs_uniform_FROG01_m81          = 1.32%
			rhs_uniform_FROG01_d            = 1.32%
			rhs_uniform_FROG01_wd           = 1.32%
			rhs_uniform_vdv_emr_des         = 1.32%
			rhs_uniform_msv_emr             = 1.32%
			rhs_uniform_flora               = 1.32%
			rhs_uniform_vdv_flora           = 1.32%
			rhs_uniform_gorka_r_g           = 1.32%
			rhs_uniform_gorka_r_y           = 1.32%
			rhs_chdkz_uniform_5             = 1.32%
			rhs_chdkz_uniform_4             = 1.32%
			rhs_chdkz_uniform_3             = 1.32%
			rhs_chdkz_uniform_2             = 1.32%
			rhs_chdkz_uniform_1             = 1.32%
			rhs_uniform_mvd_izlom           = 1.32%
			rhs_uniform_cu_ocp_10th         = 1.32%
			rhs_uniform_cu_ocp_1stcav       = 1.32%
			rhs_uniform_cu_ocp_82nd         = 1.32%
			rhs_uniform_cu_ucp_101st        = 1.32%
			rhs_uniform_cu_ucp_10th         = 1.32%
			rhs_uniform_cu_ucp_1stcav       = 1.32%
			rhs_uniform_cu_ucp_82nd         = 1.32%
			rhs_uniform_g3_m81              = 1.32%
			rhs_uniform_g3_blk              = 1.32%
			rhs_uniform_g3_mc               = 1.32%
			rhs_uniform_g3_rgr              = 1.32%
			rhs_uniform_g3_tan              = 1.32%
		*/
		MilitaryClothing[] = {"U_B_CTRG_Soldier_urb_3_F", "U_O_V_Soldier_Viper_hex_F", "U_B_HeliPilotCoveralls", "rhs_uniform_g3_tan", "rhs_uniform_g3_mc", "U_B_SpecopsUniform_sgg", "U_B_Wetsuit", "rhs_uniform_g3_rgr", "U_I_pilotCoveralls", "rhs_uniform_cu_ucp_1stcav", "U_B_CTRG_2", "rhs_uniform_flora_patchless_alt", "U_B_CombatUniform_mcam_vest", "rhs_uniform_cu_ucp_101st", "U_I_CombatUniform_shortsleeve", "U_O_CombatUniform_ocamo", "rhs_uniform_cu_ocp_101st", "rhs_uniform_FROG01_m81", "U_O_V_Soldier_Viper_F", "U_B_T_Soldier_AR_F", "rhs_uniform_flora", "U_B_GEN_Soldier_F", "rhs_chdkz_uniform_2", "rhs_uniform_cu_ucp_10th", "rhs_chdkz_uniform_3", "rhs_uniform_cu_ucp", "rhs_uniform_cu_ocp", "rhs_chdkz_uniform_5", "rhs_uniform_g3_blk", "U_O_T_Officer_F", "rhs_uniform_vdv_emr_des", "U_B_CombatUniform_mcam_tshirt", "U_I_HeliPilotCoveralls", "rhs_uniform_df15", "rhs_uniform_gorka_r_y", "U_B_GEN_Commander_F", "U_B_CTRG_Soldier_urb_1_F", "rhs_uniform_m88_patchless", "U_B_CTRG_1", "U_O_T_Soldier_F", "rhs_uniform_mflora_patchless", "U_B_T_Soldier_SL_F", "U_B_CombatUniform_mcam_worn", "rhs_uniform_cu_ocp_1stcav", "rhs_uniform_vdv_mflora", "U_I_OfficerUniform", "rhs_uniform_emr_patchless", "U_O_CombatUniform_oucamo", "U_B_PilotCoveralls", "rhs_chdkz_uniform_1", "U_O_Wetsuit", "U_I_Wetsuit", "rhs_uniform_flora_patchless", "rhs_uniform_FROG01_wd", "rhs_uniform_mvd_izlom", "U_I_CombatUniform", "rhs_chdkz_uniform_4", "rhs_uniform_gorka_r_g", "rhs_uniform_msv_emr", "U_B_CTRG_Soldier_3_F", "rhs_uniform_vdv_flora", "U_B_CombatUniform_mcam", "U_O_SpecopsUniform_blk", "U_O_PilotCoveralls", "U_B_CTRG_Soldier_urb_2_F", "U_B_CTRG_Soldier_2_F", "rhs_uniform_cu_ocp_10th", "U_O_SpecopsUniform_ocamo", "rhs_uniform_cu_ocp_82nd", "U_O_OfficerUniform_ocamo", "U_I_CombatUniform_tshirt", "U_B_CTRG_Soldier_F", "rhs_uniform_g3_m81", "U_B_CTRG_3", "rhs_uniform_FROG01_d", "rhs_uniform_cu_ucp_82nd"};

		/*
			Percental Item Spawn Chances of MilitaryBackpacks:

			B_Carryall_ocamo                 = 5.00%
			B_Carryall_oucamo                = 5.00%
			B_Carryall_mcamo                 = 5.00%
			B_Carryall_oli                   = 5.00%
			B_Carryall_khk                   = 5.00%
			B_Carryall_cbr                   = 5.00%
			B_Carryall_ghex_F                = 5.00%
			B_Bergen_Base_F                  = 5.00%
			B_Bergen_mcamo_F                 = 5.00%
			rhsusf_assault_eagleaiii_coy     = 5.00%
			rhsusf_assault_eagleaiii_ocp     = 5.00%
			rhsusf_assault_eagleaiii_ucp     = 5.00%
			rhsusf_falconii_coy              = 5.00%
			rhsusf_falconii_mc               = 5.00%
			rhsusf_falconii                  = 5.00%
			rhs_assault_umbts                = 5.00%
			rhs_assault_umbts_engineer_empty = 5.00%
			rhs_medic_bag                    = 5.00%
			rhs_sidor                        = 5.00%
			rhs_rpg_empty                    = 5.00%
		*/
		MilitaryBackpacks[] = {"rhs_assault_umbts", "rhsusf_falconii_mc", "rhs_sidor", "B_Carryall_oli", "rhsusf_assault_eagleaiii_coy", "B_Bergen_mcamo_F", "B_Carryall_mcamo", "B_Carryall_khk", "rhs_assault_umbts_engineer_empty", "rhsusf_falconii_coy", "B_Carryall_ocamo", "rhsusf_assault_eagleaiii_ocp", "rhs_medic_bag", "B_Carryall_ghex_F", "rhs_rpg_empty", "rhsusf_falconii", "rhsusf_assault_eagleaiii_ucp", "B_Bergen_Base_F", "B_Carryall_oucamo", "B_Carryall_cbr"};

		/*
			Percental Item Spawn Chances of MilitaryVests:

			V_PlateCarrier1_blk                 = 0.59%
			V_PlateCarrier1_rgr                 = 0.59%
			V_PlateCarrier2_rgr                 = 0.59%
			V_PlateCarrier3_rgr                 = 0.59%
			V_PlateCarrierGL_rgr                = 0.59%
			V_PlateCarrierIA1_dgtl              = 0.59%
			V_PlateCarrierIA2_dgtl              = 0.59%
			V_PlateCarrierIAGL_dgtl             = 0.59%
			V_PlateCarrierSpec_rgr              = 0.59%
			V_PlateCarrierL_CTRG                = 0.59%
			V_PlateCarrierH_CTRG                = 0.59%
			rhs_6sh92                           = 0.59%
			rhs_6sh92_radio                     = 0.59%
			rhs_6sh92_vog                       = 0.59%
			rhs_6sh92_vog_headset               = 0.59%
			rhs_6sh92_headset                   = 0.59%
			rhs_6sh92_digi                      = 0.59%
			rhs_6sh92_digi_radio                = 0.59%
			rhs_6sh92_digi_vog                  = 0.59%
			rhs_6sh92_digi_vog_headset          = 0.59%
			rhs_6sh92_digi_headset              = 0.59%
			rhs_6b23                            = 0.59%
			rhs_6b23_crew                       = 0.59%
			rhs_6b23_crewofficer                = 0.59%
			rhs_6b23_engineer                   = 0.59%
			rhs_6b23_medic                      = 0.59%
			rhs_6b23_rifleman                   = 0.59%
			rhs_6b23_sniper                     = 0.59%
			rhs_6b23_6sh92                      = 0.59%
			rhs_6b23_6sh92_radio                = 0.59%
			rhs_6b23_6sh92_vog                  = 0.59%
			rhs_6b23_6sh92_vog_headset          = 0.59%
			rhs_6b23_6sh92_headset              = 0.59%
			rhs_6b23_6sh92_headset_mapcase      = 0.59%
			rhs_6b23_digi                       = 0.59%
			rhs_6b23_digi_crew                  = 0.59%
			rhs_6b23_digi_crewofficer           = 0.59%
			rhs_6b23_digi_engineer              = 0.59%
			rhs_6b23_digi_medic                 = 0.59%
			rhs_6b23_digi_rifleman              = 0.59%
			rhs_6b23_digi_sniper                = 0.59%
			rhs_6b23_digi_6sh92                 = 0.59%
			rhs_6b23_digi_6sh92_radio           = 0.59%
			rhs_6b23_digi_6sh92_vog             = 0.59%
			rhs_6b23_digi_6sh92_vog_headset     = 0.59%
			rhs_6b23_digi_6sh92_headset         = 0.59%
			rhs_6b23_digi_6sh92_headset_mapcase = 0.59%
			rhs_6b23_ML                         = 0.59%
			rhs_6b23_ML_crew                    = 0.59%
			rhs_6b23_ML_crewofficer             = 0.59%
			rhs_6b23_ML_engineer                = 0.59%
			rhs_6b23_ML_medic                   = 0.59%
			rhs_6b23_ML_rifleman                = 0.59%
			rhs_6b23_ML_sniper                  = 0.59%
			rhs_6b23_ML_6sh92                   = 0.59%
			rhs_6b23_ML_6sh92_radio             = 0.59%
			rhs_6b23_ML_6sh92_vog               = 0.59%
			rhs_6b23_ML_6sh92_vog_headset       = 0.59%
			rhs_6b23_ML_6sh92_headset           = 0.59%
			rhs_6b23_ML_6sh92_headset_mapcase   = 0.59%
			rhs_6b43                            = 0.59%
			rhs_6sh46                           = 0.59%
			rhs_vest_commander                  = 0.59%
			rhs_vydra_3m                        = 0.59%
			rhsusf_iotv_ucp                     = 0.59%
			rhsusf_iotv_ucp_grenadier           = 0.59%
			rhsusf_iotv_ucp_medic               = 0.59%
			rhsusf_iotv_ucp_repair              = 0.59%
			rhsusf_iotv_ucp_rifleman            = 0.59%
			rhsusf_iotv_ucp_SAW                 = 0.59%
			rhsusf_iotv_ucp_squadleader         = 0.59%
			rhsusf_iotv_ucp_teamleader          = 0.59%
			rhsusf_iotv_ocp                     = 0.59%
			rhsusf_iotv_ocp_grenadier           = 0.59%
			rhsusf_iotv_ocp_medic               = 0.59%
			rhsusf_iotv_ocp_repair              = 0.59%
			rhsusf_iotv_ocp_rifleman            = 0.59%
			rhsusf_iotv_ocp_SAW                 = 0.59%
			rhsusf_iotv_ocp_squadleader         = 0.59%
			rhsusf_iotv_ocp_teamleader          = 0.59%
			rhsusf_spc                          = 0.59%
			rhsusf_spc_corpsman                 = 0.59%
			rhsusf_spc_patchless                = 0.59%
			rhsusf_spc_squadleader              = 0.59%
			rhsusf_spc_teamleader               = 0.59%
			rhsusf_spc_light                    = 0.59%
			rhsusf_spc_rifleman                 = 0.59%
			rhsusf_spc_iar                      = 0.59%
			rhsusf_spcs_ocp_rifleman            = 0.59%
			rhsusf_spcs_ocp                     = 0.59%
			rhsusf_spcs_ucp_rifleman            = 0.59%
			rhsusf_spcs_ucp                     = 0.59%
			FGN_RU_6B513_Khaki                  = 0.59%
			FGN_RU_6B513_Khaki_Medic            = 0.59%
			FGN_RU_6B513_Khaki_Officer          = 0.59%
			FGN_RU_6B513_Khaki_Sniper           = 0.59%
			FGN_RU_6B513                        = 0.59%
			FGN_RU_6B513_Medic                  = 0.59%
			FGN_RU_6B513_Officer                = 0.59%
			FGN_RU_6B513_Sniper                 = 0.59%
			FGN_RU_6B513_TTsKO                  = 0.59%
			FGN_RU_6B513_TTsKO_Medic            = 0.59%
			FGN_RU_6B513_TTsKO_Officer          = 0.59%
			FGN_RU_6B513_TTsKO_Sniper           = 0.59%
			FGN_RU_6B513_VSR                    = 0.59%
			FGN_RU_6B513_VSR_Medic              = 0.59%
			FGN_RU_6B513_VSR_Officer            = 0.59%
			FGN_RU_6B513_VSR_Sniper             = 0.59%
			FGN_RU_6B519_Khaki                  = 0.59%
			FGN_RU_6B519_Khaki_Medic            = 0.59%
			FGN_RU_6B519_Khaki_Officer          = 0.59%
			FGN_RU_6B519_Khaki_Sniper           = 0.59%
			FGN_RU_6B519                        = 0.59%
			FGN_RU_6B519_Medic                  = 0.59%
			FGN_RU_6B519_Officer                = 0.59%
			FGN_RU_6B519_Sniper                 = 0.59%
			FGN_RU_6B519_TTsKO                  = 0.59%
			FGN_RU_6B519_TTsKO_Medic            = 0.59%
			FGN_RU_6B519_TTsKO_Officer          = 0.59%
			FGN_RU_6B519_TTsKO_Sniper           = 0.59%
			FGN_RU_6B519_VSR                    = 0.59%
			FGN_RU_6B519_VSR_Medic              = 0.59%
			FGN_RU_6B519_VSR_Officer            = 0.59%
			FGN_RU_6B519_VSR_Sniper             = 0.59%
			FGN_RU_V95_Black                    = 0.59%
			FGN_RU_V95_Kamysh_Blue              = 0.59%
			FGN_RU_V95_Kamysh                   = 0.59%
			FGN_RU_V95_KKO_Urban                = 0.59%
			FGN_RU_V95_KKO                      = 0.59%
			FGN_RU_V95_Podlesok_Urban           = 0.59%
			FGN_RU_V95_Podlesok                 = 0.59%
			FGN_RU_V95_VSR                      = 0.59%
			FGN_RU_V95_Black_OMON               = 0.59%
			FGN_RU_V95_Kamysh_Blue_OMON         = 0.59%
			FGN_RU_V95_Kamysh_OMON              = 0.59%
			FGN_RU_V95_KKO_Urban_OMON           = 0.59%
			FGN_RU_V95_KKO_OMON                 = 0.59%
			FGN_RU_V95_Podlesok_Urban_OMON      = 0.59%
			FGN_RU_V95_Podlesok_OMON            = 0.59%
			FGN_RU_V95_VSR_OMON                 = 0.59%
			FGN_RU_V95_Black_2                  = 0.59%
			FGN_RU_V95_Kamysh_Blue_2            = 0.59%
			FGN_RU_V95_Kamysh_2                 = 0.59%
			FGN_RU_V95_KKO_Urban_2              = 0.59%
			FGN_RU_V95_KKO_2                    = 0.59%
			FGN_RU_V95_Podlesok_Urban_2         = 0.59%
			FGN_RU_V95_Podlesok_2               = 0.59%
			FGN_RU_V95_VSR_2                    = 0.59%
			V_PlateCarrierGL_blk                = 0.59%
			V_PlateCarrierGL_mtp                = 0.59%
			V_PlateCarrierIAGL_oli              = 0.59%
			V_PlateCarrierSpec_blk              = 0.59%
			V_PlateCarrierSpec_mtp              = 0.59%
			V_TacChestrig_grn_F                 = 0.59%
			V_TacChestrig_oli_F                 = 0.59%
			V_TacChestrig_cbr_F                 = 0.59%
			V_PlateCarrier1_tna_F               = 0.59%
			V_PlateCarrier2_tna_F               = 0.59%
			V_PlateCarrierSpec_tna_F            = 0.59%
			V_PlateCarrierGL_tna_F              = 0.59%
			V_HarnessO_ghex_F                   = 0.59%
			V_HarnessOGL_ghex_F                 = 0.59%
			V_BandollierB_ghex_F                = 0.59%
			V_TacVest_gen_F                     = 0.59%
			V_PlateCarrier1_rgr_noflag_F        = 0.59%
			V_PlateCarrier2_rgr_noflag_F        = 0.59%
			V_RebreatherB                       = 0.59%
			V_RebreatherIR                      = 0.59%
			V_RebreatherIA                      = 0.59%
		*/
		MilitaryVests[] = {"FGN_RU_V95_Podlesok", "FGN_RU_6B519_VSR", "rhsusf_iotv_ucp_SAW", "FGN_RU_V95_KKO_Urban", "rhsusf_iotv_ucp", "rhsusf_spc_patchless", "FGN_RU_V95_VSR", "rhs_6b23", "V_TacVest_gen_F", "FGN_RU_6B519_TTsKO", "FGN_RU_6B519_VSR_Medic", "rhs_6b23_rifleman", "FGN_RU_V95_Kamysh_Blue", "rhsusf_iotv_ucp_teamleader", "V_RebreatherB", "FGN_RU_6B513_Khaki", "V_PlateCarrier3_rgr", "FGN_RU_V95_Podlesok_OMON", "FGN_RU_6B513_Medic", "V_PlateCarrierIAGL_oli", "V_PlateCarrier2_rgr_noflag_F", "V_PlateCarrier1_blk", "rhsusf_iotv_ocp_grenadier", "FGN_RU_V95_Kamysh_Blue_2", "rhs_6b23_ML_engineer", "V_PlateCarrierSpec_blk", "FGN_RU_V95_Podlesok_2", "rhsusf_iotv_ocp", "rhsusf_iotv_ocp_SAW", "FGN_RU_6B519_VSR_Officer", "rhs_6b23_digi_6sh92_radio", "V_PlateCarrier1_rgr", "FGN_RU_6B519_Khaki_Officer", "rhsusf_iotv_ucp_repair", "rhs_6b23_digi_sniper", "rhs_6sh92_digi", "rhs_6b23_digi_crewofficer", "rhsusf_iotv_ucp_squadleader", "rhs_6b23_ML_6sh92_vog_headset", "rhsusf_iotv_ucp_rifleman", "FGN_RU_6B513", "FGN_RU_V95_Black", "rhs_6sh92_digi_headset", "V_PlateCarrierGL_mtp", "V_PlateCarrierL_CTRG", "rhsusf_spc_teamleader", "rhs_6b23_digi_crew", "FGN_RU_6B513_Khaki_Officer", "rhsusf_spc_corpsman", "rhs_6sh92_digi_vog_headset", "rhsusf_spc", "rhs_6b23_ML_6sh92", "FGN_RU_6B519_Officer", "rhsusf_spcs_ocp_rifleman", "FGN_RU_6B519_Sniper", "rhs_6b23_digi_6sh92_headset_mapcase", "rhs_6sh46", "V_PlateCarrier2_rgr", "V_PlateCarrierGL_rgr", "rhs_6b23_ML_rifleman", "rhs_6sh92_headset", "rhs_6b23_sniper", "V_HarnessOGL_ghex_F", "FGN_RU_6B519_Medic", "rhsusf_spc_iar", "V_PlateCarrierH_CTRG", "rhs_6b23_digi_rifleman", "V_PlateCarrierGL_tna_F", "rhs_6b23_6sh92_radio", "rhs_6b23_ML_6sh92_headset_mapcase", "V_BandollierB_ghex_F", "rhs_6b23_digi_6sh92", "V_RebreatherIR", "FGN_RU_6B513_VSR", "rhs_6b23_ML_medic", "rhs_vest_commander", "FGN_RU_V95_KKO_Urban_2", "FGN_RU_V95_KKO_OMON", "FGN_RU_6B519_Khaki_Medic", "FGN_RU_6B513_VSR_Medic", "rhs_6sh92_digi_vog", "V_PlateCarrier1_rgr_noflag_F", "V_TacChestrig_oli_F", "rhs_6sh92", "rhs_6b23_crew", "FGN_RU_6B513_TTsKO_Medic", "rhs_6sh92_digi_radio", "rhs_6sh92_vog_headset", "rhs_6b23_digi_6sh92_vog", "V_PlateCarrier2_tna_F", "V_TacChestrig_cbr_F", "FGN_RU_V95_Kamysh_Blue_OMON", "rhsusf_spcs_ucp_rifleman", "rhs_6b23_crewofficer", "rhs_6b23_ML", "rhsusf_iotv_ocp_teamleader", "FGN_RU_6B519_TTsKO_Medic", "FGN_RU_V95_Black_OMON", "rhs_6b43", "V_PlateCarrierSpec_mtp", "FGN_RU_V95_Black_2", "FGN_RU_6B513_Sniper", "rhs_6b23_6sh92_vog", "FGN_RU_6B513_VSR_Sniper", "rhs_6b23_ML_6sh92_vog", "rhsusf_iotv_ucp_grenadier", "FGN_RU_V95_Kamysh", "FGN_RU_V95_KKO_Urban_OMON", "FGN_RU_6B513_VSR_Officer", "FGN_RU_6B519_Khaki_Sniper", "FGN_RU_V95_Kamysh_OMON", "FGN_RU_6B519_VSR_Sniper", "V_PlateCarrierGL_blk", "V_PlateCarrierIA2_dgtl", "rhs_6sh92_radio", "FGN_RU_V95_Podlesok_Urban_2", "rhs_6b23_6sh92_headset", "rhs_vydra_3m", "V_PlateCarrier1_tna_F", "FGN_RU_6B513_TTsKO", "V_PlateCarrierSpec_rgr", "FGN_RU_6B519_Khaki", "rhs_6b23_ML_6sh92_headset", "rhsusf_spcs_ocp", "rhs_6b23_digi", "FGN_RU_V95_KKO_2", "FGN_RU_V95_VSR_2", "rhs_6b23_ML_sniper", "FGN_RU_V95_Podlesok_Urban_OMON", "rhsusf_spc_light", "rhsusf_spc_squadleader", "rhs_6b23_digi_medic", "FGN_RU_6B519_TTsKO_Sniper", "rhsusf_iotv_ocp_rifleman", "FGN_RU_6B519_TTsKO_Officer", "rhs_6b23_digi_6sh92_headset", "FGN_RU_V95_Kamysh_2", "rhs_6b23_medic", "FGN_RU_6B513_Khaki_Medic", "FGN_RU_6B513_Khaki_Sniper", "FGN_RU_6B513_TTsKO_Officer", "V_RebreatherIA", "V_PlateCarrierIAGL_dgtl", "FGN_RU_V95_VSR_OMON", "V_HarnessO_ghex_F", "rhsusf_spc_rifleman", "rhs_6b23_6sh92_vog_headset", "rhs_6b23_engineer", "V_PlateCarrierSpec_tna_F", "FGN_RU_6B513_TTsKO_Sniper", "rhsusf_iotv_ocp_medic", "rhs_6b23_digi_6sh92_vog_headset", "rhsusf_spcs_ucp", "rhsusf_iotv_ocp_squadleader", "rhsusf_iotv_ocp_repair", "rhs_6b23_6sh92", "rhs_6b23_ML_crewofficer", "rhs_6b23_ML_6sh92_radio", "FGN_RU_6B513_Officer", "rhs_6b23_6sh92_headset_mapcase", "rhs_6b23_ML_crew", "V_TacChestrig_grn_F", "FGN_RU_6B519", "V_PlateCarrierIA1_dgtl", "FGN_RU_V95_KKO", "FGN_RU_V95_Podlesok_Urban", "rhsusf_iotv_ucp_medic", "rhs_6sh92_vog", "rhs_6b23_digi_engineer"};

		/*
			Percental Item Spawn Chances of MilitaryHeadgear:

			Exile_Headgear_GasMask                          = 0.39%
			H_MilCap_ocamo                                  = 0.39%
			H_MilCap_mcamo                                  = 0.39%
			H_MilCap_oucamo                                 = 0.39%
			H_MilCap_blue                                   = 0.39%
			H_MilCap_rucamo                                 = 0.39%
			H_MilCap_dgtl                                   = 0.39%
			H_HelmetB                                       = 0.39%
			H_HelmetB_paint                                 = 0.39%
			H_HelmetB_light                                 = 0.39%
			H_HelmetB_plain_blk                             = 0.39%
			H_HelmetSpecB                                   = 0.39%
			H_HelmetSpecB_paint1                            = 0.39%
			H_HelmetSpecB_paint2                            = 0.39%
			H_HelmetSpecB_blk                               = 0.39%
			H_HelmetIA                                      = 0.39%
			H_HelmetIA_net                                  = 0.39%
			H_HelmetIA_camo                                 = 0.39%
			H_HelmetB_grass                                 = 0.39%
			H_HelmetB_snakeskin                             = 0.39%
			H_HelmetB_desert                                = 0.39%
			H_HelmetB_black                                 = 0.39%
			H_HelmetB_sand                                  = 0.39%
			H_HelmetB_light_grass                           = 0.39%
			H_HelmetB_light_snakeskin                       = 0.39%
			H_HelmetB_light_desert                          = 0.39%
			H_HelmetB_light_black                           = 0.39%
			H_HelmetB_light_sand                            = 0.39%
			H_HelmetCrew_B                                  = 0.39%
			H_HelmetCrew_O                                  = 0.39%
			H_HelmetCrew_I                                  = 0.39%
			H_PilotHelmetFighter_B                          = 0.39%
			H_PilotHelmetFighter_O                          = 0.39%
			H_PilotHelmetFighter_I                          = 0.39%
			H_PilotHelmetHeli_B                             = 0.39%
			H_PilotHelmetHeli_O                             = 0.39%
			H_PilotHelmetHeli_I                             = 0.39%
			H_HelmetB_camo                                  = 0.39%
			H_CrewHelmetHeli_B                              = 0.39%
			H_CrewHelmetHeli_O                              = 0.39%
			H_CrewHelmetHeli_I                              = 0.39%
			H_BandMask_khk                                  = 0.39%
			H_BandMask_reaper                               = 0.39%
			H_BandMask_demon                                = 0.39%
			H_HelmetO_oucamo                                = 0.39%
			H_HelmetLeaderO_oucamo                          = 0.39%
			H_HelmetSpecO_ocamo                             = 0.39%
			H_HelmetSpecO_blk                               = 0.39%
			H_HelmetO_ocamo                                 = 0.39%
			H_HelmetLeaderO_ocamo                           = 0.39%
			H_HelmetO_ghex_F                                = 0.39%
			H_Helmet_Skate                                  = 0.39%
			H_HelmetB_Enh_tna_F                             = 0.39%
			H_HelmetB_Light_tna_F                           = 0.39%
			H_Beret_gen_F                                   = 0.39%
			H_HelmetB_tna_F                                 = 0.39%
			H_HelmetSpecO_ghex_F                            = 0.39%
			H_HelmetLeaderO_ghex_F                          = 0.39%
			H_HelmetCrew_O_ghex_F                           = 0.39%
			H_HelmetB_TI_tna_F                              = 0.39%
			rhs_6b27m_digi                                  = 0.39%
			rhs_6b27m_digi_ess                              = 0.39%
			rhs_6b27m_digi_bala                             = 0.39%
			rhs_6b27m_digi_ess_bala                         = 0.39%
			rhs_6b27m                                       = 0.39%
			rhs_6b27m_bala                                  = 0.39%
			rhs_6b27m_ess                                   = 0.39%
			rhs_6b27m_ess_bala                              = 0.39%
			rhs_6b27m_ml                                    = 0.39%
			rhs_6b27m_ml_ess                                = 0.39%
			rhs_6b27m_ml_bala                               = 0.39%
			rhs_6b27m_ML_ess_bala                           = 0.39%
			rhs_6b27m_green                                 = 0.39%
			rhs_6b27m_green_ess                             = 0.39%
			rhs_6b27m_green_ess_bala                        = 0.39%
			rhs_6b26_green                                  = 0.39%
			rhs_6b26_bala_green                             = 0.39%
			rhs_6b26_ess_green                              = 0.39%
			rhs_6b26_ess_bala_green                         = 0.39%
			rhs_6b26                                        = 0.39%
			rhs_6b26_bala                                   = 0.39%
			rhs_6b26_ess                                    = 0.39%
			rhs_6b26_ess_bala                               = 0.39%
			rhs_6b28_green                                  = 0.39%
			rhs_6b28_green_bala                             = 0.39%
			rhs_6b28_green_ess                              = 0.39%
			rhs_6b28_green_ess_bala                         = 0.39%
			rhs_6b28                                        = 0.39%
			rhs_6b28_bala                                   = 0.39%
			rhs_6b28_ess                                    = 0.39%
			rhs_6b28_ess_bala                               = 0.39%
			rhs_6b28_flora                                  = 0.39%
			rhs_6b28_flora_bala                             = 0.39%
			rhs_6b28_flora_ess                              = 0.39%
			rhs_6b28_flora_ess_bala                         = 0.39%
			rhs_Booniehat_digi                              = 0.39%
			rhs_Booniehat_flora                             = 0.39%
			rhs_ssh68                                       = 0.39%
			rhs_Booniehat_m81                               = 0.39%
			rhs_Booniehat_marpatd                           = 0.39%
			rhs_Booniehat_marpatwd                          = 0.39%
			rhs_Booniehat_ocp                               = 0.39%
			rhs_Booniehat_ucp                               = 0.39%
			rhsusf_Bowman                                   = 0.39%
			rhsusf_ach_bare                                 = 0.39%
			rhsusf_ach_bare_des                             = 0.39%
			rhsusf_ach_bare_des_ess                         = 0.39%
			rhsusf_ach_bare_des_headset                     = 0.39%
			rhsusf_ach_bare_des_headset_ess                 = 0.39%
			rhsusf_ach_bare_ess                             = 0.39%
			rhsusf_ach_bare_headset                         = 0.39%
			rhsusf_ach_bare_headset_ess                     = 0.39%
			rhsusf_ach_bare_semi                            = 0.39%
			rhsusf_ach_bare_semi_ess                        = 0.39%
			rhsusf_ach_bare_semi_headset                    = 0.39%
			rhsusf_ach_bare_semi_headset_ess                = 0.39%
			rhsusf_ach_bare_tan                             = 0.39%
			rhsusf_ach_bare_tan_ess                         = 0.39%
			rhsusf_ach_bare_tan_headset                     = 0.39%
			rhsusf_ach_bare_tan_headset_ess                 = 0.39%
			rhsusf_ach_bare_wood                            = 0.39%
			rhsusf_ach_bare_wood_ess                        = 0.39%
			rhsusf_ach_bare_wood_headset                    = 0.39%
			rhsusf_ach_bare_wood_headset_ess                = 0.39%
			rhsusf_ach_helmet_ESS_ocp                       = 0.39%
			rhsusf_ach_helmet_ESS_ucp                       = 0.39%
			rhsusf_ach_helmet_M81                           = 0.39%
			rhsusf_ach_helmet_camo_ocp                      = 0.39%
			rhsusf_ach_helmet_headset_ess_ocp               = 0.39%
			rhsusf_ach_helmet_headset_ess_ucp               = 0.39%
			rhsusf_ach_helmet_headset_ocp                   = 0.39%
			rhsusf_ach_helmet_headset_ucp                   = 0.39%
			rhsusf_ach_helmet_ocp                           = 0.39%
			rhsusf_ach_helmet_ocp_norotos                   = 0.39%
			rhsusf_ach_helmet_ucp                           = 0.39%
			rhsusf_ach_helmet_ucp_norotos                   = 0.39%
			rhsusf_bowman_cap                               = 0.39%
			rhsusf_lwh_helmet_M1942                         = 0.39%
			rhsusf_lwh_helmet_marpatd                       = 0.39%
			rhsusf_lwh_helmet_marpatd_ess                   = 0.39%
			rhsusf_lwh_helmet_marpatd_headset               = 0.39%
			rhsusf_lwh_helmet_marpatwd                      = 0.39%
			rhsusf_lwh_helmet_marpatwd_ess                  = 0.39%
			rhsusf_lwh_helmet_marpatwd_headset              = 0.39%
			rhsusf_mich_bare                                = 0.39%
			rhsusf_mich_bare_alt                            = 0.39%
			rhsusf_mich_bare_alt_semi                       = 0.39%
			rhsusf_mich_bare_alt_tan                        = 0.39%
			rhsusf_mich_bare_headset                        = 0.39%
			rhsusf_mich_bare_norotos                        = 0.39%
			rhsusf_mich_bare_norotos_alt                    = 0.39%
			rhsusf_mich_bare_norotos_alt_headset            = 0.39%
			rhsusf_mich_bare_norotos_alt_semi               = 0.39%
			rhsusf_mich_bare_norotos_alt_semi_headset       = 0.39%
			rhsusf_mich_bare_norotos_alt_tan                = 0.39%
			rhsusf_mich_bare_norotos_alt_tan_headset        = 0.39%
			rhsusf_mich_bare_norotos_arc                    = 0.39%
			rhsusf_mich_bare_norotos_arc_alt                = 0.39%
			rhsusf_mich_bare_norotos_arc_alt_headset        = 0.39%
			rhsusf_mich_bare_norotos_arc_alt_semi           = 0.39%
			rhsusf_mich_bare_norotos_arc_alt_semi_headset   = 0.39%
			rhsusf_mich_bare_norotos_arc_alt_tan            = 0.39%
			rhsusf_mich_bare_norotos_arc_alt_tan_headset    = 0.39%
			rhsusf_mich_bare_norotos_arc_headset            = 0.39%
			rhsusf_mich_bare_norotos_arc_semi               = 0.39%
			rhsusf_mich_bare_norotos_arc_semi_headset       = 0.39%
			rhsusf_mich_bare_norotos_arc_tan                = 0.39%
			rhsusf_mich_bare_norotos_headset                = 0.39%
			rhsusf_mich_bare_norotos_semi                   = 0.39%
			rhsusf_mich_bare_norotos_semi_headset           = 0.39%
			rhsusf_mich_bare_norotos_tan                    = 0.39%
			rhsusf_mich_bare_norotos_tan_headset            = 0.39%
			rhsusf_mich_bare_semi                           = 0.39%
			rhsusf_mich_bare_semi_headset                   = 0.39%
			rhsusf_mich_bare_tan                            = 0.39%
			rhsusf_mich_bare_tan_headset                    = 0.39%
			rhsusf_mich_helmet_marpatd_alt_headset          = 0.39%
			rhsusf_mich_helmet_marpatd_headset              = 0.39%
			rhsusf_mich_helmet_marpatd_norotos              = 0.39%
			rhsusf_mich_helmet_marpatd_norotos_arc          = 0.39%
			rhsusf_mich_helmet_marpatd_norotos_arc_headset  = 0.39%
			rhsusf_mich_helmet_marpatd_norotos_headset      = 0.39%
			rhsusf_mich_helmet_marpatwd                     = 0.39%
			rhsusf_mich_helmet_marpatwd_alt                 = 0.39%
			rhsusf_mich_helmet_marpatwd_alt_headset         = 0.39%
			rhsusf_mich_helmet_marpatwd_headset             = 0.39%
			rhsusf_mich_helmet_marpatwd_norotos             = 0.39%
			rhsusf_mich_helmet_marpatwd_norotos_arc         = 0.39%
			rhsusf_mich_helmet_marpatwd_norotos_arc_headset = 0.39%
			rhsusf_mich_helmet_marpatwd_norotos_headset     = 0.39%
			rhs_altyn_novisor                               = 0.39%
			rhs_altyn_novisor_bala                          = 0.39%
			rhs_altyn_novisor_ess                           = 0.39%
			rhs_altyn_novisor_ess_bala                      = 0.39%
			rhs_altyn_visordown                             = 0.39%
			rhs_altyn                                       = 0.39%
			rhs_altyn_bala                                  = 0.39%
			rhsusf_opscore_bk_pelt                          = 0.39%
			rhsusf_opscore_bk                               = 0.39%
			rhsusf_opscore_coy_cover                        = 0.39%
			rhsusf_opscore_coy_cover_pelt                   = 0.39%
			rhsusf_opscore_fg                               = 0.39%
			rhsusf_opscore_fg_pelt                          = 0.39%
			rhsusf_opscore_fg_pelt_cam                      = 0.39%
			rhsusf_opscore_fg_pelt_nsw                      = 0.39%
			rhsusf_opscore_mc                               = 0.39%
			rhsusf_opscore_mc_pelt                          = 0.39%
			rhsusf_opscore_mc_pelt_nsw                      = 0.39%
			rhsusf_opscore_mc_cover                         = 0.39%
			rhsusf_opscore_mc_cover_pelt                    = 0.39%
			rhsusf_opscore_mc_cover_pelt_nsw                = 0.39%
			rhsusf_opscore_mc_cover_pelt_cam                = 0.39%
			rhsusf_opscore_paint                            = 0.39%
			rhsusf_opscore_paint_pelt                       = 0.39%
			rhsusf_opscore_paint_pelt_nsw                   = 0.39%
			rhsusf_opscore_paint_pelt_nsw_cam               = 0.39%
			rhsusf_opscore_rg_cover                         = 0.39%
			rhsusf_opscore_rg_cover_pelt                    = 0.39%
			rhsusf_opscore_ut                               = 0.39%
			rhsusf_opscore_ut_pelt                          = 0.39%
			rhsusf_opscore_ut_pelt_cam                      = 0.39%
			rhsusf_opscore_ut_pelt_nsw                      = 0.39%
			rhsusf_opscore_ut_pelt_nsw_cam                  = 0.39%
			rhsusf_opscore_mar_ut_pelt                      = 0.39%
			rhsusf_opscore_mar_ut                           = 0.39%
			rhsusf_opscore_mar_fg_pelt                      = 0.39%
			rhsusf_opscore_mar_fg                           = 0.39%
			rhsusf_protech_helmet                           = 0.39%
			rhsusf_protech_helmet_ess                       = 0.39%
			rhsusf_protech_helmet_rhino                     = 0.39%
			rhsusf_protech_helmet_rhino_ess                 = 0.39%
			FGN_CauR_Beanie_Black                           = 0.39%
			FGN_CauR_Beanie_Brown                           = 0.39%
			FGN_CauR_Beanie_Woodland                        = 0.39%
			FGN_RU_Beret_OMON_New                           = 0.39%
			FGN_RU_OSNBeret                                 = 0.39%
			FGN_CauR_Boonie_M81                             = 0.39%
			FGN_FieldCap_Kamysh_Blue                        = 0.39%
			FGN_FieldCap_Kamysh                             = 0.39%
			FGN_CauR_Pakol_03                               = 0.39%
			FGN_CauR_Pakol_01                               = 0.39%
			FGN_CauR_Pakol_02                               = 0.39%
			FGN_CauR_PatrolCap_M81                          = 0.39%
			FGN_SSH68_Flora                                 = 0.39%
			FGN_SSH68_Khaki                                 = 0.39%
			FGN_SSH68_KLMK                                  = 0.39%
			FGN_SSH68_TTsKO                                 = 0.39%
			FGN_SSH68_TTsKO2                                = 0.39%
			FGN_SSH68_VSR2                                  = 0.39%
			FGN_SSH68_VSR                                   = 0.39%
			FGN_SferaS_Green                                = 0.39%
			FGN_SferaS_VSR                                  = 0.39%
			FGN_Sfera_Green                                 = 0.39%
			FGN_Sfera_VSR                                   = 0.39%
			FGN_ZSH12                                       = 0.39%
			FGN_ZSH12_Black                                 = 0.39%
			FGN_ZSH12_Balaclava                             = 0.39%
		*/
		MilitaryHeadgear[] = {"rhsusf_lwh_helmet_M1942", "rhsusf_opscore_mc_pelt", "rhs_altyn_novisor", "rhsusf_opscore_ut", "rhsusf_opscore_mc_cover_pelt_cam", "H_HelmetB_Enh_tna_F", "FGN_SSH68_TTsKO", "rhsusf_opscore_mar_ut", "rhsusf_opscore_mar_fg", "rhsusf_mich_bare", "rhsusf_opscore_mc_cover_pelt", "rhsusf_mich_bare_semi_headset", "rhs_6b27m_bala", "H_HelmetB_light_black", "H_HelmetB_light", "rhsusf_opscore_rg_cover", "rhsusf_ach_helmet_M81", "rhsusf_mich_bare_semi", "rhsusf_mich_helmet_marpatd_norotos_headset", "rhsusf_lwh_helmet_marpatd_ess", "H_Helmet_Skate", "rhsusf_ach_helmet_headset_ocp", "rhs_Booniehat_digi", "H_PilotHelmetHeli_I", "rhsusf_opscore_ut_pelt", "FGN_SferaS_Green", "FGN_CauR_Pakol_03", "rhsusf_opscore_paint_pelt_nsw", "H_HelmetB_sand", "rhsusf_opscore_paint_pelt", "H_PilotHelmetFighter_O", "rhsusf_mich_helmet_marpatwd", "H_PilotHelmetHeli_O", "rhsusf_opscore_fg_pelt", "rhsusf_lwh_helmet_marpatwd_ess", "H_MilCap_ocamo", "H_HelmetB_paint", "rhsusf_lwh_helmet_marpatwd", "rhs_6b27m_digi_ess", "rhsusf_ach_bare_wood_headset", "rhsusf_mich_bare_norotos_arc_alt_tan", "rhsusf_mich_helmet_marpatwd_norotos_arc_headset", "H_MilCap_blue", "rhsusf_opscore_coy_cover_pelt", "rhs_altyn_bala", "rhsusf_ach_bare_tan_ess", "rhsusf_ach_bare_headset_ess", "rhsusf_ach_bare_headset", "rhsusf_mich_helmet_marpatwd_alt_headset", "H_HelmetB_snakeskin", "rhsusf_ach_helmet_ucp_norotos", "rhsusf_opscore_mc_cover_pelt_nsw", "FGN_FieldCap_Kamysh_Blue", "FGN_CauR_PatrolCap_M81", "rhs_6b27m_ess_bala", "rhsusf_ach_helmet_ocp", "H_MilCap_dgtl", "H_HelmetB_black", "rhs_altyn_novisor_bala", "H_HelmetB_desert", "rhsusf_ach_bare_tan_headset_ess", "FGN_SSH68_VSR2", "FGN_ZSH12_Balaclava", "H_HelmetSpecB_blk", "rhsusf_ach_bare_semi_headset_ess", "rhs_6b28_flora", "rhsusf_ach_bare_des_headset_ess", "rhsusf_mich_bare_norotos_alt", "rhs_6b27m_ess", "H_HelmetB_Light_tna_F", "rhsusf_bowman_cap", "H_HelmetB_tna_F", "rhs_6b27m_digi_bala", "H_HelmetLeaderO_ghex_F", "rhsusf_ach_bare_semi_headset", "rhsusf_ach_bare_des_ess", "H_HelmetB_camo", "rhs_6b28_ess", "H_HelmetSpecO_ghex_F", "rhs_6b27m_ml_bala", "H_MilCap_mcamo", "rhs_6b28_ess_bala", "rhsusf_mich_helmet_marpatwd_norotos", "H_BandMask_reaper", "rhsusf_ach_helmet_headset_ess_ucp", "rhsusf_protech_helmet_ess", "H_HelmetB_plain_blk", "rhsusf_mich_bare_norotos_tan_headset", "rhsusf_opscore_mar_fg_pelt", "H_HelmetSpecB", "rhs_6b27m_green", "rhsusf_ach_bare_tan", "rhsusf_opscore_coy_cover", "rhsusf_mich_bare_headset", "FGN_SSH68_Flora", "rhsusf_opscore_mc_pelt_nsw", "rhsusf_mich_bare_alt_semi", "rhs_altyn_novisor_ess", "rhsusf_protech_helmet_rhino", "rhs_Booniehat_ucp", "rhsusf_mich_bare_tan", "rhsusf_ach_helmet_headset_ess_ocp", "rhsusf_lwh_helmet_marpatwd_headset", "rhsusf_mich_helmet_marpatd_norotos_arc", "rhs_6b28_flora_ess_bala", "rhsusf_mich_bare_norotos_alt_tan_headset", "rhsusf_ach_bare", "H_MilCap_oucamo", "rhs_Booniehat_marpatd", "rhsusf_ach_bare_tan_headset", "rhsusf_mich_helmet_marpatwd_alt", "rhs_Booniehat_ocp", "rhsusf_mich_bare_norotos_tan", "rhsusf_mich_bare_norotos_headset", "rhs_6b28_flora_bala", "rhsusf_mich_helmet_marpatd_alt_headset", "FGN_CauR_Pakol_01", "FGN_SSH68_KLMK", "rhs_Booniehat_m81", "FGN_CauR_Beanie_Woodland", "H_HelmetB_light_desert", "FGN_ZSH12_Black", "rhsusf_mich_helmet_marpatwd_norotos_arc", "rhsusf_opscore_bk_pelt", "FGN_SferaS_VSR", "rhsusf_mich_bare_norotos_alt_tan", "rhsusf_mich_helmet_marpatwd_norotos_headset", "rhsusf_opscore_fg_pelt_cam", "rhsusf_mich_bare_norotos_arc_alt", "rhsusf_mich_bare_norotos_arc", "rhs_6b27m_ML_ess_bala", "rhsusf_opscore_fg_pelt_nsw", "H_HelmetB", "rhsusf_mich_bare_norotos_alt_headset", "rhsusf_mich_bare_norotos_arc_alt_headset", "rhsusf_ach_bare_semi_ess", "H_HelmetIA_camo", "rhsusf_opscore_mc", "rhsusf_mich_bare_alt", "FGN_SSH68_TTsKO2", "FGN_ZSH12", "FGN_Sfera_VSR", "rhs_6b26_ess_bala_green", "rhsusf_mich_bare_norotos_alt_semi", "rhs_6b28_bala", "H_HelmetB_light_sand", "rhs_6b28_flora_ess", "rhsusf_mich_bare_norotos_arc_semi_headset", "H_BandMask_demon", "H_HelmetO_ocamo", "rhs_6b28_green_ess", "rhs_altyn_novisor_ess_bala", "H_Beret_gen_F", "rhs_6b28_green_ess_bala", "H_HelmetB_grass", "rhsusf_opscore_paint", "rhs_6b27m_green_ess", "rhsusf_Bowman", "rhs_6b26_ess", "rhsusf_mich_bare_norotos_arc_tan", "rhs_6b27m", "rhs_6b27m_digi_ess_bala", "rhsusf_mich_bare_tan_headset", "rhs_6b26_bala_green", "rhs_altyn", "rhsusf_mich_bare_alt_tan", "rhs_altyn_visordown", "rhs_6b26_ess_bala", "rhsusf_ach_bare_wood", "rhsusf_opscore_bk", "rhs_Booniehat_flora", "rhsusf_mich_bare_norotos_arc_headset", "FGN_CauR_Boonie_M81", "H_PilotHelmetFighter_B", "rhs_6b28", "rhsusf_opscore_paint_pelt_nsw_cam", "H_HelmetCrew_B", "rhsusf_ach_helmet_ESS_ucp", "H_HelmetB_light_snakeskin", "rhsusf_mich_bare_norotos_arc_alt_semi_headset", "FGN_FieldCap_Kamysh", "rhsusf_mich_bare_norotos_arc_alt_semi", "H_CrewHelmetHeli_I", "H_HelmetCrew_I", "rhsusf_opscore_rg_cover_pelt", "rhsusf_mich_bare_norotos_alt_semi_headset", "rhsusf_protech_helmet", "H_HelmetCrew_O", "FGN_SSH68_VSR", "rhs_6b27m_digi", "rhsusf_opscore_fg", "rhsusf_ach_helmet_ocp_norotos", "rhsusf_mich_bare_norotos_arc_alt_tan_headset", "rhs_6b26_ess_green", "FGN_Sfera_Green", "rhsusf_mich_helmet_marpatd_norotos_arc_headset", "rhsusf_opscore_mar_ut_pelt", "rhsusf_opscore_ut_pelt_cam", "H_HelmetIA_net", "rhsusf_opscore_mc_cover", "H_HelmetIA", "rhsusf_mich_helmet_marpatd_norotos", "FGN_RU_OSNBeret", "rhsusf_ach_bare_des", "rhs_Booniehat_marpatwd", "rhsusf_ach_bare_wood_headset_ess", "FGN_CauR_Pakol_02", "Exile_Headgear_GasMask", "rhsusf_mich_bare_norotos", "H_CrewHelmetHeli_O", "rhsusf_mich_bare_norotos_semi", "FGN_CauR_Beanie_Black", "rhs_6b27m_green_ess_bala", "rhs_6b26_green", "rhsusf_ach_bare_des_headset", "FGN_RU_Beret_OMON_New", "rhs_6b27m_ml", "H_MilCap_rucamo", "rhsusf_opscore_ut_pelt_nsw", "rhs_6b26", "rhsusf_lwh_helmet_marpatd_headset", "H_CrewHelmetHeli_B", "rhs_6b28_green_bala", "rhsusf_ach_helmet_headset_ucp", "rhsusf_lwh_helmet_marpatd", "H_HelmetSpecB_paint1", "rhsusf_ach_helmet_ESS_ocp", "rhsusf_protech_helmet_rhino_ess", "H_BandMask_khk", "H_HelmetLeaderO_ocamo", "rhsusf_ach_bare_wood_ess", "FGN_SSH68_Khaki", "H_HelmetB_light_grass", "rhsusf_ach_bare_semi", "H_HelmetCrew_O_ghex_F", "rhsusf_mich_helmet_marpatd_headset", "H_PilotHelmetHeli_B", "rhsusf_ach_helmet_camo_ocp", "H_HelmetLeaderO_oucamo", "H_HelmetO_ghex_F", "H_HelmetO_oucamo", "rhs_6b27m_ml_ess", "rhs_6b26_bala", "rhsusf_ach_bare_ess", "rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_ach_helmet_ucp", "rhsusf_mich_helmet_marpatwd_headset", "rhs_ssh68", "FGN_CauR_Beanie_Brown", "H_HelmetSpecB_paint2", "H_PilotHelmetFighter_I", "H_HelmetSpecO_blk", "rhsusf_mich_bare_norotos_semi_headset", "H_HelmetSpecO_ocamo", "H_HelmetB_TI_tna_F", "rhs_6b28_green", "rhsusf_mich_bare_norotos_arc_semi"};

		/*
			Percental Item Spawn Chances of Ghillies:

			U_B_GhillieSuit         = 27.03%
			U_O_GhillieSuit         = 27.03%
			U_I_GhillieSuit         = 27.03%
			U_B_FullGhillie_ard     = 1.35%
			U_B_FullGhillie_lsh     = 1.35%
			U_B_FullGhillie_sard    = 1.35%
			U_O_FullGhillie_ard     = 1.35%
			U_O_FullGhillie_lsh     = 1.35%
			U_O_FullGhillie_sard    = 1.35%
			U_I_FullGhillie_ard     = 1.35%
			U_I_FullGhillie_lsh     = 1.35%
			U_I_FullGhillie_sard    = 1.35%
			U_B_T_Sniper_F          = 1.35%
			U_B_T_Soldier_F         = 1.35%
			U_B_T_FullGhillie_tna_F = 1.35%
			U_O_T_Sniper_F          = 1.35%
			U_O_T_FullGhillie_tna_F = 1.35%
		*/
		Ghillies[] = {"U_I_GhillieSuit", "U_B_GhillieSuit", "U_B_GhillieSuit", "U_I_GhillieSuit", "U_O_GhillieSuit", "U_B_FullGhillie_lsh", "U_O_GhillieSuit", "U_B_GhillieSuit", "U_O_T_FullGhillie_tna_F", "U_I_GhillieSuit", "U_B_GhillieSuit", "U_O_GhillieSuit", "U_B_GhillieSuit", "U_O_GhillieSuit", "U_I_GhillieSuit", "U_B_FullGhillie_ard", "U_I_GhillieSuit", "U_B_GhillieSuit", "U_O_GhillieSuit", "U_O_FullGhillie_sard", "U_I_GhillieSuit", "U_O_GhillieSuit", "U_I_GhillieSuit", "U_O_GhillieSuit", "U_B_GhillieSuit", "U_O_GhillieSuit", "U_I_FullGhillie_lsh", "U_I_GhillieSuit", "U_B_GhillieSuit", "U_I_GhillieSuit", "U_B_GhillieSuit", "U_I_GhillieSuit", "U_O_GhillieSuit", "U_B_GhillieSuit", "U_O_GhillieSuit", "U_B_T_Soldier_F", "U_B_GhillieSuit", "U_O_GhillieSuit", "U_I_FullGhillie_ard", "U_B_GhillieSuit", "U_O_GhillieSuit", "U_I_GhillieSuit", "U_B_GhillieSuit", "U_I_GhillieSuit", "U_B_GhillieSuit", "U_B_GhillieSuit", "U_O_T_Sniper_F", "U_O_GhillieSuit", "U_I_GhillieSuit", "U_B_FullGhillie_sard", "U_B_GhillieSuit", "U_O_GhillieSuit", "U_I_GhillieSuit", "U_O_GhillieSuit", "U_O_GhillieSuit", "U_I_GhillieSuit", "U_I_FullGhillie_sard", "U_I_GhillieSuit", "U_I_GhillieSuit", "U_O_GhillieSuit", "U_I_GhillieSuit", "U_O_FullGhillie_ard", "U_B_T_Sniper_F", "U_B_GhillieSuit", "U_I_GhillieSuit", "U_O_GhillieSuit", "U_O_FullGhillie_lsh", "U_I_GhillieSuit", "U_B_GhillieSuit", "U_O_GhillieSuit", "U_O_GhillieSuit", "U_B_GhillieSuit", "U_B_GhillieSuit", "U_B_T_FullGhillie_tna_F"};

		/*
			Percental Item Spawn Chances of MedicalItems:

			Exitem_bandage_dirty     = 7.46%
			Exitem_bloodbag          = 6.72%
			Exitem_dressing          = 14.93%
			Exitem_antibiotic        = 7.46%
			Exitem_painkillers       = 7.46%
			Exitem_vitamins          = 7.46%
			Exitem_disinfectant      = 7.46%
			Exile_Item_InstaDoc      = 6.72%
			Exile_Item_Defibrillator = 0.75%
			Exile_Item_Bandage       = 22.39%
			Exile_Item_Vishpirin     = 11.19%
		*/
		MedicalItems[] = {"Exitem_disinfectant", "Exile_Item_Bandage", "Exitem_dressing", "Exitem_bandage_dirty", "Exitem_antibiotic", "Exitem_bandage_dirty", "Exitem_dressing", "Exitem_antibiotic", "Exitem_vitamins", "Exitem_disinfectant", "Exitem_painkillers", "Exitem_dressing", "Exitem_dressing", "Exitem_painkillers", "Exile_Item_Bandage", "Exitem_dressing", "Exitem_antibiotic", "Exile_Item_Bandage", "Exile_Item_Bandage", "Exitem_bloodbag", "Exitem_antibiotic", "Exitem_bandage_dirty", "Exitem_dressing", "Exile_Item_Bandage", "Exile_Item_Vishpirin", "Exitem_disinfectant", "Exile_Item_Bandage", "Exile_Item_Vishpirin", "Exitem_dressing", "Exile_Item_Bandage", "Exile_Item_InstaDoc", "Exitem_vitamins", "Exitem_bandage_dirty", "Exitem_dressing", "Exile_Item_Vishpirin", "Exitem_antibiotic", "Exitem_disinfectant", "Exitem_vitamins", "Exitem_disinfectant", "Exitem_disinfectant", "Exile_Item_InstaDoc", "Exitem_dressing", "Exile_Item_Bandage", "Exitem_painkillers", "Exitem_dressing", "Exile_Item_Bandage", "Exile_Item_Bandage", "Exitem_dressing", "Exitem_painkillers", "Exile_Item_Bandage", "Exitem_disinfectant", "Exile_Item_Vishpirin", "Exitem_painkillers", "Exitem_dressing", "Exitem_dressing", "Exile_Item_Vishpirin", "Exile_Item_Bandage", "Exile_Item_InstaDoc", "Exile_Item_Bandage", "Exitem_painkillers", "Exile_Item_Bandage", "Exile_Item_InstaDoc", "Exitem_disinfectant", "Exitem_bloodbag", "Exitem_disinfectant", "Exitem_vitamins", "Exile_Item_Bandage", "Exitem_dressing", "Exile_Item_Bandage", "Exile_Item_InstaDoc", "Exile_Item_Bandage", "Exile_Item_Bandage", "Exile_Item_InstaDoc", "Exile_Item_Bandage", "Exile_Item_Vishpirin", "Exitem_dressing", "Exile_Item_Bandage", "Exile_Item_Defibrillator", "Exile_Item_Bandage", "Exile_Item_InstaDoc", "Exile_Item_InstaDoc", "Exile_Item_Vishpirin", "Exitem_vitamins", "Exile_Item_Bandage", "Exitem_bandage_dirty", "Exitem_vitamins", "Exitem_antibiotic", "Exitem_antibiotic", "Exitem_bloodbag", "Exile_Item_Vishpirin", "Exile_Item_InstaDoc", "Exitem_painkillers", "Exitem_dressing", "Exitem_vitamins", "Exitem_bandage_dirty", "Exile_Item_Vishpirin", "Exile_Item_Vishpirin", "Exitem_bandage_dirty", "Exile_Item_Vishpirin", "Exitem_painkillers", "Exitem_bloodbag", "Exitem_vitamins", "Exitem_bloodbag", "Exitem_dressing", "Exile_Item_Bandage", "Exitem_antibiotic", "Exitem_bloodbag", "Exitem_antibiotic", "Exitem_bloodbag", "Exitem_vitamins", "Exile_Item_Bandage", "Exile_Item_Bandage", "Exitem_bandage_dirty", "Exile_Item_Vishpirin", "Exile_Item_Vishpirin", "Exile_Item_Bandage", "Exile_Item_Bandage", "Exile_Item_Bandage", "Exitem_dressing", "Exitem_painkillers", "Exitem_disinfectant", "Exitem_vitamins", "Exitem_bloodbag", "Exile_Item_Bandage", "Exitem_antibiotic", "Exitem_bloodbag", "Exile_Item_Vishpirin", "Exitem_dressing", "Exile_Item_Vishpirin", "Exitem_painkillers", "Exitem_bandage_dirty", "Exile_Item_Bandage", "Exitem_dressing", "Exitem_bandage_dirty"};

		/*
			Percental Item Spawn Chances of IndustrialItems:

			Exitem_flashlight               = 3.21%
			Exitem_torch                    = 3.21%
			Exitem_gascooker                = 3.21%
			Exitem_engine                   = 1.92%
			Exitem_rotor                    = 1.92%
			Exitem_fueltank                 = 1.92%
			Exitem_windshield               = 1.92%
			Exitem_carbattery               = 1.92%
			Exitem_measuringtape            = 3.21%
			Exile_Item_Knife                = 0.64%
			Exile_Item_Cement               = 3.21%
			Exile_Item_FloodLightKit        = 3.21%
			Exile_Item_PortableGeneratorKit = 3.21%
			Exile_Item_MetalBoard           = 3.21%
			Exile_Item_Foolbox              = 3.21%
			Exile_Item_Sand                 = 3.21%
			Exile_Item_Grinder              = 3.21%
			Exile_Item_MetalScrews          = 3.21%
			Exile_Melee_SledgeHammer        = 6.41%
			Exile_Item_ExtensionCord        = 3.21%
			Exile_Item_LightBulb            = 3.21%
			Exile_Item_WaterCanisterEmpty   = 3.21%
			Exile_Melee_Shovel              = 6.41%
			Exile_Item_JunkMetal            = 3.21%
			Exile_Item_Handsaw              = 6.41%
			Exile_Item_Pliers               = 6.41%
			Exile_Item_ScrewDriver          = 6.41%
			Exile_Melee_Axe                 = 6.41%
		*/
		IndustrialItems[] = {"Exile_Item_Handsaw", "Exile_Item_Handsaw", "Exile_Melee_Shovel", "Exile_Item_MetalScrews", "Exile_Item_Handsaw", "Exile_Item_ScrewDriver", "Exile_Melee_Axe", "Exitem_gascooker", "Exile_Item_ScrewDriver", "Exile_Melee_Axe", "Exile_Item_JunkMetal", "Exile_Melee_Shovel", "Exile_Item_LightBulb", "Exile_Melee_SledgeHammer", "Exile_Item_Foolbox", "Exile_Item_Pliers", "Exile_Item_ExtensionCord", "Exitem_rotor", "Exile_Item_LightBulb", "Exile_Melee_SledgeHammer", "Exitem_gascooker", "Exitem_rotor", "Exile_Item_Handsaw", "Exile_Item_Sand", "Exile_Melee_Shovel", "Exitem_carbattery", "Exitem_fueltank", "Exile_Item_ScrewDriver", "Exitem_torch", "Exile_Item_Pliers", "Exile_Melee_SledgeHammer", "Exile_Melee_Axe", "Exile_Item_Grinder", "Exitem_flashlight", "Exitem_torch", "Exile_Melee_SledgeHammer", "Exitem_engine", "Exitem_flashlight", "Exile_Melee_Axe", "Exile_Item_Pliers", "Exitem_carbattery", "Exile_Melee_SledgeHammer", "Exile_Item_ScrewDriver", "Exile_Item_JunkMetal", "Exile_Melee_Axe", "Exile_Item_Pliers", "Exile_Melee_Axe", "Exile_Item_Foolbox", "Exile_Item_WaterCanisterEmpty", "Exitem_flashlight", "Exile_Melee_Axe", "Exile_Item_MetalBoard", "Exile_Item_Grinder", "Exitem_torch", "Exile_Melee_SledgeHammer", "Exile_Melee_Shovel", "Exile_Item_PortableGeneratorKit", "Exile_Item_FloodLightKit", "Exile_Melee_Axe", "Exile_Melee_SledgeHammer", "Exile_Item_ExtensionCord", "Exitem_fueltank", "Exitem_gascooker", "Exile_Item_Grinder", "Exile_Item_FloodLightKit", "Exile_Item_MetalScrews", "Exile_Item_ScrewDriver", "Exile_Item_Knife", "Exitem_measuringtape", "Exile_Item_PortableGeneratorKit", "Exile_Item_ExtensionCord", "Exitem_windshield", "Exile_Item_ScrewDriver", "Exile_Item_Cement", "Exile_Item_Grinder", "Exitem_gascooker", "Exile_Item_MetalBoard", "Exile_Item_Pliers", "Exitem_windshield", "Exile_Item_Cement", "Exile_Item_Sand", "Exile_Item_ExtensionCord", "Exile_Item_ScrewDriver", "Exile_Item_Cement", "Exile_Item_MetalBoard", "Exile_Item_JunkMetal", "Exile_Item_Pliers", "Exile_Item_Sand", "Exile_Item_PortableGeneratorKit", "Exile_Item_Handsaw", "Exitem_engine", "Exile_Melee_Axe", "Exile_Item_Handsaw", "Exitem_torch", "Exile_Item_JunkMetal", "Exile_Item_Sand", "Exile_Item_JunkMetal", "Exitem_measuringtape", "Exitem_measuringtape", "Exile_Item_Handsaw", "Exile_Melee_Shovel", "Exile_Item_ScrewDriver", "Exile_Melee_Shovel", "Exile_Item_Pliers", "Exile_Item_Handsaw", "Exile_Melee_Shovel", "Exile_Melee_Axe", "Exile_Item_WaterCanisterEmpty", "Exile_Item_LightBulb", "Exitem_fueltank", "Exile_Item_FloodLightKit", "Exitem_torch", "Exile_Item_PortableGeneratorKit", "Exile_Item_WaterCanisterEmpty", "Exitem_measuringtape", "Exile_Item_FloodLightKit", "Exitem_flashlight", "Exile_Item_Cement", "Exile_Melee_Shovel", "Exile_Item_ScrewDriver", "Exitem_measuringtape", "Exile_Item_Foolbox", "Exile_Item_LightBulb", "Exile_Item_MetalBoard", "Exile_Melee_SledgeHammer", "Exile_Item_WaterCanisterEmpty", "Exile_Item_LightBulb", "Exile_Item_Pliers", "Exile_Item_Foolbox", "Exile_Melee_Shovel", "Exile_Item_PortableGeneratorKit", "Exile_Item_Pliers", "Exitem_carbattery", "Exile_Item_WaterCanisterEmpty", "Exile_Item_Cement", "Exitem_gascooker", "Exitem_engine", "Exile_Item_Pliers", "Exile_Melee_Shovel", "Exile_Item_MetalScrews", "Exile_Item_MetalBoard", "Exile_Item_ExtensionCord", "Exitem_windshield", "Exile_Item_FloodLightKit", "Exitem_flashlight", "Exile_Item_Handsaw", "Exile_Item_MetalScrews", "Exitem_rotor", "Exile_Item_Foolbox", "Exile_Item_ScrewDriver", "Exile_Item_MetalScrews", "Exile_Item_Grinder", "Exile_Item_Sand", "Exile_Melee_SledgeHammer", "Exile_Item_Handsaw", "Exile_Melee_SledgeHammer"};

		/*
			Percental Item Spawn Chances of Vehicle:

			Exile_Item_FuelCanisterFull  = 35.71%
			Exile_Item_FuelCanisterEmpty = 35.71%
			Exile_Item_DuctTape          = 14.29%
			Exile_Item_Rope              = 14.29%
		*/
		Vehicle[] = {"Exile_Item_FuelCanisterFull", "Exile_Item_DuctTape", "Exile_Item_DuctTape", "Exile_Item_FuelCanisterEmpty", "Exile_Item_FuelCanisterFull", "Exile_Item_Rope", "Exile_Item_FuelCanisterFull", "Exile_Item_FuelCanisterFull", "Exile_Item_FuelCanisterFull", "Exile_Item_FuelCanisterEmpty", "Exile_Item_FuelCanisterEmpty", "Exile_Item_FuelCanisterEmpty", "Exile_Item_Rope", "Exile_Item_FuelCanisterFull", "Exile_Item_Rope", "Exile_Item_Rope", "Exile_Item_FuelCanisterEmpty", "Exile_Item_DuctTape", "Exile_Item_FuelCanisterFull", "Exile_Item_FuelCanisterFull", "Exile_Item_FuelCanisterEmpty", "Exile_Item_DuctTape", "Exile_Item_FuelCanisterFull", "Exile_Item_Rope", "Exile_Item_FuelCanisterFull", "Exile_Item_FuelCanisterFull", "Exile_Item_FuelCanisterEmpty", "Exile_Item_FuelCanisterEmpty", "Exile_Item_FuelCanisterFull", "Exile_Item_FuelCanisterEmpty", "Exile_Item_FuelCanisterEmpty", "Exile_Item_FuelCanisterEmpty", "Exile_Item_FuelCanisterEmpty", "Exile_Item_Rope", "Exile_Item_FuelCanisterEmpty", "Exile_Item_FuelCanisterFull", "Exile_Item_FuelCanisterEmpty", "Exile_Item_FuelCanisterFull", "Exile_Item_FuelCanisterEmpty", "Exile_Item_FuelCanisterFull", "Exile_Item_FuelCanisterEmpty", "Exile_Item_FuelCanisterEmpty", "Exile_Item_Rope", "Exile_Item_DuctTape", "Exile_Item_FuelCanisterFull", "Exile_Item_Rope", "Exile_Item_FuelCanisterFull", "Exile_Item_FuelCanisterEmpty", "Exile_Item_DuctTape", "Exile_Item_FuelCanisterEmpty", "Exile_Item_FuelCanisterFull", "Exile_Item_FuelCanisterFull", "Exile_Item_FuelCanisterFull", "Exile_Item_FuelCanisterFull", "Exile_Item_DuctTape", "Exile_Item_FuelCanisterFull", "Exile_Item_Rope", "Exile_Item_DuctTape", "Exile_Item_FuelCanisterFull", "Exile_Item_Rope", "Exile_Item_DuctTape", "Exile_Item_FuelCanisterFull", "Exile_Item_FuelCanisterEmpty", "Exile_Item_DuctTape", "Exile_Item_FuelCanisterEmpty", "Exile_Item_FuelCanisterFull", "Exile_Item_FuelCanisterEmpty", "Exile_Item_FuelCanisterEmpty", "Exile_Item_FuelCanisterEmpty", "Exile_Item_FuelCanisterEmpty"};

		/*
			Percental Item Spawn Chances of Chemlights:

			Chemlight_blue   = 25.00%
			Chemlight_green  = 25.00%
			Chemlight_red    = 25.00%
			Chemlight_yellow = 25.00%
		*/
		Chemlights[] = {"Chemlight_blue", "Chemlight_green", "Chemlight_yellow", "Chemlight_red"};

		/*
			Percental Item Spawn Chances of RoadFlares:

			FlareGreen_F  = 25.00%
			FlareRed_F    = 25.00%
			FlareWhite_F  = 25.00%
			FlareYellow_F = 25.00%
		*/
		RoadFlares[] = {"FlareYellow_F", "FlareWhite_F", "FlareGreen_F", "FlareRed_F"};

		/*
			Percental Item Spawn Chances of SmokeGrenades:

			SmokeShell       = 14.29%
			SmokeShellRed    = 14.29%
			SmokeShellGreen  = 14.29%
			SmokeShellYellow = 14.29%
			SmokeShellPurple = 14.29%
			SmokeShellBlue   = 14.29%
			SmokeShellOrange = 14.29%
		*/
		SmokeGrenades[] = {"SmokeShellGreen", "SmokeShellOrange", "SmokeShellBlue", "SmokeShellRed", "SmokeShellYellow", "SmokeShell", "SmokeShellPurple"};

		/*
			Percental Item Spawn Chances of Restraints:

			Exile_Item_ZipTie = 100.00%
		*/
		Restraints[] = {"Exile_Item_ZipTie"};

		/*
			Percental Item Spawn Chances of Electronics:

			Exile_Item_ThermalScannerPro   = 2.33%
			Exile_Item_Laptop              = 23.26%
			Exile_Item_CordlessScrewdriver = 37.21%
			Exile_Item_Codelock            = 9.30%
			Exile_Item_BaseCameraKit       = 18.60%
			Exitem_documents               = 9.30%
		*/
		Electronics[] = {"Exile_Item_Laptop", "Exile_Item_Codelock", "Exile_Item_BaseCameraKit", "Exile_Item_Laptop", "Exile_Item_CordlessScrewdriver", "Exitem_documents", "Exile_Item_Laptop", "Exile_Item_Laptop", "Exile_Item_Laptop", "Exile_Item_Laptop", "Exile_Item_CordlessScrewdriver", "Exile_Item_BaseCameraKit", "Exile_Item_BaseCameraKit", "Exile_Item_Codelock", "Exile_Item_BaseCameraKit", "Exitem_documents", "Exitem_documents", "Exitem_documents", "Exile_Item_CordlessScrewdriver", "Exile_Item_Laptop", "Exile_Item_BaseCameraKit", "Exile_Item_BaseCameraKit", "Exile_Item_CordlessScrewdriver", "Exile_Item_BaseCameraKit", "Exile_Item_Codelock", "Exile_Item_Laptop", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_Laptop", "Exile_Item_BaseCameraKit", "Exile_Item_Laptop", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_BaseCameraKit", "Exile_Item_CordlessScrewdriver", "Exile_Item_BaseCameraKit", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_Laptop", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_Laptop", "Exitem_documents", "Exile_Item_BaseCameraKit", "Exile_Item_CordlessScrewdriver", "Exitem_documents", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_Codelock", "Exile_Item_ThermalScannerPro", "Exile_Item_Laptop", "Exile_Item_CordlessScrewdriver", "Exile_Item_Laptop", "Exile_Item_BaseCameraKit", "Exile_Item_CordlessScrewdriver", "Exile_Item_BaseCameraKit", "Exile_Item_CordlessScrewdriver", "Exile_Item_Laptop", "Exile_Item_CordlessScrewdriver", "Exile_Item_Laptop", "Exile_Item_CordlessScrewdriver", "Exitem_documents", "Exile_Item_Laptop", "Exile_Item_CordlessScrewdriver", "Exile_Item_ThermalScannerPro", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_Laptop", "Exile_Item_Codelock", "Exitem_documents", "Exile_Item_CordlessScrewdriver", "Exile_Item_Laptop", "Exile_Item_BaseCameraKit", "Exile_Item_BaseCameraKit", "Exile_Item_Codelock", "Exile_Item_ThermalScannerPro", "Exile_Item_CordlessScrewdriver", "Exile_Item_BaseCameraKit", "Exile_Item_BaseCameraKit", "Exile_Item_BaseCameraKit", "Exile_Item_Laptop", "Exile_Item_Codelock", "Exile_Item_Laptop", "Exitem_documents", "Exile_Item_ThermalScannerPro", "Exile_Item_CordlessScrewdriver", "Exile_Item_Laptop", "Exile_Item_Laptop", "Exile_Item_Laptop", "Exile_Item_BaseCameraKit", "Exile_Item_BaseCameraKit", "Exile_Item_CordlessScrewdriver", "Exitem_documents", "Exile_Item_Codelock", "Exitem_documents", "Exitem_documents", "Exile_Item_Codelock", "Exile_Item_CordlessScrewdriver", "Exile_Item_Codelock", "Exile_Item_CordlessScrewdriver", "Exile_Item_Laptop", "Exile_Item_BaseCameraKit", "Exile_Item_BaseCameraKit", "Exile_Item_Codelock", "Exile_Item_CordlessScrewdriver", "Exile_Item_Laptop", "Exile_Item_Laptop", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_Laptop", "Exile_Item_BaseCameraKit", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_Codelock", "Exile_Item_Laptop", "Exile_Item_Laptop", "Exile_Item_BaseCameraKit", "Exile_Item_CordlessScrewdriver", "Exile_Item_Codelock", "Exile_Item_CordlessScrewdriver", "Exile_Item_BaseCameraKit", "Exile_Item_CordlessScrewdriver", "Exile_Item_Laptop", "Exile_Item_BaseCameraKit", "Exile_Item_Codelock", "Exile_Item_BaseCameraKit", "Exile_Item_Laptop", "Exile_Item_Laptop", "Exile_Item_CordlessScrewdriver", "Exile_Item_BaseCameraKit", "Exile_Item_Codelock", "Exile_Item_Laptop", "Exile_Item_Codelock", "Exile_Item_BaseCameraKit", "Exile_Item_Laptop", "Exile_Item_CordlessScrewdriver", "Exile_Item_Laptop", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_BaseCameraKit", "Exile_Item_Laptop", "Exile_Item_ThermalScannerPro", "Exile_Item_Laptop", "Exile_Item_CordlessScrewdriver", "Exile_Item_BaseCameraKit", "Exitem_documents", "Exitem_documents", "Exile_Item_Laptop", "Exile_Item_Laptop", "Exitem_documents", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_Laptop", "Exile_Item_BaseCameraKit", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exitem_documents", "Exile_Item_Laptop", "Exile_Item_Laptop", "Exile_Item_Codelock", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exitem_documents", "Exitem_documents", "Exile_Item_CordlessScrewdriver", "Exile_Item_BaseCameraKit", "Exile_Item_Laptop", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exitem_documents", "Exile_Item_CordlessScrewdriver", "Exile_Item_BaseCameraKit", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_BaseCameraKit", "Exile_Item_CordlessScrewdriver", "Exile_Item_BaseCameraKit", "Exile_Item_BaseCameraKit", "Exile_Item_Laptop", "Exitem_documents", "Exile_Item_CordlessScrewdriver", "Exile_Item_BaseCameraKit", "Exile_Item_BaseCameraKit", "Exile_Item_Codelock", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_Codelock", "Exile_Item_Laptop", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_Codelock", "Exile_Item_CordlessScrewdriver", "Exile_Item_BaseCameraKit", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_Laptop", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_Laptop", "Exile_Item_CordlessScrewdriver", "Exile_Item_Laptop", "Exile_Item_Laptop"};

		/*
			Percental Item Spawn Chances of Trash:

			Exitem_can_crushed            = 6.25%
			Exitem_camera                 = 6.25%
			Exitem_pillow_flannel         = 6.25%
			Exitem_pillow                 = 6.25%
			Exitem_pencil                 = 6.25%
			Exitem_cloth                  = 6.25%
			Exitem_airhorn                = 6.25%
			Exitem_nails                  = 6.25%
			Exitem_bucket                 = 6.25%
			Exile_Item_Can_Empty          = 6.25%
			Exile_Item_ToiletPaper        = 6.25%
			Exile_Item_PlasticBottleEmpty = 6.25%
			Exile_Item_Magazine01         = 6.25%
			Exile_Item_Magazine02         = 6.25%
			Exile_Item_Magazine03         = 6.25%
			Exile_Item_Magazine04         = 6.25%
		*/
		Trash[] = {"Exitem_bucket", "Exile_Item_Can_Empty", "Exile_Item_PlasticBottleEmpty", "Exile_Item_Magazine01", "Exitem_camera", "Exile_Item_Magazine02", "Exitem_cloth", "Exile_Item_ToiletPaper", "Exitem_nails", "Exile_Item_Magazine04", "Exitem_pillow", "Exitem_pencil", "Exitem_can_crushed", "Exile_Item_Magazine03", "Exitem_pillow_flannel", "Exitem_airhorn"};

		/*
			Percental Item Spawn Chances of Unused:

			Exile_Item_CordlessScrewdriver = 14.29%
			Exile_Item_FireExtinguisher    = 14.29%
			Exile_Item_OilCanister         = 14.29%
			Exile_Item_Hammer              = 14.29%
			Exile_Item_Carwheel            = 14.29%
			Exile_Item_SleepingMat         = 14.29%
			Exile_Item_Wrench              = 14.29%
		*/
		Unused[] = {"Exile_Item_Hammer", "Exile_Item_Carwheel", "Exile_Item_OilCanister", "Exile_Item_SleepingMat", "Exile_Item_FireExtinguisher", "Exile_Item_CordlessScrewdriver", "Exile_Item_Wrench"};
	};
};