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
		CivillianLowerClass[] = {"CivilianWeapons", "MedicalItems", "Drinks", "CivilianItems", "Chemlights", "CivilianHeadgear", "Trash", "CivilianHeadgear", "CivilianVests", "Food", "CivilianVests", "MedicalItems", "CivilianVests", "Drinks", "CivilianWeapons", "Chemlights", "CivilianHeadgear", "Food", "CivilianWeapons", "Food", "Drinks", "Trash", "CivilianItems", "RoadFlares", "Drinks", "CivilianClothing", "CivilianClothing", "CivilianBackpacks", "Drinks", "Food", "Trash", "Drinks", "Drinks", "CivilianHeadgear", "CivilianItems", "MedicalItems", "CivilianBackpacks", "CivilianHeadgear", "Trash", "CivilianClothing", "CivilianVests", "CivilianWeapons", "Drinks", "Chemlights", "Food", "CivilianWeapons", "CivilianClothing", "CivilianClothing", "MedicalItems", "CivilianClothing", "CivilianWeapons", "CivilianItems", "CivilianItems", "CivilianItems", "CivilianItems", "CivilianItems", "CivilianBackpacks", "Trash", "Food", "CivilianVests", "MedicalItems", "CivilianBackpacks", "Food", "RoadFlares", "CivilianBackpacks", "Drinks", "CivilianWeapons", "CivilianHeadgear", "CivilianVests", "CivilianWeapons", "Food", "CivilianBackpacks", "RoadFlares", "CivilianWeapons", "Food", "CivilianHeadgear", "CivilianBackpacks", "CivilianVests", "CivilianClothing", "Chemlights", "Chemlights", "RoadFlares", "RoadFlares", "CivilianItems", "CivilianBackpacks", "CivilianBackpacks", "CivilianBackpacks", "CivilianVests", "CivilianHeadgear", "CivilianVests", "CivilianHeadgear", "CivilianVests", "Drinks", "CivilianItems", "Food", "CivilianClothing", "CivilianClothing", "CivilianClothing", "CivilianHeadgear", "CivilianWeapons"};

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
		CivillianUpperClass[] = {"Chemlights", "RifleAttachments", "Trash", "GuerillaHeadgear", "Drinks", "GuerillaItems", "MedicalItems", "MedicalItems", "CivilianWeapons", "GuerillaHeadgear", "Trash", "GuerillaClothing", "Drinks", "GuerillaItems", "RifleAttachments", "GuerillaHeadgear", "RoadFlares", "Chemlights", "GuerillaBackpacks", "Food", "GuerillaVests", "MedicalItems", "GuerillaClothing", "Food", "Food", "Drinks", "MedicalItems", "MedicalItems", "RifleAttachments", "Trash", "Trash", "Food", "MedicalItems", "MedicalItems", "Chemlights", "Drinks", "RoadFlares", "GuerillaVests", "Drinks", "Chemlights", "GuerillaHeadgear", "Chemlights", "GuerillaItems", "CivilianWeapons", "GuerillaBackpacks", "GuerillaVests", "RoadFlares", "GuerillaBackpacks", "Food", "Chemlights", "Drinks", "Trash", "GuerillaBackpacks", "GuerillaVests", "Drinks", "GuerillaClothing", "Chemlights", "CivilianWeapons", "GuerillaItems", "RoadFlares", "GuerillaItems", "RoadFlares", "Chemlights", "Trash", "GuerillaClothing", "Food", "RifleAttachments", "RoadFlares", "Food", "Trash", "GuerillaVests", "Food", "MedicalItems", "GuerillaClothing", "GuerillaHeadgear", "Drinks", "Food", "Chemlights", "Trash", "GuerillaBackpacks", "Drinks", "Trash", "MedicalItems", "CivilianWeapons", "Trash", "MedicalItems", "Chemlights", "RifleAttachments", "RoadFlares", "CivilianWeapons", "Food", "RoadFlares", "Drinks", "RoadFlares", "RoadFlares"};

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
		Shop[] = {"CivilianClothing", "CivilianBackpacks", "Food", "Food", "Drinks", "Trash", "Food", "MedicalItems", "Drinks", "CivilianVests", "Trash", "Food", "CivilianClothing", "MedicalItems", "Drinks", "Trash", "Drinks", "Drinks", "CivilianItems", "CivilianVests", "Drinks", "CivilianBackpacks", "Drinks", "CivilianClothing", "Food", "CivilianHeadgear", "Food", "Food", "CivilianBackpacks", "Food", "MedicalItems", "RoadFlares", "Drinks", "CivilianHeadgear", "RoadFlares", "CivilianHeadgear", "Chemlights", "Drinks", "RoadFlares", "MedicalItems", "CivilianWeapons", "CivilianVests", "Chemlights", "Food", "CivilianBackpacks", "Drinks", "RoadFlares", "Drinks", "RoadFlares", "Trash", "CivilianVests", "Food", "Food", "Trash", "Drinks", "Food", "CivilianHeadgear", "Drinks", "Food", "Chemlights", "CivilianItems", "Drinks", "Drinks", "Trash", "Drinks", "Drinks", "Food", "Drinks", "Food", "Drinks", "Drinks", "Food", "Food", "CivilianClothing", "RoadFlares", "MedicalItems", "CivilianItems", "Chemlights", "Drinks", "Food", "Food", "CivilianVests", "Food", "Food", "Drinks", "CivilianBackpacks", "Trash", "Food", "Chemlights", "Food", "Drinks", "Food", "RoadFlares", "CivilianItems", "Drinks", "Food", "Drinks", "Drinks", "Chemlights", "Chemlights", "CivilianHeadgear", "CivilianWeapons", "Chemlights", "Drinks", "Food", "Trash", "Drinks", "RoadFlares", "CivilianWeapons", "Chemlights", "CivilianWeapons", "Food", "RoadFlares", "Trash", "Food", "CivilianItems", "Drinks", "Drinks", "Drinks", "Food", "Drinks", "Chemlights", "Electronics", "RoadFlares", "Food", "Food", "Drinks", "Drinks", "Food", "Food", "Drinks", "CivilianClothing", "Trash", "Food", "CivilianWeapons", "Food"};

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
		Industrial[] = {"RoadFlares", "Drinks", "RoadFlares", "Vehicle", "IndustrialItems", "RoadFlares", "MedicalItems", "Chemlights", "RoadFlares", "Chemlights", "IndustrialItems", "Vehicle", "Chemlights", "Vehicle", "RoadFlares", "Food", "IndustrialItems", "Food", "MedicalItems", "Drinks", "Chemlights", "RoadFlares", "Vehicle", "Food", "Vehicle", "Chemlights", "RoadFlares", "Vehicle", "IndustrialItems", "Food", "Drinks", "RoadFlares", "Drinks", "RoadFlares", "MedicalItems", "Vehicle", "Vehicle", "Chemlights", "Vehicle", "RoadFlares", "Chemlights", "MedicalItems", "Vehicle", "RoadFlares", "IndustrialItems", "Drinks", "IndustrialItems", "RoadFlares", "Chemlights", "Chemlights", "Chemlights", "Food", "RoadFlares", "Food", "Vehicle", "Chemlights", "Chemlights", "IndustrialItems", "Drinks", "Food", "RoadFlares", "RoadFlares", "IndustrialItems", "Drinks", "Vehicle", "Chemlights", "Food", "Vehicle", "IndustrialItems", "IndustrialItems", "Chemlights", "Vehicle", "Food", "RoadFlares", "MedicalItems", "Vehicle", "SmokeGrenades", "MedicalItems", "Chemlights", "Food", "IndustrialItems", "Chemlights", "Vehicle", "Food", "RoadFlares", "Food", "Food", "MedicalItems", "Chemlights", "IndustrialItems", "RoadFlares", "Vehicle", "Chemlights", "IndustrialItems", "RoadFlares", "Vehicle", "Vehicle", "RoadFlares", "Drinks", "Chemlights", "Food", "RoadFlares", "IndustrialItems", "RoadFlares", "RoadFlares", "Chemlights", "IndustrialItems", "RoadFlares", "Food", "Vehicle", "Drinks", "IndustrialItems", "SmokeGrenades", "Vehicle", "Vehicle", "Drinks", "Chemlights", "SmokeGrenades", "IndustrialItems", "MedicalItems", "Drinks", "MedicalItems", "Vehicle", "RoadFlares", "Chemlights", "RoadFlares", "RoadFlares", "IndustrialItems", "IndustrialItems", "Chemlights", "IndustrialItems", "RoadFlares", "Drinks", "SmokeGrenades", "IndustrialItems", "Chemlights", "Chemlights", "SmokeGrenades", "Chemlights", "Chemlights", "Drinks", "Vehicle", "Drinks", "MedicalItems", "IndustrialItems", "Vehicle", "Drinks", "Chemlights", "RoadFlares", "IndustrialItems", "RoadFlares", "Chemlights", "IndustrialItems", "IndustrialItems", "Chemlights"};

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
		Factories[] = {"Drinks", "RoadFlares", "Chemlights", "GuerillaBackpacksBackpacks", "Vehicle", "Vehicle", "Food", "Food", "Drinks", "Drinks", "GuerillaHeadgear", "GuerillaClothing", "Drinks", "Vehicle", "GuerillaVests", "RifleAttachments", "GuerillaBackpacksBackpacks", "Vehicle", "Chemlights", "MedicalItems", "Chemlights", "Food", "Vehicle", "Vehicle", "Chemlights", "Chemlights", "Chemlights", "CivilianWeapons", "Food", "RoadFlares", "RoadFlares", "CivilianWeapons", "GuerillaHeadgear", "Drinks", "GuerillaClothing", "Chemlights", "RifleAttachments", "GuerillaBackpacksBackpacks", "Vehicle", "GuerillaVests", "GuerillaBackpacksBackpacks", "LMG", "RoadFlares", "GuerillaHeadgear", "CivilianWeapons", "Vehicle", "Food", "CivilianWeapons", "Drinks", "Chemlights", "Vehicle", "Vehicle", "CivilianWeapons", "Vehicle", "Chemlights", "GuerillaClothing", "RoadFlares", "GuerillaHeadgear", "RoadFlares", "Food", "Chemlights", "GuerillaVests", "GuerillaClothing", "Chemlights", "Vehicle", "Food", "RoadFlares", "Drinks", "GuerillaBackpacksBackpacks", "Chemlights", "Chemlights", "Vehicle", "RoadFlares", "GuerillaVests", "Vehicle", "RoadFlares", "Vehicle", "Vehicle", "Chemlights", "GuerillaClothing", "Vehicle", "GuerillaBackpacksBackpacks", "GuerillaClothing", "Food", "GuerillaClothing", "GuerillaBackpacksBackpacks", "Chemlights", "Chemlights", "Drinks", "GuerillaVests", "GuerillaVests", "GuerillaClothing", "MedicalItems", "Vehicle", "Chemlights", "GuerillaVests", "RoadFlares", "GuerillaBackpacksBackpacks", "Drinks", "Food", "Vehicle", "Chemlights", "CivilianWeapons", "RifleAttachments", "Food", "Chemlights", "GuerillaBackpacksBackpacks", "Vehicle", "GuerillaBackpacksBackpacks", "Chemlights", "Drinks", "Vehicle", "GuerillaHeadgear", "CivilianWeapons", "Drinks", "GuerillaHeadgear", "GuerillaHeadgear", "MedicalItems", "GuerillaClothing", "RifleAttachments", "Vehicle", "Food", "GuerillaHeadgear", "RoadFlares", "Chemlights", "Drinks", "Food", "MedicalItems", "RifleAttachments", "Vehicle", "Chemlights", "Chemlights", "Chemlights", "CivilianWeapons", "Chemlights", "GuerillaVests", "CivilianWeapons", "Food", "MedicalItems", "Food", "RoadFlares", "GuerillaClothing", "MedicalItems", "CivilianWeapons", "MedicalItems", "Chemlights", "Chemlights", "Vehicle", "Chemlights", "Chemlights", "GuerillaVests", "Vehicle", "Drinks", "GuerillaHeadgear", "MedicalItems", "MedicalItems", "Chemlights", "Vehicle", "Vehicle", "Vehicle", "RoadFlares", "Food", "MedicalItems", "Vehicle", "GuerillaHeadgear", "Drinks", "RoadFlares", "Vehicle", "LMGAmmo", "Drinks", "RoadFlares", "GuerillaVests"};

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
		VehicleService[] = {"Pistols", "CivilianBackpacks", "Drinks", "Chemlights", "PistolAmmo", "MedicalItems", "Food", "RoadFlares", "PistolAmmo", "Drinks", "CivilianHeadgear", "Unused", "Trash", "Vehicle", "Pistols", "RoadFlares", "Drinks", "Drinks", "Drinks", "Food", "Chemlights", "Unused", "Drinks", "CivilianBackpacks", "Unused", "Vehicle", "Vehicle", "PistolAmmo", "Vehicle", "CivilianItems", "Vehicle", "Food", "Drinks", "Unused", "Unused", "Trash", "RoadFlares", "Drinks", "Drinks", "Drinks", "Pistols", "Drinks", "Food", "CivilianClothing", "Trash", "Drinks", "Food", "Drinks", "PistolAmmo", "Drinks", "Pistols", "MedicalItems", "Drinks", "Drinks", "Vehicle", "Vehicle", "Unused", "Trash", "CivilianBackpacks", "Drinks", "Vehicle", "PistolAmmo", "PistolAmmo", "RoadFlares", "Vehicle", "Food", "MedicalItems", "CivilianClothing", "Pistols", "RoadFlares", "Chemlights", "RoadFlares", "Unused", "Trash", "Unused", "MedicalItems", "Food", "Drinks", "Vehicle", "Vehicle", "CivilianItems", "Food", "MedicalItems", "CivilianItems", "Vehicle", "Vehicle", "Trash", "Food", "MedicalItems", "Vehicle", "Trash", "Vehicle", "Chemlights", "CivilianBackpacks", "Vehicle", "CivilianHeadgear", "CivilianVests", "Vehicle", "PistolAmmo", "Pistols", "Vehicle", "Trash", "CivilianVests", "CivilianClothing", "Chemlights", "Vehicle", "Food", "MedicalItems", "CivilianClothing", "CivilianVests", "CivilianItems", "CivilianBackpacks", "MedicalItems", "CivilianItems", "Food", "Unused", "Unused", "Food", "Unused", "Food", "CivilianVests", "Vehicle", "Food", "Chemlights", "RoadFlares", "CivilianHeadgear", "Food", "Food", "Food", "Unused", "CivilianVests", "Unused", "Vehicle", "Drinks", "Pistols", "Chemlights", "Food", "Drinks", "MedicalItems", "CivilianHeadgear", "Food", "Vehicle", "Drinks", "Vehicle", "Vehicle", "Trash", "Food", "Vehicle", "Vehicle", "Unused", "Vehicle", "CivilianClothing", "Drinks", "RoadFlares", "PistolAmmo", "Unused", "Vehicle", "Pistols", "Chemlights", "Chemlights", "Drinks", "Food", "Drinks", "Vehicle", "Pistols", "Trash", "CivilianHeadgear", "Food", "RoadFlares", "Drinks", "Food", "RoadFlares", "PistolAmmo", "Vehicle", "Food", "Pistols", "MedicalItems", "PistolAmmo", "Food", "Chemlights"};

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
		Military[] = {"MedicalItems", "Rifles", "MilitaryClothing", "Vehicle", "Rifles", "SniperAttachments", "MilitaryClothing", "RoadFlares", "SniperAmmo", "RoadFlares", "Chemlights", "RoadFlares", "MilitaryVests", "MilitaryVests", "Trash", "Trash", "SmokeGrenades", "Chemlights", "Chemlights", "MilitaryHeadgear", "Rifles", "RifleAttachments", "RifleAmmo", "Restraints", "PistolAmmo", "LMG", "Chemlights", "MilitaryHeadgear", "Chemlights", "Restraints", "Restraints", "MilitaryBackpacks", "RifleAttachments", "RifleAttachments", "Rifles", "RifleAttachments", "Restraints", "Rifles", "RifleAttachments", "MilitaryHeadgear", "SmokeGrenades", "Chemlights", "LMG", "SmokeGrenades", "Restraints", "SMG", "MilitaryClothing", "RifleAmmo", "IndustrialItems", "Vehicle", "MedicalItems", "IndustrialItems", "Vehicle", "SmokeGrenades", "SMGAmmo", "Snipers", "Restraints", "RoadFlares", "MilitaryClothing", "MilitaryClothing", "Chemlights", "LMG", "Rifles", "LMGAmmo", "MilitaryHeadgear", "Restraints", "RifleAmmo", "MilitaryBackpacks", "LMGAmmo", "RoadFlares", "LMG", "Restraints", "MedicalItems", "LMGAmmo", "MedicalItems", "Vehicle", "SmokeGrenades", "Trash", "RoadFlares", "Rifles", "Chemlights", "Electronics", "MilitaryBackpacks", "Pistols", "RifleAttachments", "SMG", "RoadFlares", "SMG", "Trash", "MedicalItems", "RifleAttachments", "MilitaryBackpacks", "LMG", "Chemlights", "PistolAmmo", "LMG", "MedicalItems", "Chemlights", "SmokeGrenades", "RifleAttachments", "RifleAttachments", "IndustrialItems", "SMG", "LMG", "MilitaryClothing", "MilitaryVests", "HandGrenades", "SmokeGrenades", "IndustrialItems", "Electronics", "RifleAmmo", "SniperAttachments", "SmokeGrenades", "Vehicle", "RoadFlares", "RoadFlares", "RifleAttachments", "SmokeGrenades", "MilitaryVests", "LMGAmmo", "Vehicle", "RoadFlares", "SmokeGrenades", "RoadFlares", "Rifles", "RifleAmmo", "Trash", "Vehicle", "RifleAmmo", "RifleAttachments", "SmokeGrenades", "Trash", "RifleAttachments", "Restraints", "MilitaryClothing", "MedicalItems", "Rifles", "RoadFlares", "SniperAttachments", "SmokeGrenades", "RifleAttachments", "HandGrenades", "Trash", "Rifles", "Pistols", "SmokeGrenades", "LMG", "LMG", "MilitaryVests", "Vehicle", "Trash", "Chemlights", "RifleAttachments", "Snipers", "Rifles", "RifleAmmo", "SMG", "RifleAmmo", "Chemlights", "RoadFlares", "Vehicle", "Restraints", "Trash", "SniperAttachments", "MilitaryBackpacks", "RifleAttachments", "Rifles", "RoadFlares", "Restraints", "MilitaryHeadgear", "Vehicle", "RifleAttachments", "MedicalItems", "SMGAmmo", "MilitaryVests", "RifleAttachments", "Rifles", "MilitaryBackpacks", "MilitaryVests", "Snipers", "SmokeGrenades", "Rifles", "Rifles", "SmokeGrenades", "Trash", "LMGAmmo", "Restraints", "MilitaryVests", "LMGAmmo", "Vehicle", "Restraints", "LMGAmmo", "Chemlights", "Restraints", "IndustrialItems", "RifleAmmo", "SniperAttachments", "Rifles", "SmokeGrenades", "MilitaryClothing", "RifleAttachments", "MedicalItems", "RoadFlares", "PistolAmmo", "Trash", "LMGAmmo", "Trash", "SMGAmmo", "RoadFlares", "MedicalItems", "Rifles", "MedicalItems", "MedicalItems", "MilitaryClothing", "Snipers", "HandGrenades", "Chemlights", "MilitaryVests", "RoadFlares", "LMGAmmo", "Restraints", "Vehicle", "Rifles", "Restraints", "Vehicle", "Chemlights", "RifleAmmo", "MilitaryBackpacks", "RifleAmmo", "SniperAmmo", "MilitaryBackpacks", "RifleAttachments", "SniperAttachments", "Chemlights", "Vehicle", "MilitaryHeadgear", "IndustrialItems", "SMGAmmo", "Chemlights", "LMG", "MedicalItems", "MilitaryVests", "Vehicle", "SmokeGrenades", "MedicalItems", "MilitaryBackpacks", "LMG", "Trash", "SmokeGrenades", "RifleAmmo", "IndustrialItems", "MilitaryClothing", "Restraints", "Vehicle", "MedicalItems", "MedicalItems", "SMG", "SmokeGrenades", "Rifles", "Vehicle", "SmokeGrenades", "MedicalItems", "SMGAmmo", "Vehicle", "Rifles", "Vehicle", "RifleAmmo", "MedicalItems", "RoadFlares", "MilitaryHeadgear", "Rifles", "SmokeGrenades", "Chemlights", "RifleAmmo", "PistolAmmo", "MedicalItems", "Chemlights", "RifleAmmo", "MedicalItems", "MilitaryBackpacks", "SMG", "Trash", "Rifles", "Restraints", "SMGAmmo", "SMGAmmo", "Restraints", "SMG", "RifleAmmo", "RifleAttachments", "SmokeGrenades", "RifleAmmo", "SMG", "LMGAmmo", "MedicalItems", "SmokeGrenades", "Chemlights", "RifleAttachments", "Restraints", "RifleAmmo", "HandGrenades", "MilitaryClothing", "RifleAttachments", "RifleAmmo", "MedicalItems", "RifleAmmo", "IndustrialItems", "MilitaryHeadgear", "RoadFlares", "MilitaryClothing", "MilitaryHeadgear", "Vehicle", "Explosives", "RifleAmmo", "MedicalItems", "Restraints", "MedicalItems", "Pistols", "Restraints", "SniperAttachments", "MedicalItems", "Vehicle", "MilitaryBackpacks", "PistolAmmo", "Rifles", "Pistols", "Rifles", "Trash", "Trash", "Snipers", "HandGrenades", "Pistols", "RifleAmmo", "SniperAmmo", "Pistols", "Chemlights", "MedicalItems", "PistolAmmo", "SniperAttachments", "Vehicle", "RoadFlares", "Restraints", "PistolAmmo", "Chemlights", "SniperAmmo", "Pistols", "SmokeGrenades", "RifleAmmo", "Vehicle", "Chemlights", "Pistols", "LMGAmmo", "LMG", "MilitaryClothing", "SmokeGrenades", "MilitaryVests", "MilitaryHeadgear", "Rifles", "RoadFlares", "LMG", "Rifles", "Restraints", "RoadFlares", "SniperAttachments", "Restraints", "RifleAmmo", "RoadFlares", "Chemlights", "MilitaryBackpacks", "MedicalItems", "PistolAmmo", "Vehicle", "LMGAmmo", "Trash", "SMGAmmo", "MilitaryBackpacks", "SmokeGrenades", "RifleAttachments", "RifleAmmo", "MilitaryVests", "LMGAmmo", "RifleAttachments", "Restraints", "MilitaryHeadgear", "RoadFlares", "RifleAmmo", "RifleAttachments", "RifleAmmo", "SniperAmmo", "MilitaryVests", "Restraints", "Chemlights", "RoadFlares", "RoadFlares", "PistolAmmo", "Vehicle", "LMGAmmo", "MilitaryHeadgear", "RifleAttachments", "Vehicle", "MilitaryHeadgear", "Vehicle", "MilitaryHeadgear", "Vehicle", "MilitaryVests", "SmokeGrenades", "MedicalItems", "MedicalItems", "Vehicle", "RifleAmmo", "RifleAmmo", "LMG", "Pistols", "RifleAttachments", "LMG", "Rifles", "LMGAmmo", "SmokeGrenades", "SMGAmmo", "SmokeGrenades", "Restraints", "MilitaryHeadgear", "IndustrialItems", "RifleAmmo", "MilitaryClothing", "Ghillies", "Restraints", "PistolAmmo", "RoadFlares", "RoadFlares", "Chemlights", "RoadFlares", "IndustrialItems", "RifleAttachments", "RoadFlares", "Chemlights", "MilitaryBackpacks", "RifleAttachments", "MedicalItems", "SMG", "Rifles", "RifleAttachments", "Chemlights", "Trash", "Chemlights", "Rifles", "SniperAttachments", "Chemlights", "Trash", "SmokeGrenades", "Vehicle", "Rifles", "MilitaryClothing", "Restraints", "Trash", "MilitaryBackpacks", "MilitaryVests", "SMGAmmo", "Pistols"};

		/*
			Percental Item Group Spawn Chances of Medical:

			Trash        = 40.00%
			MedicalItems = 60.00%
		*/
		Medical[] = {"MedicalItems", "Trash", "Trash", "MedicalItems", "MedicalItems", "MedicalItems", "MedicalItems", "Trash", "MedicalItems", "MedicalItems", "Trash", "MedicalItems", "MedicalItems", "Trash", "MedicalItems", "Trash", "MedicalItems", "MedicalItems", "Trash", "MedicalItems", "MedicalItems", "MedicalItems", "Trash", "MedicalItems", "MedicalItems", "Trash", "Trash", "Trash", "Trash", "MedicalItems", "Trash", "Trash", "Trash", "Trash", "MedicalItems", "MedicalItems", "MedicalItems", "Trash", "Trash", "Trash", "Trash", "Trash", "MedicalItems", "MedicalItems", "MedicalItems", "MedicalItems", "Trash", "MedicalItems", "MedicalItems", "Trash", "Trash", "MedicalItems", "MedicalItems", "MedicalItems", "MedicalItems", "Trash", "MedicalItems", "MedicalItems", "Trash", "MedicalItems", "MedicalItems", "MedicalItems", "MedicalItems", "MedicalItems", "MedicalItems", "MedicalItems", "MedicalItems", "MedicalItems", "MedicalItems", "MedicalItems", "MedicalItems", "MedicalItems", "Trash", "Trash", "MedicalItems", "Trash", "MedicalItems", "MedicalItems", "MedicalItems", "MedicalItems", "Trash", "MedicalItems", "Trash", "MedicalItems", "MedicalItems", "Trash", "Trash", "MedicalItems", "Trash", "MedicalItems", "MedicalItems", "Trash", "Trash", "Trash", "MedicalItems", "MedicalItems", "MedicalItems", "Trash", "Trash", "Trash"};

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
		Tourist[] = {"CivilianHeadgear", "Drinks", "Drinks", "Food", "MedicalItems", "Chemlights", "CivilianBackpacks", "MedicalItems", "Trash", "CivilianBackpacks", "Drinks", "Drinks", "CivilianVests", "CivilianClothing", "MedicalItems", "Drinks", "CivilianBackpacks", "CivilianHeadgear", "Drinks", "CivilianHeadgear", "MedicalItems", "CivilianClothing", "Trash", "CivilianClothing", "CivilianItems", "Trash", "MedicalItems", "Food", "CivilianItems", "Food", "CivilianHeadgear", "CivilianItems", "CivilianHeadgear", "CivilianHeadgear", "CivilianHeadgear", "CivilianBackpacks", "Chemlights", "CivilianVests", "CivilianBackpacks", "CivilianHeadgear", "CivilianItems", "CivilianVests", "Food", "CivilianBackpacks", "CivilianHeadgear", "CivilianBackpacks", "CivilianBackpacks", "CivilianClothing", "CivilianBackpacks", "CivilianClothing", "CivilianClothing", "CivilianItems", "Food", "CivilianClothing", "CivilianBackpacks", "CivilianVests", "RoadFlares", "Trash", "Chemlights", "Food", "CivilianClothing", "Chemlights", "CivilianItems", "RoadFlares", "Drinks", "CivilianClothing", "Food", "CivilianItems", "CivilianHeadgear", "Drinks", "Drinks", "RoadFlares", "CivilianClothing", "CivilianBackpacks", "Trash", "Food", "CivilianHeadgear", "RoadFlares", "CivilianItems", "CivilianItems", "RoadFlares", "CivilianBackpacks", "CivilianItems", "RoadFlares", "Drinks", "Drinks", "CivilianVests", "CivilianBackpacks", "CivilianItems", "CivilianHeadgear", "RoadFlares", "CivilianBackpacks", "CivilianVests", "MedicalItems", "CivilianClothing", "Drinks", "Food", "Drinks", "CivilianClothing", "Food", "CivilianItems", "CivilianClothing", "CivilianBackpacks", "MedicalItems", "CivilianBackpacks", "CivilianVests", "Food", "CivilianItems", "Trash", "Drinks", "Food", "CivilianHeadgear", "Drinks", "Food", "CivilianVests", "CivilianHeadgear", "RoadFlares", "Food", "CivilianBackpacks", "Food", "Food", "CivilianVests", "CivilianVests", "CivilianClothing", "Drinks", "MedicalItems", "Drinks", "Drinks", "CivilianHeadgear", "Food", "Trash", "CivilianHeadgear", "Drinks", "CivilianBackpacks", "Trash", "Chemlights", "CivilianVests", "Chemlights", "CivilianVests", "CivilianHeadgear", "Chemlights", "Chemlights", "Drinks", "CivilianVests", "Food", "CivilianClothing", "CivilianVests", "CivilianVests", "CivilianHeadgear", "CivilianItems", "CivilianBackpacks", "CivilianVests", "CivilianItems", "Trash", "Trash", "Chemlights", "Drinks", "Food", "RoadFlares", "CivilianItems", "CivilianBackpacks", "Trash", "Food", "CivilianItems", "CivilianHeadgear", "CivilianClothing", "CivilianItems", "RoadFlares", "Food", "CivilianItems", "Food", "CivilianItems", "CivilianClothing", "CivilianHeadgear", "Drinks", "Food", "CivilianClothing", "MedicalItems", "CivilianClothing", "CivilianVests", "Food", "Drinks", "CivilianVests", "Chemlights", "Chemlights", "CivilianVests", "Food", "RoadFlares", "CivilianClothing", "MedicalItems", "Drinks", "CivilianVests", "Drinks"};

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
		Radiation[] = {"MilitaryBackpacks", "Rifles", "Ghillies", "LMG", "HandGrenades", "SMGAmmo", "SMGAmmo", "Rifles", "MilitaryClothing", "RoadFlares", "SmokeGrenades", "HandGrenades", "Drinks", "Trash", "Restraints", "Ghillies", "Chemlights", "IndustrialItems", "PistolAmmo", "Explosives", "Restraints", "SniperAmmo", "MilitaryBackpacks", "HandGrenades", "PistolAmmo", "SniperAmmo", "SMG", "SniperAttachments", "SMG", "RifleAmmo", "MilitaryVests", "SniperAmmo", "SMG", "SniperAmmo", "SniperAttachments", "MilitaryHeadgear", "Pistols", "Vehicle", "PistolAmmo", "Chemlights", "HandGrenades", "Vehicle", "MilitaryHeadgear", "RifleAttachments", "LMG", "SniperAmmo", "MilitaryVests", "Food", "LMGAmmo", "IndustrialItems", "RifleAttachments", "Vehicle", "Pistols", "Restraints", "MilitaryClothing", "Restraints", "Electronics", "Rifles", "SniperAmmo", "Rifles", "Snipers", "Ghillies", "LMG", "MilitaryVests", "Chemlights", "PistolAmmo", "SMG", "PistolAmmo", "Snipers", "MilitaryClothing", "Vehicle", "MilitaryBackpacks", "MedicalItems", "IndustrialItems", "MilitaryClothing", "LMGAmmo", "RifleAmmo", "MilitaryBackpacks", "Rifles", "MilitaryHeadgear", "SMGAmmo", "RoadFlares", "RifleAmmo", "MilitaryClothing", "Chemlights", "Food", "SmokeGrenades", "SMG", "IndustrialItems", "Chemlights", "LMG", "MilitaryVests", "MilitaryBackpacks", "MilitaryClothing", "MedicalItems", "RifleAttachments", "MilitaryVests", "SniperAmmo", "RifleAmmo", "IndustrialItems", "Explosives", "Chemlights", "Drinks", "LMGAmmo", "RoadFlares", "HandGrenades", "LMGAmmo", "Chemlights", "LMGAmmo", "SMGAmmo", "LMGAmmo", "Ghillies", "PistolAmmo", "Restraints", "Chemlights", "SMG", "RoadFlares", "Chemlights", "Ghillies", "SmokeGrenades", "MilitaryHeadgear", "HandGrenades", "SmokeGrenades", "SmokeGrenades", "SniperAmmo", "RoadFlares", "Snipers", "SmokeGrenades", "HandGrenades", "LMG", "RifleAttachments", "IndustrialItems", "PistolAmmo", "SMGAmmo", "Food", "MilitaryClothing", "RifleAttachments", "RoadFlares", "PistolAmmo", "MilitaryHeadgear", "SniperAmmo", "SniperAttachments", "MilitaryClothing", "Rifles", "Vehicle", "RifleAmmo", "Ghillies", "IndustrialItems", "Vehicle", "RoadFlares", "RifleAttachments", "Explosives", "MedicalItems", "Rifles", "SniperAttachments", "Snipers", "PistolAmmo", "MilitaryBackpacks", "Rifles", "PistolAmmo", "HandGrenades", "SniperAttachments", "SmokeGrenades", "Ghillies", "SMGAmmo", "SmokeGrenades", "SniperAttachments", "MilitaryClothing", "RifleAttachments", "MedicalItems", "RoadFlares", "MilitaryVests", "SMG", "RifleAttachments", "Restraints", "Pistols", "Chemlights", "SMGAmmo", "SMG", "SniperAttachments", "RifleAmmo", "HandGrenades", "Explosives", "Rifles", "SniperAttachments", "IndustrialItems", "Vehicle", "MedicalItems", "RoadFlares", "MilitaryHeadgear", "RifleAttachments", "MedicalItems", "Restraints", "MilitaryVests", "HandGrenades", "RoadFlares", "RifleAttachments", "RoadFlares", "SniperAttachments", "Explosives", "MilitaryBackpacks", "Snipers", "PistolAmmo", "MilitaryHeadgear", "SMGAmmo", "LMGAmmo", "Drinks", "Drinks", "Explosives", "MilitaryVests", "SmokeGrenades", "MilitaryVests", "SMGAmmo", "MilitaryBackpacks", "SMGAmmo", "MilitaryClothing", "SMG", "Rifles", "MilitaryBackpacks", "SniperAmmo", "RifleAmmo", "Rifles", "RifleAttachments", "MedicalItems", "IndustrialItems", "RifleAmmo", "Restraints", "SMGAmmo", "RifleAmmo", "HandGrenades", "Ghillies", "Rifles", "MilitaryHeadgear", "Snipers", "Explosives", "LMG", "SniperAttachments", "Restraints", "Ghillies", "MilitaryHeadgear", "RifleAmmo", "SmokeGrenades", "MilitaryClothing", "RifleAmmo", "Explosives", "SniperAttachments", "LMG", "LMGAmmo", "Restraints", "Drinks", "LMGAmmo", "SniperAttachments", "LMGAmmo", "MilitaryHeadgear", "PistolAmmo", "Snipers", "SniperAttachments", "Explosives", "Vehicle", "RifleAmmo", "Vehicle", "Food", "Trash", "Trash", "Pistols", "SMGAmmo", "RifleAttachments", "Chemlights", "LMG", "MilitaryBackpacks", "SniperAmmo", "MilitaryHeadgear", "Trash", "Rifles", "MedicalItems", "MilitaryVests", "MilitaryVests", "SmokeGrenades", "MilitaryVests", "Explosives", "MilitaryClothing", "HandGrenades", "MilitaryVests", "Restraints", "MedicalItems", "Explosives", "SmokeGrenades", "LMG", "MilitaryVests", "Trash", "Trash", "LMGAmmo", "SMG", "Vehicle", "MilitaryBackpacks", "MilitaryVests", "MedicalItems", "RifleAttachments", "Food", "SniperAmmo", "Ghillies", "Chemlights", "IndustrialItems", "RifleAmmo", "IndustrialItems", "Snipers", "MilitaryHeadgear", "MilitaryHeadgear", "MilitaryVests", "Pistols", "MilitaryBackpacks", "MilitaryVests", "LMG", "Snipers", "MedicalItems", "Snipers", "Pistols", "MilitaryVests", "Restraints", "Pistols", "PistolAmmo", "LMGAmmo", "Chemlights", "Chemlights", "SMGAmmo", "Pistols", "SmokeGrenades", "RifleAmmo", "SMGAmmo", "LMG", "Rifles", "Food", "SMG", "SMG", "Trash", "RifleAmmo", "IndustrialItems", "LMG", "LMG", "Ghillies", "LMG", "RifleAmmo", "LMG", "RoadFlares", "SMG", "Restraints", "SMGAmmo", "Pistols", "SMG", "Ghillies", "Drinks", "Food", "LMG", "Ghillies", "MilitaryClothing", "RifleAttachments", "RoadFlares", "RifleAttachments", "RifleAttachments", "RoadFlares", "Explosives", "SmokeGrenades", "SniperAmmo", "MilitaryClothing", "Rifles", "Snipers", "MilitaryHeadgear", "MilitaryVests", "MilitaryClothing", "LMG", "MilitaryBackpacks", "SmokeGrenades", "IndustrialItems", "SMG", "RifleAmmo", "Vehicle", "MilitaryBackpacks", "SMG", "RifleAmmo", "HandGrenades", "RifleAmmo", "SmokeGrenades", "LMGAmmo", "MilitaryBackpacks", "RifleAttachments", "Pistols", "MilitaryHeadgear", "MilitaryClothing", "Restraints", "Rifles", "Snipers", "IndustrialItems", "SMG", "Rifles", "RoadFlares", "Restraints", "LMGAmmo", "Snipers", "RifleAttachments", "LMGAmmo", "MedicalItems", "MilitaryVests", "SmokeGrenades", "IndustrialItems", "MilitaryBackpacks", "Ghillies", "MilitaryVests", "Chemlights", "MilitaryClothing", "MilitaryVests", "Chemlights", "Vehicle", "SMG", "MilitaryVests", "MilitaryClothing", "RifleAmmo", "RifleAttachments", "SMGAmmo", "RifleAttachments", "PistolAmmo", "IndustrialItems", "Pistols", "HandGrenades", "Drinks", "SmokeGrenades", "MilitaryHeadgear", "IndustrialItems", "IndustrialItems", "MilitaryClothing", "MilitaryHeadgear", "Explosives", "SmokeGrenades", "SmokeGrenades", "MilitaryClothing", "SmokeGrenades", "RifleAmmo", "Restraints", "MilitaryVests", "SniperAmmo", "MilitaryHeadgear", "Explosives", "SniperAttachments", "Chemlights", "Restraints", "RifleAttachments", "MilitaryVests", "Explosives", "SMGAmmo", "Trash", "LMGAmmo", "SniperAttachments", "SniperAttachments", "SMGAmmo", "MilitaryBackpacks", "MilitaryHeadgear", "SMG", "RifleAttachments", "MilitaryVests", "Snipers", "PistolAmmo", "MilitaryVests", "IndustrialItems", "Explosives", "Rifles", "Ghillies", "MedicalItems", "Ghillies", "Pistols", "Rifles", "Restraints", "Rifles", "LMG", "IndustrialItems", "IndustrialItems", "SmokeGrenades", "SniperAmmo", "RoadFlares", "RifleAmmo", "MilitaryBackpacks", "Vehicle", "RifleAttachments", "MilitaryHeadgear", "MilitaryHeadgear", "MedicalItems", "IndustrialItems", "Vehicle", "MedicalItems", "HandGrenades", "Chemlights", "Trash", "SmokeGrenades", "MilitaryClothing", "Ghillies", "SmokeGrenades", "Restraints", "Food", "RoadFlares", "Food", "LMG", "Restraints", "SniperAttachments", "IndustrialItems", "LMG", "MilitaryHeadgear", "Explosives", "SniperAmmo", "MilitaryBackpacks", "RoadFlares", "SmokeGrenades", "Snipers", "Restraints", "SmokeGrenades", "SniperAmmo", "PistolAmmo", "MedicalItems", "Explosives", "Vehicle", "HandGrenades", "MilitaryHeadgear", "Explosives", "RifleAmmo", "RoadFlares", "Restraints", "Drinks", "PistolAmmo", "Rifles", "MilitaryClothing", "Pistols", "MilitaryClothing", "RoadFlares", "MedicalItems", "Rifles", "Drinks", "SniperAmmo", "SmokeGrenades", "RoadFlares", "SniperAmmo", "IndustrialItems", "Pistols", "Restraints", "SmokeGrenades", "SniperAttachments", "SMGAmmo", "RifleAttachments", "Snipers", "MilitaryHeadgear", "Explosives", "SniperAttachments", "Chemlights", "SMG", "IndustrialItems", "Pistols", "RifleAmmo", "MilitaryBackpacks", "Rifles", "SMG", "SMGAmmo", "RifleAttachments", "Trash", "Chemlights", "SMGAmmo", "Chemlights", "LMGAmmo", "MedicalItems", "SMGAmmo", "Snipers", "LMGAmmo", "Vehicle", "Drinks", "LMGAmmo", "MedicalItems", "Snipers", "Drinks", "MedicalItems", "SniperAttachments", "RoadFlares", "RifleAmmo", "RoadFlares", "LMG", "MilitaryClothing", "RifleAmmo", "SniperAttachments", "Rifles", "RifleAmmo", "HandGrenades", "MilitaryClothing", "Pistols", "SmokeGrenades", "MilitaryClothing", "MilitaryVests", "LMG", "Snipers", "SniperAmmo", "PistolAmmo", "Rifles", "HandGrenades", "Snipers", "SniperAmmo", "Rifles", "SMGAmmo", "Restraints", "RoadFlares", "SniperAmmo", "LMGAmmo", "Snipers", "MilitaryBackpacks", "Drinks", "LMG", "RifleAmmo", "Rifles", "RoadFlares", "HandGrenades", "Restraints", "LMGAmmo", "RoadFlares", "LMGAmmo", "MilitaryBackpacks", "MilitaryVests", "LMG", "Chemlights", "MilitaryBackpacks", "MilitaryVests", "MilitaryClothing", "SmokeGrenades", "SMGAmmo", "LMG", "RoadFlares", "Pistols", "RifleAttachments", "SMGAmmo", "SMG", "MilitaryClothing", "Chemlights", "Vehicle", "LMGAmmo", "MilitaryVests", "RifleAttachments", "MilitaryHeadgear", "Restraints", "RifleAmmo", "LMGAmmo", "Chemlights", "RifleAmmo", "MilitaryBackpacks", "Vehicle", "Chemlights", "SMGAmmo", "LMG", "SMGAmmo", "Chemlights", "PistolAmmo", "RoadFlares", "Ghillies", "MedicalItems", "MilitaryHeadgear", "Snipers", "Rifles", "PistolAmmo", "Pistols", "Ghillies", "RifleAmmo", "MedicalItems", "Trash", "HandGrenades", "Rifles", "Snipers", "Vehicle", "RifleAttachments", "Pistols", "RifleAttachments", "RifleAmmo", "MilitaryHeadgear", "SMG", "PistolAmmo", "Snipers", "Food", "IndustrialItems", "Rifles", "MilitaryBackpacks", "MedicalItems", "Restraints", "SmokeGrenades", "Chemlights", "Pistols", "Drinks", "RifleAttachments", "Trash", "SMGAmmo", "SMG", "SniperAmmo", "Drinks", "HandGrenades", "SniperAttachments", "MilitaryBackpacks", "LMGAmmo", "PistolAmmo", "Pistols", "SniperAmmo", "SMGAmmo", "Food", "Drinks", "SMG", "Snipers", "MilitaryHeadgear", "MilitaryClothing", "Vehicle", "Rifles", "PistolAmmo", "SMGAmmo", "SMG", "SMGAmmo", "MedicalItems", "MilitaryVests", "IndustrialItems", "RifleAmmo", "RoadFlares", "Explosives", "IndustrialItems", "RifleAttachments", "LMGAmmo", "Ghillies", "RoadFlares", "Snipers", "Vehicle", "RifleAttachments", "SMG", "RifleAttachments", "LMG", "Rifles", "MilitaryClothing", "SMGAmmo", "LMGAmmo", "Chemlights", "Chemlights", "Drinks", "IndustrialItems", "RoadFlares", "LMGAmmo", "MilitaryClothing", "LMG", "MedicalItems", "PistolAmmo", "MilitaryBackpacks", "Vehicle", "Rifles", "IndustrialItems", "IndustrialItems", "Pistols", "SmokeGrenades", "MilitaryClothing", "MilitaryHeadgear", "Rifles", "Restraints", "MilitaryBackpacks", "SmokeGrenades", "Chemlights", "Vehicle", "Trash", "Trash", "SniperAmmo", "SniperAttachments", "SMGAmmo", "Restraints", "Food", "MilitaryHeadgear", "LMGAmmo", "MilitaryBackpacks", "MilitaryBackpacks", "MilitaryBackpacks", "HandGrenades", "Explosives", "Explosives", "MedicalItems", "SmokeGrenades", "RifleAmmo", "LMGAmmo", "Restraints", "Food", "Rifles", "MilitaryHeadgear", "MilitaryClothing", "Food", "HandGrenades", "LMGAmmo", "Chemlights", "PistolAmmo", "Food", "RoadFlares", "Restraints", "MilitaryHeadgear", "Ghillies", "Explosives", "SMGAmmo", "MilitaryClothing", "Food", "Rifles", "Trash", "Snipers", "MilitaryClothing", "Snipers", "RifleAttachments", "HandGrenades", "Pistols", "IndustrialItems", "Chemlights", "MilitaryClothing", "LMG", "SMG", "Rifles", "Snipers", "MedicalItems", "LMG", "RifleAmmo", "Explosives", "RifleAttachments", "HandGrenades", "LMGAmmo", "MilitaryBackpacks", "SniperAmmo", "Explosives", "Food", "SMG", "LMGAmmo", "Ghillies", "Explosives", "IndustrialItems", "LMG", "LMG", "Explosives", "SniperAttachments", "Restraints", "Explosives", "LMG", "SniperAmmo", "SniperAttachments", "Pistols", "Explosives", "PistolAmmo", "Trash", "RifleAmmo", "MilitaryVests", "Food", "SniperAttachments", "PistolAmmo", "MilitaryBackpacks", "SniperAttachments", "Explosives", "SniperAttachments", "SMG", "MilitaryClothing", "MilitaryHeadgear", "Snipers", "SMG", "SMG", "Drinks", "IndustrialItems", "MilitaryBackpacks", "Trash", "Pistols", "SniperAmmo", "Trash", "SMGAmmo", "SMG", "MilitaryHeadgear", "HandGrenades", "MilitaryBackpacks", "Vehicle", "IndustrialItems", "Rifles", "Snipers", "RifleAttachments", "Chemlights", "RifleAmmo", "MilitaryClothing", "MilitaryHeadgear", "Pistols", "Pistols", "SMGAmmo", "Explosives", "MilitaryBackpacks", "Electronics", "LMG", "SniperAttachments", "SmokeGrenades", "SmokeGrenades", "SniperAmmo", "RifleAttachments", "LMG", "Snipers", "MilitaryHeadgear", "SniperAttachments", "Chemlights", "LMG", "SniperAmmo", "Chemlights", "HandGrenades", "Pistols", "MilitaryClothing", "RifleAmmo", "LMGAmmo", "RifleAttachments", "SMG", "Chemlights", "MilitaryBackpacks", "SniperAmmo", "Rifles", "Food", "Trash", "SniperAttachments", "SniperAmmo", "MilitaryVests", "RifleAmmo", "MilitaryBackpacks", "Snipers", "Drinks", "RoadFlares", "MilitaryHeadgear", "Rifles", "Snipers", "IndustrialItems", "PistolAmmo", "RifleAmmo", "Pistols", "SMGAmmo", "SmokeGrenades", "Ghillies", "Snipers", "RifleAmmo", "SMG", "LMG", "HandGrenades", "MilitaryHeadgear", "Snipers", "RifleAttachments", "SMG", "SniperAttachments", "LMG", "RifleAttachments", "Drinks", "IndustrialItems", "LMGAmmo", "Snipers", "MilitaryBackpacks", "SniperAttachments", "RoadFlares", "MilitaryVests", "MilitaryHeadgear", "MedicalItems", "Ghillies", "SMG", "RoadFlares", "MilitaryClothing", "LMGAmmo", "Trash", "MilitaryVests", "SniperAmmo", "MilitaryVests", "RifleAttachments", "SmokeGrenades", "HandGrenades", "Drinks", "LMGAmmo", "Chemlights", "SMGAmmo", "Food", "MilitaryVests", "RoadFlares", "SniperAmmo", "Rifles", "Restraints", "PistolAmmo", "MilitaryVests", "IndustrialItems", "IndustrialItems", "Explosives", "MedicalItems", "MilitaryHeadgear", "Ghillies", "SniperAttachments", "SMG", "LMG", "SniperAttachments", "MilitaryBackpacks", "Pistols", "HandGrenades", "Explosives", "SniperAmmo", "LMGAmmo", "MedicalItems", "LMGAmmo", "LMG", "SniperAmmo", "Restraints", "Vehicle", "MilitaryVests", "RoadFlares", "Rifles", "LMGAmmo", "RifleAmmo", "SniperAmmo", "IndustrialItems", "PistolAmmo", "RifleAttachments", "Snipers", "SMGAmmo", "SniperAmmo", "SMG", "Vehicle"};
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
		Food[] = {"Exile_Item_CookingPot", "Exile_Item_CookingPot", "Exitem_container_beef", "Exile_Item_BeefParts", "Exile_Item_ChristmasTinner", "Exile_Item_CanOpener", "Exitem_container", "Exitem_rice", "Exitem_container_soup", "Exitem_rice", "Exile_Item_BBQSandwich", "Exile_Item_SeedAstics", "Exile_Item_CanOpener", "Exitem_container", "Exile_Item_CockONut", "Exile_Item_CanOpener", "Exile_Item_MacasCheese", "Exile_Item_Dogfood", "Exile_Item_ChristmasTinner", "Exitem_tacticalbacon", "Exile_Item_Moobar", "Exile_Item_SausageGravy", "Exile_Item_Cheathas", "Exile_Item_CanOpener", "Exile_Item_GloriousKnakworst", "Exitem_purificationtablets", "Exile_Item_SeedAstics", "Exitem_rice", "Exitem_purificationtablets", "Exile_Item_CanOpener", "Exile_Item_DsNuts", "Exile_Item_CookingPot", "Exile_Item_Moobar", "Exitem_bakedbeans", "Exile_Item_ChristmasTinner", "Exile_Item_GloriousKnakworst", "Exile_Item_BeefParts", "Exitem_purificationtablets", "Exile_Item_Matches", "Exile_Item_Dogfood", "Exile_Item_SausageGravy", "Exile_Item_BeefParts", "Exile_Item_CookingPot", "Exile_Item_BBQSandwich", "Exile_Item_Noodles", "Exile_Item_Raisins", "Exile_Item_DsNuts", "Exile_Item_GloriousKnakworst", "Exile_Item_SausageGravy", "Exile_Item_Moobar", "Exile_Item_CockONut", "Exile_Item_CanOpener", "Exile_Item_CatFood", "Exile_Item_Cheathas", "Exile_Item_CanOpener", "Exitem_container_beef", "Exile_Item_EMRE", "Exile_Item_Surstromming", "Exile_Item_Raisins", "Exile_Item_BBQSandwich", "Exile_Item_CanOpener", "Exitem_rice", "Exile_Item_Matches", "Exile_Item_CookingPot", "Exitem_container", "Exile_Item_CanOpener", "Exile_Item_ChristmasTinner", "Exile_Item_MacasCheese", "Exile_Item_Moobar", "Exitem_purificationtablets", "Exile_Item_InstantCoffee", "Exile_Item_SeedAstics", "Exitem_cerealbox", "Exitem_cerealbox", "Exile_Item_CockONut", "Exile_Item_CatFood", "Exitem_cerealbox", "Exile_Item_CockONut", "Exile_Item_InstantCoffee", "Exitem_container_soup", "Exitem_bakedbeans", "Exile_Item_BeefParts", "Exile_Item_Matches", "Exile_Item_SeedAstics", "Exile_Item_CanOpener", "Exile_Item_CanOpener", "Exile_Item_EMRE", "Exile_Item_BeefParts", "Exitem_tacticalbacon", "Exile_Item_MacasCheese", "Exile_Item_EMRE", "Exile_Item_CanOpener", "Exile_Item_InstantCoffee", "Exile_Item_DsNuts", "Exile_Item_CanOpener", "Exile_Item_InstantCoffee", "Exile_Item_InstantCoffee", "Exile_Item_Dogfood", "Exile_Item_MacasCheese", "Exitem_container", "Exile_Item_SeedAstics", "Exile_Item_BBQSandwich", "Exitem_container_beef", "Exitem_tacticalbacon", "Exile_Item_DsNuts", "Exitem_purificationtablets", "Exitem_bakedbeans", "Exile_Item_CookingPot", "Exile_Item_GloriousKnakworst", "Exile_Item_CatFood", "Exile_Item_Noodles", "Exitem_purificationtablets", "Exile_Item_BeefParts", "Exile_Item_DsNuts", "Exile_Item_CanOpener", "Exile_Item_InstantCoffee", "Exile_Item_DsNuts", "Exile_Item_CanOpener", "Exile_Item_Cheathas", "Exile_Item_CanOpener", "Exitem_tacticalbacon", "Exile_Item_CockONut", "Exile_Item_ChristmasTinner", "Exile_Item_InstantCoffee", "Exile_Item_Raisins", "Exile_Item_CanOpener", "Exile_Item_CookingPot", "Exile_Item_Raisins", "Exile_Item_Moobar", "Exile_Item_CanOpener", "Exile_Item_InstantCoffee", "Exile_Item_Matches", "Exile_Item_CookingPot", "Exile_Item_MacasCheese", "Exitem_tacticalbacon", "Exile_Item_SeedAstics", "Exile_Item_Surstromming", "Exile_Item_DsNuts", "Exile_Item_MacasCheese", "Exile_Item_SeedAstics", "Exile_Item_Matches", "Exile_Item_Noodles", "Exile_Item_Moobar", "Exile_Item_BBQSandwich", "Exile_Item_CanOpener", "Exile_Item_CanOpener", "Exitem_tacticalbacon", "Exile_Item_Cheathas", "Exile_Item_InstantCoffee", "Exile_Item_SeedAstics", "Exile_Item_CanOpener", "Exile_Item_Dogfood", "Exile_Item_CockONut", "Exile_Item_Cheathas", "Exile_Item_Noodles", "Exile_Item_BeefParts", "Exile_Item_Moobar", "Exile_Item_CookingPot", "Exile_Item_BeefParts", "Exile_Item_MacasCheese", "Exitem_container_soup", "Exile_Item_MacasCheese", "Exile_Item_Moobar", "Exile_Item_DsNuts", "Exile_Item_CanOpener", "Exitem_container", "Exile_Item_InstantCoffee", "Exile_Item_Raisins", "Exile_Item_Dogfood", "Exitem_rice", "Exile_Item_CanOpener", "Exile_Item_CatFood", "Exile_Item_Cheathas", "Exile_Item_Cheathas", "Exile_Item_InstantCoffee", "Exile_Item_Surstromming", "Exile_Item_Noodles", "Exile_Item_CanOpener", "Exile_Item_Noodles", "Exile_Item_CanOpener", "Exile_Item_SausageGravy", "Exile_Item_BeefParts", "Exile_Item_CookingPot", "Exitem_cerealbox", "Exile_Item_Cheathas", "Exile_Item_Moobar", "Exile_Item_SeedAstics", "Exile_Item_Noodles", "Exitem_cerealbox", "Exile_Item_CockONut", "Exitem_tacticalbacon", "Exile_Item_CanOpener", "Exitem_rice", "Exile_Item_InstantCoffee", "Exitem_bakedbeans", "Exitem_cerealbox", "Exitem_purificationtablets", "Exitem_bakedbeans", "Exitem_rice", "Exile_Item_Noodles", "Exitem_cerealbox", "Exitem_container", "Exile_Item_InstantCoffee", "Exile_Item_Raisins", "Exile_Item_InstantCoffee", "Exile_Item_SeedAstics", "Exile_Item_CanOpener", "Exile_Item_InstantCoffee", "Exile_Item_Cheathas", "Exitem_tacticalbacon", "Exitem_tacticalbacon", "Exitem_bakedbeans", "Exile_Item_Raisins", "Exitem_purificationtablets", "Exile_Item_CookingPot", "Exile_Item_CanOpener", "Exitem_bakedbeans", "Exitem_cerealbox", "Exitem_container", "Exile_Item_Cheathas", "Exile_Item_InstantCoffee", "Exile_Item_DsNuts", "Exile_Item_Surstromming", "Exitem_rice", "Exile_Item_CockONut", "Exile_Item_SausageGravy", "Exile_Item_Surstromming", "Exile_Item_GloriousKnakworst", "Exitem_bakedbeans", "Exile_Item_Raisins", "Exitem_bakedbeans", "Exitem_rice", "Exile_Item_MacasCheese", "Exile_Item_Moobar", "Exile_Item_InstantCoffee", "Exitem_bakedbeans", "Exile_Item_CookingPot", "Exile_Item_CanOpener", "Exitem_container_beef", "Exitem_container", "Exitem_purificationtablets", "Exile_Item_CockONut", "Exitem_container_soup", "Exile_Item_BeefParts", "Exile_Item_MacasCheese", "Exile_Item_InstantCoffee", "Exitem_container", "Exile_Item_DsNuts", "Exile_Item_Raisins", "Exitem_rice", "Exile_Item_InstantCoffee", "Exitem_cerealbox", "Exitem_container", "Exile_Item_Noodles", "Exitem_tacticalbacon", "Exile_Item_CatFood", "Exile_Item_CookingPot", "Exile_Item_EMRE", "Exitem_container_beef", "Exile_Item_InstantCoffee", "Exile_Item_CockONut", "Exile_Item_EMRE", "Exitem_container_soup", "Exitem_cerealbox", "Exitem_purificationtablets", "Exile_Item_Raisins", "Exile_Item_CanOpener", "Exile_Item_CookingPot", "Exile_Item_Noodles", "Exile_Item_CookingPot"};

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
		Drinks[] = {"Exile_Item_PlasticBottleDirtyWater", "Exile_Item_PlasticBottleFreshWater", "Exitem_canteen", "Exile_Item_ChocolateMilk", "Exile_Item_Beer", "Exile_Item_PlasticBottleDirtyWater", "Exile_Item_MountainDupe", "Exitem_franta", "Exile_Item_ChocolateMilk", "Exile_Item_MountainDupe", "Exitem_canteen", "Exitem_redgull", "Exile_Item_Beer", "Exitem_canteen", "Exile_Item_EnergyDrink", "Exitem_spirit", "Exile_Item_PlasticBottleDirtyWater", "Exitem_franta", "Exitem_canteen", "Exile_Item_ChocolateMilk", "Exitem_franta", "Exile_Item_ChocolateMilk", "Exile_Item_ChocolateMilk", "Exile_Item_PlasticBottleFreshWater", "Exile_Item_PlasticBottleDirtyWater", "Exitem_franta", "Exile_Item_PlasticBottleFreshWater", "Exitem_franta", "Exile_Item_PlasticBottleFreshWater", "Exile_Item_PowerDrink", "Exile_Item_ChocolateMilk", "Exile_Item_MountainDupe", "Exile_Item_PlasticBottleFreshWater", "Exitem_spirit", "Exile_Item_PlasticBottleCoffee", "Exile_Item_EnergyDrink", "Exitem_spirit", "Exile_Item_PlasticBottleDirtyWater", "Exitem_canteen_coffee", "Exitem_canteen_coffee", "Exitem_spirit", "Exile_Item_ChocolateMilk", "Exile_Item_EnergyDrink", "Exitem_spirit", "Exitem_canteen_coffee", "Exile_Item_EnergyDrink", "Exitem_spirit", "Exitem_canteen_coffee", "Exile_Item_PlasticBottleDirtyWater", "Exile_Item_ChocolateMilk", "Exitem_redgull", "Exile_Item_EnergyDrink", "Exitem_redgull", "Exile_Item_ChocolateMilk", "Exitem_spirit", "Exile_Item_PlasticBottleDirtyWater", "Exitem_franta", "Exile_Item_MountainDupe", "Exile_Item_PlasticBottleDirtyWater", "Exile_Item_MountainDupe", "Exile_Item_PlasticBottleFreshWater", "Exile_Item_Beer", "Exile_Item_PlasticBottleDirtyWater", "Exitem_spirit", "Exile_Item_ChocolateMilk", "Exile_Item_Beer", "Exitem_franta", "Exile_Item_PlasticBottleDirtyWater", "Exile_Item_PlasticBottleDirtyWater", "Exile_Item_PlasticBottleDirtyWater", "Exile_Item_ChocolateMilk", "Exile_Item_Beer", "Exile_Item_Beer", "Exile_Item_PlasticBottleDirtyWater", "Exile_Item_MountainDupe", "Exile_Item_ChocolateMilk", "Exile_Item_ChocolateMilk", "Exitem_canteen_coffee", "Exile_Item_PlasticBottleCoffee", "Exile_Item_PlasticBottleDirtyWater", "Exitem_franta", "Exitem_spirit", "Exile_Item_EnergyDrink", "Exile_Item_ChocolateMilk", "Exile_Item_ChocolateMilk", "Exile_Item_PlasticBottleCoffee", "Exile_Item_PowerDrink", "Exile_Item_PowerDrink", "Exile_Item_ChocolateMilk", "Exile_Item_ChocolateMilk", "Exitem_franta", "Exitem_spirit", "Exile_Item_ChocolateMilk", "Exile_Item_EnergyDrink", "Exitem_spirit", "Exile_Item_PlasticBottleFreshWater", "Exitem_redgull", "Exitem_spirit", "Exile_Item_PlasticBottleDirtyWater", "Exile_Item_ChocolateMilk", "Exitem_redgull", "Exitem_canteen_fresh", "Exitem_spirit", "Exile_Item_ChocolateMilk", "Exile_Item_PlasticBottleDirtyWater", "Exile_Item_PlasticBottleCoffee", "Exitem_canteen", "Exitem_spirit", "Exile_Item_ChocolateMilk", "Exile_Item_PlasticBottleCoffee", "Exitem_spirit", "Exile_Item_EnergyDrink", "Exile_Item_ChocolateMilk", "Exitem_franta", "Exile_Item_PlasticBottleDirtyWater", "Exile_Item_PlasticBottleDirtyWater", "Exile_Item_MountainDupe", "Exile_Item_EnergyDrink", "Exitem_redgull", "Exitem_spirit", "Exile_Item_Beer", "Exile_Item_Beer", "Exitem_spirit", "Exitem_canteen", "Exitem_spirit", "Exitem_canteen", "Exile_Item_PowerDrink", "Exile_Item_PlasticBottleDirtyWater", "Exitem_canteen_fresh", "Exitem_franta", "Exile_Item_PlasticBottleDirtyWater", "Exitem_spirit", "Exile_Item_ChocolateMilk", "Exitem_redgull", "Exile_Item_EnergyDrink", "Exile_Item_ChocolateMilk", "Exile_Item_Beer", "Exitem_canteen", "Exile_Item_MountainDupe", "Exitem_canteen_fresh", "Exile_Item_PlasticBottleDirtyWater", "Exile_Item_PlasticBottleFreshWater", "Exile_Item_PlasticBottleFreshWater", "Exile_Item_PowerDrink", "Exile_Item_PlasticBottleFreshWater", "Exile_Item_ChocolateMilk", "Exile_Item_MountainDupe", "Exitem_redgull", "Exitem_canteen_fresh", "Exile_Item_PlasticBottleDirtyWater", "Exitem_canteen", "Exile_Item_Beer", "Exile_Item_PlasticBottleDirtyWater", "Exitem_canteen_fresh", "Exitem_franta", "Exitem_franta", "Exile_Item_PlasticBottleDirtyWater", "Exitem_redgull", "Exitem_redgull", "Exitem_canteen", "Exile_Item_MountainDupe", "Exitem_spirit", "Exitem_franta", "Exile_Item_PlasticBottleDirtyWater", "Exitem_franta"};

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
		CivilianWeapons[] = {"Exile_Weapon_Taurus", "rhs_weap_makarov_pm", "hlc_rifle_saiga12k", "rhs_weap_M590_8RD", "rhs_weap_makarov_pm", "rhsusf_weap_m1911a1", "rhs_weap_m38", "rhs_weap_m38", "hlc_rifle_M1903A1", "rhsusf_weap_m1911a1", "rhs_weap_makarov_pmm", "rhs_weap_makarov_pmm", "rhs_weap_makarov_pm", "Exile_Weapon_Taurus", "rhs_weap_makarov_pmm", "rhs_weap_makarov_pmm", "Exile_Weapon_Taurus", "hlc_rifle_saiga12k", "rhs_weap_m38", "rhs_weap_makarov_pm", "Exile_Weapon_Taurus", "rhsusf_weap_glock17g4", "Exile_Weapon_Taurus", "rhs_weap_makarov_pm", "rhs_weap_makarov_pmm", "rhs_weap_makarov_pmm", "rhs_weap_makarov_pm", "rhs_weap_makarov_pmm", "rhsusf_weap_glock17g4", "Exile_Weapon_Taurus", "rhs_weap_m38", "rhs_weap_makarov_pmm", "rhs_weap_makarov_pmm", "rhs_weap_makarov_pmm", "rhs_weap_kar98k", "rhs_weap_makarov_pm", "hlc_rifle_saiga12k", "Exile_Weapon_Taurus", "rhs_weap_kar98k", "hlc_rifle_saiga12k", "rhs_weap_kar98k", "rhs_weap_kar98k", "rhs_weap_makarov_pmm", "rhs_weap_kar98k", "rhs_weap_makarov_pmm", "Exile_Weapon_Taurus", "Exile_Weapon_Taurus", "rhs_weap_kar98k", "Exile_Weapon_Taurus", "rhs_weap_makarov_pmm", "rhs_weap_makarov_pm", "rhsusf_weap_glock17g4", "Exile_Weapon_TaurusGold", "rhs_weap_M590_8RD", "rhsusf_weap_m1911a1", "rhsusf_weap_glock17g4", "rhs_weap_M590_8RD", "rhs_weap_makarov_pm", "Exile_Weapon_Taurus", "rhs_weap_M590_5RD", "rhs_weap_kar98k", "rhs_weap_makarov_pm", "Exile_Weapon_Taurus", "rhs_weap_m38", "Exile_Weapon_Taurus", "rhs_weap_m38", "rhs_weap_makarov_pm", "hlc_rifle_M1903A1", "rhs_weap_kar98k", "Exile_Weapon_Taurus", "hlc_rifle_M1903A1", "rhs_weap_makarov_pmm", "hlc_rifle_M1903A1", "rhs_weap_M590_8RD", "rhs_weap_makarov_pmm", "rhs_weap_m38", "hlc_rifle_saiga12k", "rhs_weap_makarov_pm", "rhsusf_weap_m1911a1", "rhsusf_weap_m1911a1", "rhs_weap_makarov_pmm", "rhs_weap_makarov_pmm", "Exile_Weapon_Taurus", "hlc_rifle_saiga12k", "rhs_weap_makarov_pmm", "hlc_rifle_saiga12k", "rhs_weap_makarov_pmm", "Exile_Weapon_Taurus", "rhs_weap_makarov_pm", "rhs_weap_makarov_pm", "rhs_weap_M590_5RD", "Exile_Weapon_Taurus", "rhs_weap_kar98k", "hlc_rifle_saiga12k", "rhs_weap_makarov_pm", "rhsusf_weap_m1911a1", "rhs_weap_M590_5RD", "rhs_weap_makarov_pm", "rhs_weap_M590_8RD", "rhs_weap_makarov_pmm", "rhsusf_weap_m1911a1", "rhsusf_weap_glock17g4", "Exile_Weapon_Taurus", "rhsusf_weap_m1911a1", "rhsusf_weap_m1911a1", "Exile_Weapon_Taurus", "rhs_weap_M590_5RD", "rhs_weap_makarov_pm", "Exile_Weapon_Taurus", "rhs_weap_makarov_pm", "rhs_weap_kar98k", "hlc_rifle_M1903A1", "rhs_weap_m38", "rhs_weap_m38", "rhs_weap_makarov_pm", "rhs_weap_M590_5RD", "hlc_rifle_saiga12k", "hlc_rifle_saiga12k", "rhs_weap_makarov_pm", "rhs_weap_m38", "rhsusf_weap_m1911a1"};

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
		CivilianAmmo[] = {"rhsusf_8Rnd_Slug", "rhsusf_mag_7x45acp_MHPg", "rhs_mag_9x18_12_57N181S", "Exile_Magazine_10Rnd_303", "rhs_mag_9x18_8_57N181S", "rhsusf_mag_7x45acp_MHPg", "rhsusf_8Rnd_Slug", "rhs_mag_9x18_8_57N181S", "rhs_mag_9x18_12_57N181S", "Exile_Magazine_5Rnd_22LR", "rhsusf_mag_7x45acp_MHPg", "Exile_Magazine_8Rnd_9x18", "Exile_Magazine_8Rnd_9x18", "Exile_Magazine_5Rnd_22LR", "rhs_mag_9x18_12_57N181S", "rhs_mag_9x18_12_57N181S", "Exile_Magazine_5Rnd_22LR", "Exile_Magazine_8Rnd_9x18", "rhs_mag_9x18_12_57N181S", "Exile_Magazine_6Rnd_45ACP", "Exile_Magazine_8Rnd_9x18", "hlc_5rnd_3006_1903", "Exile_Magazine_5Rnd_22LR", "rhs_mag_9x18_12_57N181S", "rhsusf_5Rnd_00Buck", "Exile_Magazine_5Rnd_22LR", "rhs_mag_9x18_12_57N181S", "rhsgref_5Rnd_792x57_kar98k", "Exile_Magazine_6Rnd_45ACP", "rhsusf_mag_7x45acp_MHPg", "rhsgref_5Rnd_792x57_kar98k", "hlc_10rnd_12g_slug_S12", "Exile_Magazine_8Rnd_9x18", "Exile_Magazine_6Rnd_45ACP", "rhs_mag_9x18_12_57N181S", "rhsusf_mag_17Rnd_9x19_JHP", "rhs_mag_9x18_12_57N181S", "Exile_Magazine_8Rnd_9x18", "Exile_Magazine_8Rnd_9x18", "rhsgref_5Rnd_792x57_kar98k", "rhsgref_5Rnd_792x57_kar98k", "rhsusf_5Rnd_00Buck", "Exile_Magazine_8Rnd_9x18", "Exile_Magazine_6Rnd_45ACP", "rhs_mag_9x18_8_57N181S", "hlc_5rnd_3006_1903", "Exile_Magazine_5Rnd_22LR", "rhsgref_5Rnd_792x57_kar98k", "hlc_5rnd_3006_1903", "rhsusf_mag_7x45acp_MHPg", "rhsgref_5Rnd_762x54_m38", "Exile_Magazine_6Rnd_45ACP", "Exile_Magazine_10Rnd_303", "Exile_Magazine_5Rnd_22LR", "rhs_mag_9x18_8_57N181S", "rhsgref_5Rnd_762x54_m38", "rhs_mag_9x18_8_57N181S", "hlc_10rnd_12g_slug_S12", "Exile_Magazine_10Rnd_303", "rhs_mag_9x18_12_57N181S", "hlc_10rnd_12g_slug_S12", "rhsgref_5Rnd_792x57_kar98k", "rhsusf_8Rnd_Slug", "Exile_Magazine_8Rnd_9x18", "rhsgref_5Rnd_762x54_m38", "hlc_10rnd_12g_slug_S12", "Exile_Magazine_10Rnd_303", "Exile_Magazine_6Rnd_45ACP", "rhs_mag_9x18_12_57N181S", "Exile_Magazine_6Rnd_45ACP", "hlc_10rnd_12g_slug_S12", "rhs_mag_9x18_12_57N181S", "rhsusf_mag_7x45acp_MHPg", "rhs_mag_9x18_8_57N181S", "Exile_Magazine_6Rnd_45ACP", "Exile_Magazine_8Rnd_9x18", "hlc_5rnd_3006_1903", "rhsgref_5Rnd_762x54_m38", "rhsgref_5Rnd_792x57_kar98k", "rhsusf_mag_7x45acp_MHPg", "rhs_mag_9x18_12_57N181S", "Exile_Magazine_6Rnd_45ACP", "rhs_mag_9x18_12_57N181S", "rhsusf_8Rnd_Slug", "Exile_Magazine_6Rnd_45ACP", "rhs_mag_9x18_8_57N181S", "rhsgref_5Rnd_762x54_m38", "Exile_Magazine_6Rnd_45ACP", "Exile_Magazine_8Rnd_9x18", "rhsusf_mag_7x45acp_MHPg", "Exile_Magazine_6Rnd_45ACP", "rhsgref_5Rnd_792x57_kar98k", "rhsgref_5Rnd_762x54_m38", "rhs_mag_9x18_8_57N181S", "Exile_Magazine_6Rnd_45ACP", "Exile_Magazine_8Rnd_9x18", "Exile_Magazine_8Rnd_9x18", "Exile_Magazine_8Rnd_9x18", "Exile_Magazine_5Rnd_22LR", "rhsgref_5Rnd_792x57_kar98k", "hlc_10rnd_12g_slug_S12", "Exile_Magazine_8Rnd_9x18", "rhsusf_mag_7x45acp_MHPg", "rhsusf_mag_17Rnd_9x19_JHP", "rhsgref_5Rnd_762x54_m38", "Exile_Magazine_10Rnd_303", "rhsgref_5Rnd_792x57_kar98k", "Exile_Magazine_6Rnd_45ACP", "hlc_10rnd_12g_slug_S12", "hlc_5rnd_3006_1903", "Exile_Magazine_6Rnd_45ACP", "rhsgref_5Rnd_762x54_m38", "hlc_10rnd_12g_slug_S12", "rhsusf_5Rnd_00Buck", "Exile_Magazine_6Rnd_45ACP", "rhsusf_5Rnd_00Buck", "rhs_mag_9x18_8_57N181S", "rhsusf_mag_7x45acp_MHPg", "Exile_Magazine_8Rnd_9x18", "Exile_Magazine_6Rnd_45ACP", "rhs_mag_9x18_12_57N181S", "rhs_mag_9x18_12_57N181S", "Exile_Magazine_8Rnd_9x18", "rhsgref_5Rnd_762x54_m38", "rhs_mag_9x18_12_57N181S", "rhs_mag_9x18_8_57N181S", "rhs_mag_9x18_12_57N181S", "Exile_Magazine_6Rnd_45ACP", "rhs_mag_9x18_8_57N181S", "rhs_mag_9x18_8_57N181S", "rhsusf_8Rnd_Slug", "Exile_Magazine_8Rnd_9x18", "Exile_Magazine_6Rnd_45ACP", "rhs_mag_9x18_8_57N181S", "rhs_mag_9x18_8_57N181S", "rhs_mag_9x18_8_57N181S", "rhs_mag_9x18_12_57N181S", "Exile_Magazine_8Rnd_9x18", "rhsusf_mag_17Rnd_9x19_JHP", "rhsusf_mag_17Rnd_9x19_JHP", "hlc_10rnd_12g_slug_S12", "rhsusf_mag_17Rnd_9x19_JHP", "rhs_mag_9x18_8_57N181S", "Exile_Magazine_5Rnd_22LR", "Exile_Magazine_8Rnd_9x18", "rhs_mag_9x18_8_57N181S", "rhsusf_5Rnd_00Buck", "Exile_Magazine_5Rnd_22LR", "rhsgref_5Rnd_762x54_m38", "rhs_mag_9x18_8_57N181S", "hlc_10rnd_12g_slug_S12", "Exile_Magazine_6Rnd_45ACP", "rhs_mag_9x18_12_57N181S", "rhs_mag_9x18_8_57N181S", "rhs_mag_9x18_8_57N181S"};

		/*
			Percental Item Spawn Chances of Pistols:

			rhs_weap_pya           = 43.48%
			rhs_weap_makarov_pm    = 43.48%
			rhsusf_weap_glock17g4  = 4.35%
			rhs_weap_pp2000_folded = 4.35%
			hlc_smg_mp5k           = 4.35%
		*/
		Pistols[] = {"rhs_weap_pya", "rhs_weap_pya", "rhs_weap_makarov_pm", "rhs_weap_pya", "rhs_weap_makarov_pm", "rhs_weap_pya", "rhs_weap_pya", "rhs_weap_pya", "rhs_weap_pya", "rhs_weap_makarov_pm", "rhsusf_weap_glock17g4", "rhs_weap_makarov_pm", "rhs_weap_makarov_pm", "rhs_weap_pya", "rhs_weap_pya", "rhs_weap_makarov_pm", "hlc_smg_mp5k", "rhs_weap_makarov_pm", "rhs_weap_pp2000_folded", "rhs_weap_makarov_pm", "rhs_weap_makarov_pm", "rhs_weap_pya", "rhs_weap_makarov_pm"};

		/*
			Percental Item Spawn Chances of PistolAmmo:

			rhs_mag_9x19_17           = 43.48%
			rhs_mag_9x18_8_57N181S    = 43.48%
			rhsusf_mag_17Rnd_9x19_FMJ = 4.35%
			rhs_mag_9x19mm_7n21_20    = 4.35%
			hlc_30Rnd_9x19_B_MP5      = 4.35%
		*/
		PistolAmmo[] = {"rhs_mag_9x18_8_57N181S", "rhs_mag_9x18_8_57N181S", "rhs_mag_9x19_17", "rhs_mag_9x19_17", "rhs_mag_9x18_8_57N181S", "rhs_mag_9x19_17", "rhs_mag_9x19_17", "rhs_mag_9x18_8_57N181S", "rhs_mag_9x18_8_57N181S", "rhs_mag_9x19mm_7n21_20", "rhs_mag_9x19_17", "rhs_mag_9x19_17", "rhs_mag_9x18_8_57N181S", "rhs_mag_9x19_17", "rhs_mag_9x18_8_57N181S", "hlc_30Rnd_9x19_B_MP5", "rhs_mag_9x19_17", "rhs_mag_9x18_8_57N181S", "rhs_mag_9x19_17", "rhs_mag_9x18_8_57N181S", "rhsusf_mag_17Rnd_9x19_FMJ", "rhs_mag_9x18_8_57N181S", "rhs_mag_9x19_17"};

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
		SMG[] = {"rhs_weap_savz61", "rhs_weap_savz61", "rhs_weap_pp2000", "rhs_weap_savz61", "rhs_weap_pp2000", "rhs_weap_asval", "rhs_weap_pp2000", "rhs_weap_savz61", "hlc_smg_mp5k", "rhs_weap_pp2000", "rhs_weap_savz61", "hlc_smg_mp5a2", "rhs_weap_savz61", "rhs_weap_savz61", "rhs_weap_pp2000", "rhs_weap_savz61", "rhs_weap_asval", "rhs_weap_savz61", "rhs_weap_asval", "rhs_weap_pp2000", "rhs_weap_pp2000", "rhs_weap_asval", "rhs_weap_savz61", "rhs_weap_pp2000", "rhs_weap_pp2000", "rhs_weap_savz61", "hlc_smg_mp5a2", "rhs_weap_asval", "hlc_smg_mp5k", "rhs_weap_savz61", "rhs_weap_savz61", "rhs_weap_pp2000", "rhs_weap_savz61", "rhs_weap_savz61", "rhs_weap_pp2000", "rhs_weap_pp2000", "rhs_weap_pp2000", "hlc_smg_mp5a2", "rhs_weap_savz61", "hlc_smg_mp5k", "rhs_weap_savz61", "rhs_weap_savz61", "rhs_weap_pp2000", "rhs_weap_savz61", "rhs_weap_pp2000", "hlc_smg_mp5k", "rhs_weap_pp2000", "rhs_weap_savz61", "rhs_weap_savz61", "rhs_weap_pp2000", "rhs_weap_savz61", "hlc_smg_mp5k", "rhs_weap_savz61", "hlc_smg_mp5a4", "rhs_weap_asval", "hlc_smg_mp5a4", "rhs_weap_savz61", "rhs_weap_asval", "rhs_weap_asval", "rhs_weap_pp2000", "hlc_smg_mp5k", "rhs_weap_pp2000", "rhs_weap_pp2000", "rhs_weap_savz61", "rhs_weap_savz61", "hlc_smg_mp5a2", "hlc_smg_mp5k", "rhs_weap_pp2000", "rhs_weap_pp2000", "hlc_smg_mp5a4", "hlc_smg_mp5k", "rhsusf_weap_MP7A2", "rhs_weap_savz61", "hlc_smg_mp5a4", "rhs_weap_pp2000", "rhs_weap_pp2000", "rhs_weap_savz61", "rhs_weap_savz61", "rhs_weap_asval", "hlc_smg_mp5k", "rhs_weap_pp2000", "rhs_weap_pp2000", "rhs_weap_savz61", "hlc_smg_mp5a4", "rhs_weap_pp2000", "rhs_weap_pp2000", "hlc_smg_mp5a2", "rhs_weap_asval", "rhs_weap_pp2000", "hlc_smg_mp5k", "rhs_weap_pp2000"};

		/*
			Percental Item Spawn Chances of SMGAmmo:

			rhs_20rnd_9x39mm_SP5       = 12.35%
			hlc_30Rnd_9x19_B_MP5       = 6.17%
			hlc_30Rnd_9x19_GD_MP5      = 6.17%
			rhsusf_mag_40Rnd_46x30_FMJ = 1.23%
			rhs_mag_9x19mm_7n21_44     = 37.04%
			rhsgref_20rnd_765x17_vz61  = 37.04%
		*/
		SMGAmmo[] = {"rhs_mag_9x19mm_7n21_44", "rhs_mag_9x19mm_7n21_44", "rhs_20rnd_9x39mm_SP5", "rhs_mag_9x19mm_7n21_44", "rhsgref_20rnd_765x17_vz61", "rhsgref_20rnd_765x17_vz61", "rhs_mag_9x19mm_7n21_44", "rhs_mag_9x19mm_7n21_44", "rhs_mag_9x19mm_7n21_44", "rhs_20rnd_9x39mm_SP5", "rhsgref_20rnd_765x17_vz61", "rhs_mag_9x19mm_7n21_44", "rhs_mag_9x19mm_7n21_44", "rhs_mag_9x19mm_7n21_44", "rhsgref_20rnd_765x17_vz61", "rhsgref_20rnd_765x17_vz61", "hlc_30Rnd_9x19_B_MP5", "rhs_mag_9x19mm_7n21_44", "rhs_mag_9x19mm_7n21_44", "rhsgref_20rnd_765x17_vz61", "rhs_20rnd_9x39mm_SP5", "rhs_mag_9x19mm_7n21_44", "rhsgref_20rnd_765x17_vz61", "rhsgref_20rnd_765x17_vz61", "rhsgref_20rnd_765x17_vz61", "rhsgref_20rnd_765x17_vz61", "rhsgref_20rnd_765x17_vz61", "rhs_mag_9x19mm_7n21_44", "rhsusf_mag_40Rnd_46x30_FMJ", "rhsgref_20rnd_765x17_vz61", "hlc_30Rnd_9x19_B_MP5", "rhs_mag_9x19mm_7n21_44", "hlc_30Rnd_9x19_GD_MP5", "rhs_mag_9x19mm_7n21_44", "rhsgref_20rnd_765x17_vz61", "rhs_mag_9x19mm_7n21_44", "rhs_mag_9x19mm_7n21_44", "rhs_mag_9x19mm_7n21_44", "rhsgref_20rnd_765x17_vz61", "rhs_mag_9x19mm_7n21_44", "rhs_mag_9x19mm_7n21_44", "rhsgref_20rnd_765x17_vz61", "rhsgref_20rnd_765x17_vz61", "rhsgref_20rnd_765x17_vz61", "rhs_20rnd_9x39mm_SP5", "hlc_30Rnd_9x19_GD_MP5", "hlc_30Rnd_9x19_GD_MP5", "rhs_mag_9x19mm_7n21_44", "rhs_20rnd_9x39mm_SP5", "rhsgref_20rnd_765x17_vz61", "hlc_30Rnd_9x19_B_MP5", "rhsgref_20rnd_765x17_vz61", "rhs_mag_9x19mm_7n21_44", "rhs_mag_9x19mm_7n21_44", "hlc_30Rnd_9x19_B_MP5", "rhsgref_20rnd_765x17_vz61", "rhsgref_20rnd_765x17_vz61", "rhs_mag_9x19mm_7n21_44", "rhsgref_20rnd_765x17_vz61", "rhs_mag_9x19mm_7n21_44", "rhs_20rnd_9x39mm_SP5", "rhsgref_20rnd_765x17_vz61", "rhs_20rnd_9x39mm_SP5", "rhsgref_20rnd_765x17_vz61", "hlc_30Rnd_9x19_B_MP5", "rhs_mag_9x19mm_7n21_44", "hlc_30Rnd_9x19_GD_MP5", "rhsgref_20rnd_765x17_vz61", "rhs_mag_9x19mm_7n21_44", "rhsgref_20rnd_765x17_vz61", "rhs_mag_9x19mm_7n21_44", "rhsgref_20rnd_765x17_vz61", "rhsgref_20rnd_765x17_vz61", "rhsgref_20rnd_765x17_vz61", "rhsgref_20rnd_765x17_vz61", "rhs_mag_9x19mm_7n21_44", "rhs_mag_9x19mm_7n21_44", "hlc_30Rnd_9x19_GD_MP5", "rhs_20rnd_9x39mm_SP5", "rhs_20rnd_9x39mm_SP5", "rhs_20rnd_9x39mm_SP5"};

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
		Rifles[] = {"rhs_weap_ak104", "rhs_weap_m21a", "rhs_weap_ak74n_gp25", "rhs_weap_ak74m_plummag_npz", "rhs_weap_ak74m_gp25", "rhs_weap_ak74m_desert_npz", "rhs_weap_ak74m_2mag", "rhs_weap_akms", "rhs_weap_ak74m_2mag", "rhs_weap_ak104_zenitco01", "rhs_weap_ak74m_gp25", "hlc_rifle_FAL5061", "rhs_weap_ak74m_2mag_camo", "rhs_weap_aks74_2", "rhs_weap_ak105_zenitco01", "rhs_weap_ak74", "rhs_weap_ak74mr_gp25", "rhs_weap_aks74n_gp25_npz", "rhs_weap_aks74_gp25", "rhs_weap_ak74m_desert_npz", "rhs_weap_ak104_zenitco01_b33", "rhs_weap_ak74m", "rhs_weap_ak74", "rhs_weap_ak103", "rhs_weap_ak103_gp25_npz", "rhs_weap_ak74_2", "rhs_weap_aks74_gp25", "rhs_weap_ak105_npz", "rhs_weap_hk416d10", "rhs_weap_aks74n_npz", "rhs_weap_aks74_2", "hlc_rifle_FAL5000_RH", "hlc_rifle_aughbar_B", "rhs_weap_ak74", "rhs_weap_ak74m_fullplum", "rhs_weap_ak74m_fullplum_gp25", "rhs_weap_m21a", "rhs_weap_ak74n_gp25_npz", "rhs_weap_aks74un", "hlc_rifle_auga1carb_B", "hlc_rifle_FAL5000", "rhs_weap_ak74_gp25", "rhs_weap_ak103_npz", "rhs_weap_ak74m_fullplum_gp25_npz", "rhs_weap_ak74n_gp25_npz", "rhs_weap_ak104_zenitco01_b33", "rhs_weap_aks74n_gp25", "rhs_weap_ak103_2_npz", "rhs_weap_ak103_npz", "rhs_weap_ak105_zenitco01", "rhs_weap_m21a", "rhs_weap_ak105_zenitco01", "rhs_weap_ak74m_2mag", "rhs_weap_ak74n", "rhs_weap_m21s_pr", "hlc_rifle_FAL5061Rail", "hlc_rifle_auga1_b", "rhs_weap_ak103_1", "rhs_weap_ak74", "rhs_weap_ak105_zenitco01_b33", "rhs_weap_ak74n", "rhs_weap_akm", "rhs_weap_akm", "rhs_weap_aks74n_npz", "rhs_weap_aks74n_gp25", "rhs_weap_m21a_pr", "rhs_weap_ak74mr", "rhs_weap_aks74_2", "rhs_weap_aks74un", "rhs_weap_ak74m_gp25_npz", "rhs_weap_aks74_2", "rhs_weap_ak74m_2mag_npz", "rhs_weap_ak74m_desert", "rhs_weap_ak74_3", "SMA_ACRREMCQBGL_B", "rhs_weap_ak74m_fullplum_gp25_npz", "hlc_rifle_auga2_b", "hlc_rifle_FAL5000Rail", "rhs_weap_aks74n_gp25_npz", "rhs_weap_ak74m_2mag_npz", "rhs_weap_ak105", "rhs_weap_ak103_gp25_npz", "rhs_weap_ak74", "rhs_weap_aks74_2", "rhs_weap_m21s", "rhs_weap_ak74m_fullplum_gp25_npz", "rhs_weap_m21a_pr", "rhs_weap_ak105_npz", "hlc_rifle_vendimus", "rhs_weap_ak103_1_npz", "rhs_weap_ak74m_desert_npz", "rhs_weap_akm", "rhs_weap_ak74m_camo", "rhs_weap_ak74m_fullplum_npz", "rhs_weap_ak74m", "rhs_weap_aks74_gp25", "rhs_weap_ak74m_zenitco01", "rhs_weap_aks74u", "rhs_weap_ak74m_fullplum_gp25_npz", "rhs_weap_ak74mr", "rhs_weap_ak104_npz", "rhs_weap_aks74un", "rhs_weap_m21s", "rhs_weap_ak74m_fullplum_npz", "rhs_weap_ak103_zenitco01", "hlc_rifle_M14_Rail", "rhs_weap_ak105_zenitco01_b33", "rhs_weap_aks74n_npz", "rhs_weap_ak74m_2mag_camo", "rhs_weap_akms_gp25", "hlc_rifle_FAL5061", "rhs_weap_aks74", "rhs_weap_ak105", "SMA_ACRREMMOEblk", "rhs_weap_ak74n_npz", "rhs_weap_ak103_zenitco01_b33", "rhs_weap_akms", "rhs_weap_aks74n", "rhs_weap_ak74m_2mag", "rhs_weap_m21a", "rhs_weap_ak74m", "hlc_rifle_FAL5061Rail", "rhs_weap_ak74m_gp25", "hlc_rifle_auga1_b", "rhs_weap_m21s", "rhs_weap_aks74", "rhs_weap_ak74n_gp25_npz", "rhs_weap_ak74m_fullplum_gp25_npz", "rhs_weap_ak74m_gp25_npz", "rhs_weap_ak74m_camo_npz", "rhs_weap_ak104_zenitco01_b33", "rhs_weap_ak103_npz", "rhs_weap_ak74m_zenitco01", "rhs_weap_ak74n_gp25", "rhs_weap_aks74u", "rhs_weap_ak74n", "rhs_weap_ak74m_plummag", "rhs_weap_ak74m_plummag", "rhs_weap_aks74n_gp25", "rhs_weap_ak74n_gp25_npz", "rhs_weap_aks74", "rhs_weap_aks74n", "rhs_weap_aks74_gp25", "hlc_rifle_augsr_b", "rhs_weap_ak74m_gp25_npz", "hlc_rifle_auga1carb_B", "rhs_weap_ak74_2", "rhs_weap_aks74u", "hlc_rifle_M14_Rail", "rhs_weap_ak74m_plummag", "rhs_weap_m21s", "rhs_weap_ak104", "rhs_weap_ak105_npz", "rhs_weap_ak103_gp25", "rhs_weap_ak74m_2mag_camo", "rhs_weap_ak104", "rhs_weap_ak74n_gp25", "rhs_weap_akms", "rhs_weap_ak74m_zenitco01_b33", "rhs_weap_ak74m_fullplum_gp25", "rhs_weap_ak74m_2mag_npz", "rhs_weap_ak74n_gp25", "rhs_weap_ak74m_gp25_npz", "rhs_weap_ak74m_2mag", "rhs_weap_ak74m_desert", "SMA_Steyr_AUG_BLACK_F", "rhs_weap_ak74m_fullplum_npz", "rhs_weap_aks74u", "SMA_HK417_16in", "rhs_weap_ak74n_npz", "rhs_weap_akm", "rhs_weap_ak74m_camo", "rhs_weap_ak74m_fullplum", "rhs_weap_aks74n_npz", "rhs_weap_aks74n", "rhs_weap_ak105_zenitco01_b33", "rhs_weap_ak105_zenitco01", "rhs_weap_ak103_1", "rhs_weap_ak74m_gp25", "rhs_weap_ak74m_desert", "Exile_Weapon_AKS_Gold", "rhs_weap_ak74m_camo", "rhs_weap_ak105", "rhs_weap_ak103", "rhs_weap_ak74_gp25", "rhs_weap_ak103_1_npz", "rhs_weap_ak74m_desert", "rhs_weap_ak74m_plummag", "rhs_weap_ak105_npz", "rhs_weap_ak74m_plummag_npz", "rhs_weap_m21a_pr", "rhs_weap_ak74m_zenitco01_b33", "hlc_rifle_augsr_b", "rhs_weap_ak74m_2mag_npz", "rhs_weap_ak105", "rhs_weap_ak74m_npz", "rhs_weap_ak103_2", "rhs_weap_ak74n", "SMA_ACRREMblk", "rhs_weap_ak74m_desert_npz", "rhs_weap_ak74m_plummag", "rhs_weap_ak74m_camo_npz", "rhs_weap_ak103_gp25", "rhs_weap_g36kv", "rhs_weap_ak74_gp25", "rhs_weap_ak103_2_npz", "rhs_weap_ak105_npz", "rhs_weap_ak74n_gp25_npz", "rhs_weap_akm_gp25", "rhs_weap_ak74n", "rhs_weap_akms_gp25", "rhs_weap_aks74n", "rhs_weap_m21a_pr", "rhs_weap_ak74_2", "rhs_weap_aks74n_gp25_npz", "rhs_weap_m21s_pr", "rhs_weap_aks74un", "rhs_weap_ak74mr", "hlc_rifle_M14", "rhs_weap_aks74_gp25", "rhs_weap_ak103_2", "rhs_weap_ak74m_fullplum_npz", "rhs_weap_ak74m_camo", "rhs_weap_aks74u", "rhs_weap_akms", "rhs_weap_ak74mr_gp25", "rhs_weap_ak74m_plummag_npz", "rhs_weap_ak104_zenitco01", "rhs_weap_aks74n_gp25_npz", "rhs_weap_ak74_gp25", "rhs_weap_ak105_zenitco01", "rhs_weap_ak74_2", "rhs_weap_ak74m_2mag_camo", "rhs_weap_aks74un", "rhs_weap_ak103_1", "hlc_rifle_aughbar_B", "rhs_weap_ak74m_camo", "rhs_weap_akm_gp25", "rhs_weap_aks74", "rhs_weap_m21s_pr", "rhs_weap_ak74m", "rhs_weap_ak74m_plummag_npz", "rhs_weap_ak74m_gp25_npz", "rhs_weap_ak74mr_gp25", "rhs_weap_m21s_pr", "rhs_weap_ak74m_zenitco01_b33", "rhs_weap_ak74mr", "rhs_weap_ak103_2_npz", "rhs_weap_ak74m_zenitco01", "rhs_weap_ak74_gp25", "rhs_weap_ak103_gp25_npz", "rhs_weap_ak74_3", "rhs_weap_ak74_3", "rhs_weap_ak103_1_npz", "hlc_rifle_FAL5000", "rhs_weap_ak74n_gp25", "rhs_weap_aks74", "rhs_weap_ak74m_fullplum_gp25", "rhs_weap_ak74m_npz", "rhs_weap_ak74_3", "rhs_weap_aks74n_gp25", "rhs_weap_ak74m_plummag_npz", "rhs_weap_ak74m_fullplum", "rhs_weap_ak74m_desert", "rhs_weap_ak74m_zenitco01_b33", "rhs_weap_aks74n", "rhs_weap_ak103_zenitco01", "rhs_weap_ak74m_fullplum_gp25", "rhs_weap_ak74m_camo_npz", "rhs_weap_ak103_2", "hlc_rifle_auga2_b", "rhs_weap_ak74mr_gp25", "rhs_weap_ak104_npz", "rhs_weap_akms_gp25", "rhs_weap_ak74m_2mag_camo", "rhs_weap_ak103_zenitco01_b33", "rhs_weap_ak74m_npz", "rhs_weap_ak74m_2mag_npz", "rhs_weap_ak74m_fullplum", "rhs_weap_ak74m_npz", "rhs_weap_ak103_zenitco01_b33", "rhs_weap_ak74mr", "rhs_weap_akm_gp25", "rhs_weap_ak74mr_gp25", "rhs_weap_akm_gp25", "rhs_weap_aks74n_npz", "hlc_rifle_FAL5000Rail", "rhs_weap_ak74m_npz", "hlc_rifle_g3a3", "rhs_weap_ak74m_gp25", "rhs_weap_ak74m_camo_npz", "rhs_weap_ak74m_zenitco01_b33", "rhs_weap_ak74m_zenitco01", "rhs_weap_ak103_zenitco01", "rhs_weap_ak74n_npz", "hlc_rifle_FAL5000_RH", "rhs_weap_akms_gp25", "rhs_weap_ak103_gp25", "rhs_weap_ak104_npz", "hlc_rifle_M14", "rhs_weap_ak74_3", "rhs_weap_aks74n_gp25_npz", "rhs_weap_ak74n_npz", "rhs_weap_ak74m_fullplum_gp25", "SMA_ACRREMGL_B", "rhs_weap_aks74n_gp25", "rhs_weap_ak105_zenitco01_b33", "rhs_weap_ak74m_zenitco01", "rhs_weap_ak74m_fullplum_npz", "rhs_weap_ak103", "rhs_weap_ak105_zenitco01_b33", "rhs_weap_ak74_2", "rhs_weap_ak104_zenitco01", "rhs_weap_ak105", "rhs_weap_ak74m_desert_npz", "rhs_weap_ak74n_npz", "rhs_weap_ak74m", "rhs_weap_ak74m_camo_npz", "rhs_weap_ak74m_fullplum"};

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
		RifleAmmo[] = {"SMA_30Rnd_68x43_BT", "rhs_30Rnd_762x39mm", "rhs_30Rnd_762x39mm", "hlc_20rnd_762x51_b_G3", "rhsgref_30rnd_556x45_m21", "rhs_30Rnd_545x39_AK", "rhsgref_30rnd_556x45_m21", "rhs_30Rnd_762x39mm", "rhs_30Rnd_545x39_AK", "rhs_30Rnd_545x39_AK", "rhs_30Rnd_762x39mm", "rhsgref_30rnd_556x45_m21", "hlc_20Rnd_762x51_B_M14", "hlc_20Rnd_762x51_B_fal", "hlc_30Rnd_556x45_SPR_AUG", "rhs_30Rnd_545x39_AK", "rhs_30Rnd_545x39_AK", "rhs_30Rnd_762x39mm", "rhs_30Rnd_762x39mm", "rhs_30Rnd_545x39_AK", "rhsgref_30rnd_556x45_m21", "hlc_30Rnd_556x45_SPR_AUG", "hlc_30Rnd_556x45_SPR_AUG", "rhsgref_30rnd_556x45_m21", "rhs_30Rnd_762x39mm", "hlc_20Rnd_762x51_B_fal", "rhs_30Rnd_762x39mm", "SMA_20Rnd_762x51mm_M80A1_EPR_Tracer", "rhs_30Rnd_762x39mm", "rhs_30Rnd_762x39mm", "SMA_30Rnd_68x43_BT", "rhsgref_30rnd_556x45_m21", "hlc_20Rnd_762x51_B_M14", "SMA_30Rnd_556x45_M855A1", "rhs_mag_30Rnd_556x45_Mk262_Stanag", "rhsgref_30rnd_556x45_m21", "hlc_20Rnd_762x51_B_fal", "rhs_30Rnd_545x39_AK", "rhs_30Rnd_545x39_AK", "hlc_20Rnd_762x51_B_fal", "hlc_20Rnd_762x51_B_fal", "29rnd_300BLK_STANAG", "rhs_30Rnd_545x39_AK", "rhs_30Rnd_545x39_AK", "rhs_30Rnd_545x39_AK", "rhs_30Rnd_545x39_AK", "150Rnd_556x45_Drum_Mag_F", "rhs_30Rnd_545x39_AK", "hlc_30Rnd_556x45_SPR_AUG", "hlc_20Rnd_762x51_B_fal", "hlc_30Rnd_556x45_SPR_AUG", "hlc_20Rnd_762x51_B_fal", "rhs_30Rnd_545x39_AK", "rhs_30Rnd_545x39_AK", "rhsgref_30rnd_556x45_m21", "rhsgref_30rnd_556x45_m21", "rhsgref_30rnd_556x45_m21", "hlc_20Rnd_762x51_B_M14", "hlc_20Rnd_762x51_B_fal"};

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
		RifleAttachments[] = {"rhs_acc_pgo7v", "rhs_acc_rakursPM", "rhsusf_acc_harris_swivel", "rhsusf_acc_grip2", "rhs_acc_rakursPM", "rhs_acc_perst3_2dp_h", "rhs_acc_1p29", "rhs_acc_harris_swivel", "rhs_acc_1p29", "rhsusf_acc_M8541_low_d", "rhs_acc_grip_ffg2", "rhs_bipod", "rhs_acc_dh520x56", "rhs_weap_optic_smaw", "rhsusf_acc_ACOG_d", "rhs_acc_1pn93_2", "rhs_acc_ekp1", "rhsusf_acc_SpecterDR", "rhsusf_acc_anpeq15side", "rhsusf_acc_anpeq15", "rhs_acc_perst3_2dp_light_h", "rhsusf_acc_SpecterDR_D", "rhs_acc_2dpZenit", "rhsusf_acc_SpecterDR", "rhs_acc_pgo7v", "rhsusf_acc_grip1", "rhs_acc_dh520x56", "rhsusf_acc_M8541_low_wd", "rhsusf_acc_anpeq15", "rhs_acc_nita", "rhsusf_acc_ACOG_MDO", "rhs_acc_dtk3", "rhs_acc_1pn93_1", "rhsusf_acc_premier_anpvs27", "rhs_acc_1p63", "rhsusf_acc_ACOG_d", "rhs_acc_pso1m2", "rhs_acc_1p78", "rhsusf_acc_M952V", "rhsusf_acc_premier_low", "rhsusf_acc_grip3", "rhs_acc_dh520x56", "rhsusf_acc_ACOG_MDO", "rhs_acc_grip_ffg2", "rhsusf_acc_premier", "rhsusf_acc_anpeq15side", "rhsusf_acc_anpeq15A", "rhsusf_acc_M8541_low_wd", "rhsusf_acc_M8541_low", "rhs_acc_grip_rk6", "rhs_weap_optic_smaw", "rhs_acc_ekp1", "rhs_bipod", "rhs_acc_1p63", "rhsusf_acc_anpeq15", "rhs_acc_nita", "rhsusf_acc_SpecterDR_OD", "rhsusf_acc_ACOG_wd", "rhsusf_acc_omega9k", "rhsusf_acc_grip2_tan", "rhs_acc_1p78", "rhs_acc_pkas", "rhs_acc_grip_rk6", "rhs_acc_2dpZenit_ris", "rhsusf_acc_M8541_low", "rhsusf_acc_SpecterDR_A_3d", "rhs_weap_optic_smaw", "rhs_acc_2dpZenit_ris", "rhsusf_acc_harris_swivel", "rhsusf_acc_grip2_tan", "rhs_acc_grip_ffg2", "rhs_acc_perst1ik_ris", "rhs_acc_perst3", "rhs_acc_2dpZenit_ris", "rhsusf_acc_grip1", "rhs_acc_pso1m2", "rhsusf_acc_M952V", "rhs_acc_dtk4short", "rhsusf_acc_grip1", "rhs_bipod", "rhs_acc_grip_rk6", "rhsusf_acc_SpecterDR_D", "rhsusf_acc_grip3", "rhsusf_acc_harris_swivel", "rhsusf_acc_SpecterDR_OD", "rhs_acc_dtk1l", "rhs_acc_rakursPM", "rhsusf_acc_grip3", "rhsusf_acc_SpecterDR", "rhs_weap_optic_smaw", "rhsusf_acc_premier_anpvs27", "rhs_acc_dh520x56", "rhs_acc_grip_rk2", "rhsusf_acc_grip3_tan", "rhs_acc_perst3_top", "rhs_acc_dh520x56", "rhsusf_acc_SpecterDR_OD", "rhsusf_acc_SpecterDR_A_3d", "rhsusf_acc_grip2_tan", "rhs_acc_perst1ik", "rhsusf_acc_grip3_tan", "rhsusf_acc_M8541", "rhs_acc_1p78", "rhs_acc_perst3_2dp_light_h", "rhsusf_acc_grip2", "rhs_acc_1p29", "rhs_acc_1pn93_2", "rhs_acc_pbs1", "rhs_acc_2dpZenit", "rhsusf_acc_premier", "rhs_acc_grip_rk6", "rhsusf_acc_grip2", "rhsusf_acc_M8541_low_d", "rhsusf_acc_M952V", "rhs_acc_perst3", "rhsusf_acc_grip3_tan", "rhs_acc_grip_ffg2", "rhs_acc_grip_rk6", "rhs_acc_perst3", "rhs_acc_perst3_2dp_light_h", "rhs_acc_grip_rk2", "rhsusf_acc_SpecterDR_OD", "rhs_acc_pso1m2", "rhs_acc_pgo7v", "rhsusf_acc_ACOG_MDO", "rhsusf_acc_SpecterDR_OD", "rhsusf_acc_premier_low", "rhsusf_acc_ACOG_wd", "rhsusf_acc_premier_anpvs27", "rhsusf_acc_anpeq15_bk_light", "rhsusf_acc_ACOG_d", "rhsusf_acc_premier_low", "rhsusf_acc_anpeq15_light", "rhs_acc_dtk", "rhsusf_acc_premier_low", "rhs_acc_1pn93_1", "rhsusf_acc_anpeq15side", "rhs_acc_perst1ik", "rhsusf_acc_SpecterDR_A_3d", "rhsusf_acc_premier_anpvs27", "rhsusf_acc_ACOG_RMR", "rhs_acc_harris_swivel", "rhs_acc_dtk4screws", "rhsusf_acc_anpeq15A", "rhs_acc_perst1ik", "rhsusf_acc_SpecterDR_A_3d", "rhsusf_acc_premier", "rhsusf_acc_anpeq15_light", "rhs_acc_dtk4long", "rhsusf_acc_anpeq15_bk_light", "rhsusf_acc_grip3_tan", "rhs_acc_grip_rk2", "rhsusf_acc_premier_anpvs27", "rhs_acc_perst1ik_ris", "rhsusf_acc_premier", "rhsusf_acc_SpecterDR_A_3d", "rhs_acc_1p63", "rhs_acc_1pn93_2", "rhs_acc_grip_rk2", "rhs_acc_pkas", "rhsusf_acc_grip1", "rhs_acc_tgpa", "rhsusf_acc_SpecterDR_D", "rhsusf_acc_anpeq15_light", "rhsusf_acc_SpecterDR_D", "rhs_acc_nita", "rhs_acc_2dpZenit", "rhs_acc_uuk", "rhsusf_acc_ACOG_RMR", "rhs_acc_grip_rk2", "rhs_acc_pkas", "rhsusf_acc_SpecterDR_D", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_grip3", "rhs_acc_rakursPM", "rhs_acc_1pn93_1", "rhs_acc_dtk1", "rhsusf_acc_grip3_tan", "rhs_acc_perst3_top", "rhsusf_acc_SpecterDR", "rhsusf_acc_anpeq15_bk", "rhs_acc_rakursPM", "rhsusf_acc_grip2", "rhs_acc_ak5", "rhsusf_acc_SpecterDR", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_ACOG_wd", "rhsusf_acc_M8541", "rhs_acc_perst3_2dp_h", "rhs_acc_ekp1", "rhsusf_acc_grip2_tan", "rhsusf_acc_grip2_tan", "rhsusf_acc_grip1", "rhs_acc_grip_ffg2", "rhsusf_acc_premier_low", "rhsusf_acc_grip2", "rhs_acc_perst3_top", "rhsusf_acc_anpeq15A", "rhs_acc_harris_swivel", "rhsusf_acc_premier", "rhs_acc_perst3_2dp_h", "rhs_acc_perst1ik_ris", "rhsusf_acc_anpeq15_bk_light", "rhsusf_acc_ACOG_RMR", "rhs_weap_optic_smaw", "rhsusf_acc_grip3"};

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
		LMG[] = {"rhs_weap_pkm", "rhs_weap_pkm", "rhs_weap_pkm", "rhs_weap_pkm", "rhs_weap_pkp", "lmg_UK59", "rhs_weap_pkp", "rhs_weap_pkp", "rhs_weap_pkp", "lmg_UK59", "hlc_lmg_MG42", "hlc_lmg_MG3KWS_b", "rhs_weap_pkm", "rhs_weap_pkm", "rhs_weap_m27iar_grip", "rhs_weap_pkm", "rhs_weap_m84", "rhs_weap_pkp", "rhs_weap_m84", "lmg_UK59", "rhs_weap_pkp", "lmg_UK59", "rhs_weap_m84", "lmg_UK59", "rhs_weap_m27iar_grip", "rhs_weap_pkp", "rhs_weap_pkp", "rhs_weap_pkm", "lmg_UK59", "hlc_lmg_MG42", "lmg_UK59", "rhs_weap_m84", "hlc_lmg_MG42", "rhs_weap_pkm", "rhs_weap_m249_pip", "rhs_weap_m84", "rhs_weap_m27iar_grip", "rhs_weap_pkp", "rhs_weap_pkp", "rhs_weap_pkp", "rhs_weap_pkm", "rhs_weap_pkp", "rhs_weap_pkm", "lmg_UK59", "rhs_weap_pkm", "rhs_weap_m84", "lmg_UK59", "rhs_weap_pkm", "rhs_weap_pkm", "lmg_UK59", "sma_minimi_mk3_762tlb_wdl", "lmg_UK59", "rhs_weap_m84", "rhs_weap_pkp", "rhs_weap_pkm", "lmg_UK59", "rhs_weap_pkp", "hlc_lmg_MG42", "rhs_weap_pkm", "rhs_weap_pkp", "rhs_weap_m27iar_grip", "rhs_weap_pkp", "rhs_weap_pkp", "rhs_weap_m84", "lmg_UK59", "lmg_UK59", "rhs_weap_pkm", "lmg_UK59", "rhs_weap_pkp", "rhs_weap_m27iar_grip", "rhs_weap_m84", "rhs_weap_pkm", "lmg_UK59", "hlc_lmg_MG42", "lmg_UK59", "rhs_weap_pkm", "lmg_UK59", "lmg_UK59", "rhs_weap_pkm", "lmg_UK59", "rhs_weap_pkp", "rhs_weap_pkp", "rhs_weap_m84"};

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
		LMGAmmo[] = {"rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR", "50Rnd_UK59_762x54_Tracer_Green", "rhs_100Rnd_762x54mmR", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", "rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR", "rhssaf_250Rnd_762x54R", "rhssaf_250Rnd_762x54R", "rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR", "rhs_200rnd_556x45_M_SAW", "50Rnd_UK59_762x54_Tracer_Green", "hlc_200Rnd_792x57_B_MG42", "rhs_100Rnd_762x54mmR", "rhssaf_250Rnd_762x54R", "50Rnd_UK59_762x54_Tracer_Green", "rhs_100Rnd_762x54mmR", "rhssaf_250Rnd_762x54R", "rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR", "hlc_200Rnd_792x57_B_MG42", "50Rnd_UK59_762x54_Tracer_Green", "rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR", "50Rnd_UK59_762x54_Tracer_Green", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", "rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR", "50Rnd_UK59_762x54_Tracer_Green", "50Rnd_UK59_762x54_Tracer_Green", "rhs_100Rnd_762x54mmR", "50Rnd_UK59_762x54_Tracer_Green", "50Rnd_UK59_762x54_Tracer_Green", "50Rnd_UK59_762x54_Tracer_Green", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", "rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR", "hlc_250Rnd_762x51_Barrier_MG3", "50Rnd_UK59_762x54_Tracer_Green", "rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR", "hlc_200Rnd_792x57_B_MG42", "rhs_100Rnd_762x54mmR", "50Rnd_UK59_762x54_Tracer_Green", "50Rnd_UK59_762x54_Tracer_Green", "50Rnd_UK59_762x54_Tracer_Green", "rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR", "50Rnd_UK59_762x54_Tracer_Green", "rhs_100Rnd_762x54mmR", "rhssaf_250Rnd_762x54R", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", "hlc_200Rnd_792x57_B_MG42", "50Rnd_UK59_762x54_Tracer_Green", "rhssaf_250Rnd_762x54R", "hlc_200Rnd_792x57_B_MG42", "rhs_100Rnd_762x54mmR", "50Rnd_UK59_762x54_Tracer_Green", "rhs_100Rnd_762x54mmR", "rhssaf_250Rnd_762x54R", "rhs_100Rnd_762x54mmR", "rhssaf_250Rnd_762x54R", "50Rnd_UK59_762x54_Tracer_Green", "rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR", "SMA_150Rnd_762_M80A1", "rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR", "rhs_100Rnd_762x54mmR", "rhssaf_250Rnd_762x54R", "50Rnd_UK59_762x54_Tracer_Green", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", "50Rnd_UK59_762x54_Tracer_Green", "rhssaf_250Rnd_762x54R"};

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
		Snipers[] = {"rhs_weap_svdp", "rhs_weap_svdp_npz", "rhs_weap_svdp_wd_npz", "rhs_weap_vss", "rhs_weap_svdp_wd", "rhs_weap_svdp_wd_npz", "rhs_weap_svdp", "rhs_weap_svdp", "rhs_weap_svdp_wd_npz", "rhs_weap_vss_grip_npz", "rhs_weap_svdp", "rhs_weap_m24sws", "rhs_weap_svdp_npz", "hlc_rifle_M14_Rail", "rhs_weap_svdp", "rhs_weap_svdp_wd_npz", "rhs_weap_vss", "rhs_weap_svdp", "rhs_weap_svdp_wd_npz", "rhs_weap_svdp", "hlc_rifle_augsrhbar_b", "rhs_weap_svds_npz", "rhs_weap_svdp_wd", "rhs_weap_vss_grip", "rhs_weap_svdp", "rhs_weap_svdp", "rhs_weap_svdp_wd", "rhs_weap_svds", "rhs_weap_svds", "hlc_rifle_augsrhbar_b", "rhs_weap_svdp", "rhs_weap_m24sws", "hlc_rifle_M14_Rail", "rhs_weap_svdp", "rhs_weap_svdp_wd", "rhs_weap_vss_grip", "rhs_weap_svdp", "rhs_weap_svdp_wd", "rhs_weap_vss_grip_npz", "rhs_weap_svdp_wd_npz", "rhs_weap_svdp", "hlc_rifle_augsrhbar_b", "rhs_weap_m24sws", "rhs_weap_svdp_npz", "rhs_weap_svdp_wd_npz", "rhs_weap_svds", "rhs_weap_svdp_wd_npz", "rhs_weap_svdp", "rhs_weap_svdp", "rhs_weap_svdp_wd_npz", "rhs_weap_svdp_npz", "rhs_weap_svds", "rhs_weap_m24sws", "rhs_weap_svdp", "hlc_rifle_M14_Rail", "hlc_rifle_M14_Rail", "rhs_weap_svdp_wd_npz", "rhs_weap_svdp_wd_npz", "rhs_weap_svdp_wd_npz", "rhs_weap_svdp", "rhs_weap_svdp_wd_npz", "hlc_rifle_awmagnum", "rhs_weap_svdp", "hlc_rifle_augsrhbar_b", "hlc_rifle_M14_Rail", "rhs_weap_svdp_wd", "rhs_weap_svdp_wd", "rhs_weap_vss_grip_npz", "rhs_weap_vss", "hlc_rifle_augsrhbar_b", "rhs_weap_svdp", "rhs_weap_m82a1", "hlc_rifle_M14_Rail", "hlc_rifle_M14_Rail", "rhs_weap_svdp", "hlc_rifle_M14_Rail", "rhs_weap_svdp_wd", "rhs_weap_svdp", "rhs_weap_m24sws", "rhs_weap_svdp_wd", "rhs_weap_svds", "hlc_rifle_M14_Rail", "rhs_weap_svdp", "rhs_weap_svdp_npz", "rhs_weap_svds_npz", "rhs_weap_svdp_npz", "rhs_weap_svdp_wd_npz", "rhs_weap_svdp", "rhs_weap_svdp_npz", "rhs_weap_svdp", "rhs_weap_svdp", "rhs_weap_svdp_npz", "rhs_weap_svdp_wd", "rhs_weap_svdp", "rhs_weap_svds", "rhs_weap_t5000", "hlc_rifle_M14_Rail", "rhs_weap_svdp_wd", "rhs_weap_svdp", "rhs_weap_svdp_wd", "rhs_weap_vss_npz", "rhs_weap_svdp_wd", "rhs_weap_svds", "rhs_weap_svdp_wd", "rhs_weap_svdp", "rhs_weap_svdp", "rhs_weap_svdp_wd", "rhs_weap_svdp", "rhs_weap_svdp", "hlc_rifle_M14_Rail", "rhs_weap_svds_npz", "rhs_weap_m24sws", "rhs_weap_vss_npz", "hlc_rifle_M14_Rail", "rhs_weap_svdp", "rhs_weap_svdp", "hlc_rifle_augsrhbar_b", "hlc_rifle_augsrhbar_b", "hlc_rifle_M14_Rail", "rhs_weap_svdp_npz", "rhs_weap_svds", "hlc_rifle_augsrhbar_b", "rhs_weap_svdp_wd", "hlc_rifle_augsrhbar_b", "rhs_weap_m24sws", "hlc_rifle_augsrhbar_b", "rhs_weap_svds", "rhs_weap_svds_npz", "rhs_weap_vss_grip_npz", "rhs_weap_svdp_wd_npz", "rhs_weap_svdp", "rhs_weap_svds_npz", "rhs_weap_t5000", "rhs_weap_svdp", "rhs_weap_svds", "rhs_weap_svds_npz", "rhs_weap_svdp", "rhs_weap_svds", "rhs_weap_svdp", "hlc_rifle_augsrhbar_b", "rhs_weap_vss", "rhs_weap_svdp_wd", "rhs_weap_t5000", "rhs_weap_svds_npz", "rhs_weap_svdp", "hlc_rifle_M14_Rail", "rhs_weap_svdp", "hlc_rifle_M14_Rail", "rhs_weap_svdp", "hlc_rifle_M14_Rail", "rhs_weap_svdp_wd", "rhs_weap_svds", "rhs_weap_svdp_npz", "rhs_weap_svds", "rhs_weap_svdp_npz", "rhs_weap_svds_npz", "rhs_weap_svdp_npz", "rhs_weap_svdp_npz", "rhs_weap_svdp", "rhs_weap_svdp_wd_npz", "rhs_weap_svdp_npz", "rhs_weap_vss_grip", "rhs_weap_svdp_wd_npz", "rhs_weap_svdp", "hlc_rifle_augsrhbar_b", "rhs_weap_svdp_npz", "rhs_weap_svds", "rhs_weap_svds", "rhs_weap_m24sws", "rhs_weap_svdp_wd_npz", "rhs_weap_svds", "hlc_rifle_M14_Rail", "rhs_weap_svds_npz", "rhs_weap_svdp_npz", "hlc_rifle_M14_Rail", "rhs_weap_svdp", "hlc_rifle_M14_Rail", "rhs_weap_svdp", "rhs_weap_svds_npz", "rhs_weap_svdp_npz", "rhs_weap_svdp_wd", "rhs_weap_svdp_npz", "rhs_weap_vss_npz", "rhs_weap_svds", "rhs_weap_m24sws", "rhs_weap_vss_grip", "rhs_weap_vss", "rhs_weap_svdp", "rhs_weap_vss_grip", "hlc_rifle_augsrhbar_b", "rhs_weap_svdp_wd_npz", "rhs_weap_m24sws", "rhs_weap_vss_npz", "hlc_rifle_M14_Rail", "rhs_weap_svdp", "rhs_weap_vss_grip_npz", "rhs_weap_svds", "rhs_weap_svds", "rhs_weap_svdp", "rhs_weap_svdp", "rhs_weap_svdp_wd_npz", "hlc_rifle_augsrhbar_b", "rhs_weap_svdp", "hlc_rifle_augsrhbar_b", "rhs_weap_svdp", "rhs_weap_svdp_wd", "rhs_weap_svds", "rhs_weap_svdp_npz", "rhs_weap_vss_npz", "rhs_weap_svdp_npz"};

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
		SniperAmmo[] = {"hlc_20Rnd_762x51_mk316_M14", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "hlc_40Rnd_556x45_SPR_AUG", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_10rnd_9x39mm_SP5", "rhs_10Rnd_762x54mmR_7N1", "rhs_10rnd_9x39mm_SP5", "hlc_20Rnd_762x51_mk316_M14", "hlc_40Rnd_556x45_SPR_AUG", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_10rnd_9x39mm_SP5", "rhsusf_5Rnd_762x51_m993_Mag", "rhs_10Rnd_762x54mmR_7N1", "hlc_40Rnd_556x45_SPR_AUG", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "hlc_20Rnd_762x51_mk316_M14", "hlc_20Rnd_762x51_mk316_M14", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_10rnd_9x39mm_SP5", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_10rnd_9x39mm_SP5", "rhsusf_mag_10Rnd_STD_50BMG_M33", "rhsusf_5Rnd_762x51_m993_Mag", "hlc_20Rnd_762x51_mk316_M14", "hlc_40Rnd_556x45_SPR_AUG", "hlc_40Rnd_556x45_SPR_AUG", "rhs_10rnd_9x39mm_SP5", "hlc_40Rnd_556x45_SPR_AUG", "rhs_10Rnd_762x54mmR_7N1", "rhs_5Rnd_338lapua_t5000", "rhs_5Rnd_338lapua_t5000", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "hlc_40Rnd_556x45_SPR_AUG", "hlc_20Rnd_762x51_mk316_M14", "rhsusf_5Rnd_762x51_m993_Mag", "rhs_10Rnd_762x54mmR_7N1", "rhs_10rnd_9x39mm_SP5", "rhs_10rnd_9x39mm_SP5", "rhs_10Rnd_762x54mmR_7N1", "hlc_20Rnd_762x51_mk316_M14", "rhs_10Rnd_762x54mmR_7N1", "rhs_10rnd_9x39mm_SP5", "rhs_10Rnd_762x54mmR_7N1", "rhsusf_5Rnd_762x51_m993_Mag", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_10rnd_9x39mm_SP5", "hlc_40Rnd_556x45_SPR_AUG", "rhs_10Rnd_762x54mmR_7N1", "rhs_10rnd_9x39mm_SP5", "hlc_20Rnd_762x51_mk316_M14", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "hlc_20Rnd_762x51_mk316_M14", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "hlc_40Rnd_556x45_SPR_AUG", "rhs_10rnd_9x39mm_SP5", "rhs_5Rnd_338lapua_t5000", "rhsusf_5Rnd_762x51_m993_Mag", "rhs_10Rnd_762x54mmR_7N1", "rhsusf_5Rnd_762x51_m993_Mag", "rhsusf_5Rnd_762x51_m993_Mag", "hlc_20Rnd_762x51_mk316_M14", "hlc_20Rnd_762x51_mk316_M14", "rhsusf_5Rnd_762x51_m993_Mag", "hlc_40Rnd_556x45_SPR_AUG", "hlc_40Rnd_556x45_SPR_AUG", "hlc_40Rnd_556x45_SPR_AUG", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "hlc_20Rnd_762x51_mk316_M14", "rhs_10Rnd_762x54mmR_7N1", "hlc_20Rnd_762x51_mk316_M14", "rhs_10Rnd_762x54mmR_7N1", "rhs_10rnd_9x39mm_SP5", "rhs_10Rnd_762x54mmR_7N1", "hlc_20Rnd_762x51_mk316_M14", "rhs_10Rnd_762x54mmR_7N1", "rhs_10rnd_9x39mm_SP5", "hlc_5rnd_300WM_FMJ_AWM", "rhsusf_5Rnd_762x51_m993_Mag", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "hlc_40Rnd_556x45_SPR_AUG", "rhs_10rnd_9x39mm_SP5", "rhs_10Rnd_762x54mmR_7N1", "rhs_10rnd_9x39mm_SP5", "rhs_10rnd_9x39mm_SP5", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1", "hlc_20Rnd_762x51_mk316_M14", "rhs_10Rnd_762x54mmR_7N1", "rhs_10rnd_9x39mm_SP5", "hlc_40Rnd_556x45_SPR_AUG", "rhs_10rnd_9x39mm_SP5", "rhs_10rnd_9x39mm_SP5", "hlc_40Rnd_556x45_SPR_AUG", "rhs_10Rnd_762x54mmR_7N1", "rhsusf_5Rnd_762x51_m993_Mag", "rhs_10Rnd_762x54mmR_7N1", "rhs_10Rnd_762x54mmR_7N1"};

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
		SniperAttachments[] = {"hlc_optic_LRT_m14", "rhs_acc_pso1m2", "rhsusf_acc_LEUPOLDMK4_2", "rhs_acc_pso1m2", "rhs_acc_pso1m2", "optic_LRPS", "rhs_acc_pso1m21", "rhsusf_acc_LEUPOLDMK4", "optic_LRPS", "rhs_acc_pso1m21", "optic_AMS", "rhs_acc_pso1m21", "rhs_acc_pso1m21", "rhs_acc_pso1m2", "optic_AMS", "rhs_acc_pso1m21", "hlc_optic_LRT_m14", "rhs_acc_pso1m21", "optic_LRPS", "rhsusf_acc_LEUPOLDMK4", "rhsusf_acc_LEUPOLDMK4", "hlc_optic_LRT_m14", "rhs_acc_pso1m2", "rhs_acc_pso1m21", "hlc_optic_LRT_m14", "rhs_acc_pso1m2", "rhs_acc_pso1m21", "optic_AMS", "rhs_acc_pso1m2", "rhs_acc_pso1m2", "hlc_optic_LRT_m14", "rhs_acc_pso1m2", "rhs_acc_pso1m21", "rhs_acc_pso1m21", "rhs_acc_pso1m21", "rhsusf_acc_LEUPOLDMK4_2", "rhs_acc_pso1m21", "rhs_acc_pso1m21", "rhs_acc_pso1m21", "rhs_acc_pso1m2", "optic_LRPS", "rhs_acc_pso1m21", "rhs_acc_pso1m21", "optic_AMS", "rhs_acc_pso1m2", "hlc_optic_LRT_m14", "rhsusf_acc_LEUPOLDMK4", "rhs_acc_pso1m21", "rhsusf_acc_LEUPOLDMK4_2", "rhs_acc_pso1m2", "rhs_acc_pso1m21", "hlc_optic_LRT_m14", "rhsusf_acc_LEUPOLDMK4", "rhs_acc_pso1m2", "rhs_acc_pso1m2", "rhsusf_acc_LEUPOLDMK4_2", "rhs_acc_pso1m2", "rhs_acc_pso1m21", "rhs_acc_pso1m21", "rhs_acc_pso1m2", "rhs_acc_pso1m2", "rhs_acc_pso1m2", "hlc_optic_LRT_m14", "rhs_acc_pso1m21", "optic_AMS", "rhs_acc_pso1m21", "rhsusf_acc_LEUPOLDMK4_2", "rhsusf_acc_LEUPOLDMK4", "rhsusf_acc_LEUPOLDMK4", "rhs_acc_pso1m21", "rhs_acc_pso1m21", "rhsusf_acc_LEUPOLDMK4_2", "rhsusf_acc_LEUPOLDMK4", "rhsusf_acc_LEUPOLDMK4", "rhs_acc_pso1m21", "rhs_acc_pso1m2", "rhs_acc_pso1m21", "rhs_acc_pso1m2", "rhs_acc_pso1m21", "rhs_acc_pso1m21", "rhs_acc_pso1m2", "rhsusf_acc_LEUPOLDMK4_2", "rhsusf_acc_LEUPOLDMK4_2", "optic_AMS", "rhs_acc_pso1m2", "optic_AMS", "hlc_optic_LRT_m14", "rhs_acc_pso1m2", "rhs_acc_pso1m2", "rhs_acc_pso1m21", "rhs_acc_pso1m2", "rhsusf_acc_LEUPOLDMK4_2", "rhs_acc_pso1m2", "rhs_acc_pso1m21", "rhs_acc_pso1m2", "rhs_acc_pso1m2", "rhs_acc_pso1m2", "rhs_acc_pso1m2", "rhs_acc_pso1m21", "rhs_acc_pso1m21", "rhs_acc_pso1m2", "rhs_acc_pso1m2", "optic_AMS", "rhs_acc_pso1m2", "rhs_acc_pso1m21", "rhs_acc_pso1m2", "rhs_acc_pso1m21", "rhs_acc_pso1m21", "optic_AMS", "rhs_acc_pso1m21", "rhs_acc_pso1m2", "rhs_acc_pso1m2", "rhsusf_acc_LEUPOLDMK4_2", "rhs_acc_pso1m2", "rhs_acc_pso1m2", "hlc_optic_LRT_m14", "optic_LRPS", "rhs_acc_pso1m21", "rhs_acc_pso1m2", "rhsusf_acc_LEUPOLDMK4", "rhs_acc_pso1m21", "rhs_acc_pso1m2", "rhs_acc_pso1m21", "rhs_acc_pso1m21", "optic_AMS"};

		/*
			Percental Item Spawn Chances of HandGrenades:

			HandGrenade  = 20.00%
			MiniGrenade  = 20.00%
			rhs_mag_rgd5 = 20.00%
			rhs_mag_m67  = 20.00%
			rhs_VOG25    = 20.00%
		*/
		HandGrenades[] = {"HandGrenade", "MiniGrenade", "rhs_VOG25", "rhs_mag_m67", "rhs_mag_rgd5"};

		/*
			Percental Item Spawn Chances of Explosives:

			DemoCharge_Remote_Mag    = 4.55%
			IEDUrbanSmall_Remote_Mag = 45.45%
			IEDLandSmall_Remote_Mag  = 45.45%
			SatchelCharge_Remote_Mag = 4.55%
		*/
		Explosives[] = {"IEDLandSmall_Remote_Mag", "IEDUrbanSmall_Remote_Mag", "IEDLandSmall_Remote_Mag", "IEDUrbanSmall_Remote_Mag", "IEDUrbanSmall_Remote_Mag", "IEDUrbanSmall_Remote_Mag", "IEDLandSmall_Remote_Mag", "SatchelCharge_Remote_Mag", "IEDUrbanSmall_Remote_Mag", "IEDLandSmall_Remote_Mag", "IEDUrbanSmall_Remote_Mag", "IEDUrbanSmall_Remote_Mag", "IEDUrbanSmall_Remote_Mag", "IEDUrbanSmall_Remote_Mag", "IEDUrbanSmall_Remote_Mag", "IEDLandSmall_Remote_Mag", "IEDLandSmall_Remote_Mag", "IEDLandSmall_Remote_Mag", "IEDLandSmall_Remote_Mag", "IEDLandSmall_Remote_Mag", "DemoCharge_Remote_Mag", "IEDLandSmall_Remote_Mag"};

		/*
			Percental Item Spawn Chances of CivilianItems:

			ItemWatch              = 19.05%
			NVGoggles              = 19.05%
			ItemRadio              = 19.05%
			ItemGPS                = 19.05%
			Binocular              = 19.05%
			Exile_Item_MobilePhone = 4.76%
		*/
		CivilianItems[] = {"ItemRadio", "ItemGPS", "Exile_Item_MobilePhone", "ItemWatch", "NVGoggles", "NVGoggles", "Binocular", "ItemWatch", "ItemWatch", "ItemGPS", "Binocular", "Binocular", "ItemWatch", "NVGoggles", "ItemGPS", "Binocular", "ItemGPS", "ItemWatch", "ItemGPS", "ItemWatch", "NVGoggles", "Binocular", "ItemGPS", "Binocular", "NVGoggles", "ItemGPS", "Exile_Item_MobilePhone", "ItemRadio", "NVGoggles", "ItemRadio", "ItemGPS", "ItemRadio", "Binocular", "ItemRadio", "ItemWatch", "ItemRadio", "Binocular", "NVGoggles", "NVGoggles", "ItemRadio", "ItemWatch", "ItemGPS", "NVGoggles", "Binocular", "ItemWatch", "Binocular", "ItemWatch", "NVGoggles", "ItemRadio", "ItemWatch", "Exile_Item_MobilePhone", "Binocular", "ItemRadio", "NVGoggles", "ItemRadio", "NVGoggles", "ItemRadio", "NVGoggles", "ItemGPS", "Binocular", "ItemRadio", "Binocular", "ItemRadio", "NVGoggles", "ItemRadio", "ItemWatch", "ItemGPS", "Binocular", "ItemGPS", "ItemRadio", "ItemGPS", "ItemWatch", "Exile_Item_MobilePhone", "ItemRadio", "ItemRadio", "ItemWatch", "ItemWatch", "ItemGPS", "NVGoggles", "ItemGPS", "ItemGPS", "ItemGPS", "NVGoggles", "ItemGPS", "Binocular", "NVGoggles", "NVGoggles", "ItemWatch", "ItemGPS", "ItemRadio", "ItemWatch", "ItemRadio", "Binocular", "Binocular", "NVGoggles", "ItemWatch", "ItemWatch", "Exile_Item_MobilePhone", "Binocular", "ItemGPS", "ItemWatch", "Binocular", "ItemRadio", "NVGoggles", "Binocular"};

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
		CivilianClothing[] = {"U_NikosAgedBody", "U_I_C_Soldier_Bandit_3_F", "U_C_Poloshirt_salmon", "U_C_Man_casual_5_F", "U_OrestesBody", "U_NikosBody", "U_C_Poloshirt_burgundy", "U_C_Scientist", "U_C_Poor_shorts_1", "U_C_Poloshirt_stripped", "U_C_man_sport_1_F", "U_C_Man_casual_3_F", "U_C_Journalist", "U_I_C_Soldier_Bandit_1_F", "U_C_Poloshirt_tricolour", "U_C_Poor_2", "U_I_C_Soldier_Bandit_2_F", "U_C_Man_casual_4_F", "U_C_man_sport_2_F", "U_C_Poloshirt_blue", "U_I_C_Soldier_Bandit_4_F", "U_C_Man_casual_2_F", "U_C_HunterBody_grn", "U_C_man_sport_3_F", "U_C_Man_casual_6_F", "U_I_C_Soldier_Bandit_5_F", "U_Rangemaster", "U_C_Man_casual_1_F", "U_C_Poor_1"};

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
		CivilianBackpacks[] = {"B_AssaultPack_dgtl", "B_AssaultPack_khk", "B_AssaultPack_mcamo", "B_Kitbag_cbr", "B_AssaultPack_tna_F", "B_AssaultPack_rgr", "B_AssaultPack_blk", "B_AssaultPack_cbr", "B_AssaultPack_sgg", "B_Kitbag_mcamo", "B_Kitbag_sgg"};

		/*
			Percental Item Spawn Chances of CivilianVests:

			V_Rangemaster_belt   = 50.00%
			V_Press_F            = 25.00%
			V_TacVest_blk_POLICE = 25.00%
		*/
		CivilianVests[] = {"V_TacVest_blk_POLICE", "V_Rangemaster_belt", "V_Press_F", "V_TacVest_blk_POLICE", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_TacVest_blk_POLICE", "V_Press_F", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_TacVest_blk_POLICE", "V_Press_F", "V_Press_F", "V_Press_F", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_TacVest_blk_POLICE", "V_Rangemaster_belt", "V_TacVest_blk_POLICE", "V_TacVest_blk_POLICE", "V_TacVest_blk_POLICE", "V_TacVest_blk_POLICE", "V_TacVest_blk_POLICE", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_Press_F", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_Press_F", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_TacVest_blk_POLICE", "V_Press_F", "V_Press_F", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_Press_F", "V_Press_F", "V_TacVest_blk_POLICE", "V_Rangemaster_belt", "V_TacVest_blk_POLICE", "V_Press_F", "V_Press_F", "V_Press_F", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_Press_F", "V_Rangemaster_belt", "V_Press_F", "V_TacVest_blk_POLICE", "V_Rangemaster_belt", "V_Press_F", "V_TacVest_blk_POLICE", "V_Press_F", "V_Rangemaster_belt", "V_TacVest_blk_POLICE", "V_Rangemaster_belt", "V_TacVest_blk_POLICE", "V_Rangemaster_belt", "V_TacVest_blk_POLICE", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_Press_F", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_Press_F", "V_TacVest_blk_POLICE", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_Press_F", "V_TacVest_blk_POLICE", "V_Press_F", "V_Rangemaster_belt", "V_Press_F", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_TacVest_blk_POLICE", "V_Press_F", "V_Rangemaster_belt", "V_TacVest_blk_POLICE", "V_Rangemaster_belt", "V_TacVest_blk_POLICE", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_TacVest_blk_POLICE", "V_Press_F", "V_TacVest_blk_POLICE", "V_Rangemaster_belt"};

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
		CivilianHeadgear[] = {"H_StrawHat", "H_Hat_grey", "H_Cap_tan", "H_Bandanna_surfer", "H_Cap_press", "H_Hat_tan", "H_Cap_blu", "H_Cap_headphones", "H_Cap_oli", "H_Hat_checker", "H_Beret_blk_POLICE", "H_Cap_blk", "H_StrawHat_dark", "H_Cap_red", "H_Hat_brown", "H_Cap_grn", "H_Cap_blk_Raven", "H_Hat_blue"};

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
		GuerillaClothing[] = {"TRYK_DMARPAT_T", "TRYK_shirts_BLK_PAD", "TRYK_U_B_AOR2_OD_CombatUniform", "TRYK_shirts_TAN_PAD_BL", "TRYK_U_B_3CD_Delta_BDU", "U_IG_Guerilla2_3", "TRYK_U_B_PCUHsW7", "TRYK_U_B_GRTAN_CombatUniform", "TRYK_U_B_3cr", "TRYK_U_B_WDL_GRY_R_CombatUniform", "TRYK_U_B_PCUGs_OD_R", "TRYK_U_B_Denim_T_WH", "TRYK_U_B_BLK", "TRYK_T_PAD", "TRYK_U_B_PCUHsW9", "TRYK_U_B_ODTANR_CombatUniformTshirt", "TRYK_U_B_PCUGHs", "TRYK_U_B_BLK_OD_Tshirt", "TRYK_U_B_AOR2_BLK_R_CombatUniform", "TRYK_shirts_TAN_PAD_YEL", "TRYK_U_B_BLK_Tshirt", "TRYK_U_B_PCUGs_gry", "TRYK_U_pad_j", "TRYK_U_pad_j_blk", "U_I_C_Soldier_Para_3_F", "TRYK_shirts_OD_PAD_RED2", "TRYK_shirts_DENIM_BL", "TRYK_U_Bts_PCUGs", "TRYK_U_B_BLOD_T", "TRYK_U_B_WDL_GRY_CombatUniform", "TRYK_shirts_DENIM_od_Sleeve", "TRYK_U_B_ARO1_CBR_CombatUniform", "TRYK_U_B_PCUGs_OD", "TRYK_T_BLK_PAD", "TRYK_U_B_ARO1_GRY_R_CombatUniform", "TRYK_U_denim_hood_nc", "TRYK_U_B_PCUs_R", "U_IG_Guerilla2_2", "TRYK_U_B_PCUs", "TRYK_U_B_ACU", "TRYK_U_B_JSDF_CombatUniform", "TRYK_U_taki_G_COY", "TRYK_U_B_wh_OD_Rollup_CombatUniform", "TRYK_U_B_BLK3CD", "TRYK_U_B_BLKTAN_CombatUniform", "TRYK_ZARATAKI2", "TRYK_shirts_DENIM_RED2", "TRYK_U_B_C02_Tsirt", "TRYK_U_B_3c", "TRYK_shirts_PAD_YEL", "TRYK_U_B_ODTAN_Tshirt", "TRYK_U_taki_G_BLK", "TRYK_U_B_NATO_OCPD_CombatUniform", "TRYK_U_B_MTP_CombatUniform", "TRYK_U_B_TANTAN_R_CombatUniform", "TRYK_U_B_wood3c_CombatUniform", "TRYK_U_B_AOR2_OD_R_CombatUniform", "TRYK_T_camo_Wood_BG", "TRYK_U_B_OD_BLK", "TRYK_U_B_ARO1_CombatUniform", "TRYK_U_B_Wood_PCUs", "TRYK_U_pad_hood_BKT2", "TRYK_U_B_NATO_OCP_BLK_R_CombatUniform", "TRYK_U_B_wh_tan_Rollup_CombatUniform", "TRYK_U_B_PCUGs_BLK", "TRYK_U_taki_G_WH", "TRYK_shirts_DENIM_BWH_Sleeve", "TRYK_U_denim_hood_blk", "TRYK_U_B_MTP_BLK_R_CombatUniform", "TRYK_T_camo_3c_BG", "TRYK_B_TRYK_UCP_T", "TRYK_U_B_BLKTAN_Tshirt", "TRYK_shirts_DENIM_RED2_Sleeve", "TRYK_U_B_UCP_PCUs", "TRYK_U_B_Wood_PCUs_R", "TRYK_U_B_JSDF_CombatUniformTshirt", "TRYK_U_B_woodtanR_CombatUniformTshirt", "TRYK_U_B_BLK_OD_Rollup_CombatUniform", "TRYK_U_B_WOOD_MARPAT_CombatUniformTshirt", "TRYK_U_B_NATO_OCP_BLK_CombatUniform", "TRYK_U_B_ARO1_BLK_R_CombatUniform", "TRYK_U_nohoodPcu_gry", "TRYK_U_B_PCUHsW2", "TRYK_T_camo_Wood", "TRYK_U_B_BLK_T_BK", "TRYK_hoodie_FR", "TRYK_U_taki_BLK", "TRYK_U_B_ARO1_CBR_R_CombatUniform", "TRYK_U_B_PCUGs_BLK_R", "TRYK_shirts_DENIM_od", "TRYK_U_taki_COY", "TRYK_shirts_DENIM_ylb_Sleeve", "TRYK_U_B_NATO_OCP_CombatUniform", "TRYK_U_B_Wood_T", "TRYK_U_B_MARPAT_Wood", "TRYK_U_denim_jersey_blk", "TRYK_U_B_NATO_UCP_GRY_R_CombatUniform", "TRYK_U_B_PCUHsW4", "TRYK_U_B_RED_T_BR", "TRYK_shirts_PAD_BK", "TRYK_OVERALL_nok_flesh", "TRYK_U_B_OD_BLK_2", "TRYK_U_B_GRY_PCUs_R", "TRYK_U_B_TANTAN_CombatUniform", "TRYK_shirts_OD_PAD_YEL", "TRYK_U_B_BLKTANR_CombatUniformTshirt", "TRYK_shirts_OD_PAD_BLU3", "TRYK_U_B_BLKBLK_CombatUniform", "TRYK_U_B_MARPAT_WOOD_CombatUniform", "TRYK_U_B_PCUODHs", "TRYK_U_B_ODTAN_CombatUniform", "TRYK_T_OD_PAD", "TRYK_U_B_PCUHsW3", "TRYK_U_B_3CD_Ranger_BDU", "U_IG_Guerilla1_1", "TRYK_U_pad_hood_tan", "TRYK_U_B_3CD_BLK_BDUTshirt2", "TRYK_U_B_NATO_OCPD_R_CombatUniform", "TRYK_shirts_DENIM_WHB", "U_I_G_resistanceLeader_F", "TRYK_shirts_PAD_BLW", "TRYK_U_B_BLK_TAN_2", "TRYK_U_B_MTP_R_CombatUniform", "TRYK_B_TRYK_OCP_D_T", "TRYK_shirts_PAD_BLU3", "TRYK_U_pad_hood_Cl_blk", "TRYK_U_B_TANOCP_R_CombatUniformTshirt", "TRYK_U_B_Denim_T_BK", "TRYK_hoodie_3c", "TRYK_OVERALL_SAGE_BLKboots", "TRYK_U_B_ARO1_GR_CombatUniform", "TRYK_U_B_ARO1_GR_R_CombatUniform", "TRYK_U_denim_hood_3c", "TRYK_U_B_BLK_OD", "TRYK_U_B_GRTANR_CombatUniformTshirt", "TRYK_U_B_ARO1_BLK_CombatUniform", "TRYK_U_B_ARO1R_CombatUniform", "TRYK_U_B_BLTAN_T", "TRYK_U_Bts_Wood_PCUs", "U_IG_Guerilla3_2", "U_IG_leader", "TRYK_U_taki_BL", "TRYK_U_B_GRYOCP_R_CombatUniformTshirt", "TRYK_U_B_Woodland_Tshirt", "TRYK_OVERALL_SAGE_BLKboots_nk_blk", "TRYK_U_denim_hood_mc", "TRYK_U_denim_jersey_blu", "TRYK_shirts_OD_PAD_BLW", "TRYK_U_B_MARPAT_Desert2", "TRYK_shirts_PAD_BL", "TRYK_U_B_Denim_T_BG_WH", "TRYK_U_B_Woodland", "TRYK_U_B_woodtan_CombatUniform", "TRYK_U_B_PCUODs", "TRYK_U_B_AOR1_Rollup_CombatUniform", "TRYK_shirts_DENIM_R", "TRYK_U_B_NATO_UCP_R_CombatUniform", "TRYK_U_B_PCUHsW", "TRYK_U_Bts_PCUODs", "TRYK_U_B_UCP_PCUs_R", "TRYK_T_T2_PAD", "TRYK_U_pad_hood_CSATBlk", "TRYK_U_B_Snowt", "TRYK_shirts_DENIM_BK_Sleeve", "TRYK_C_AOR2_T", "TRYK_OVERALL_SAGE_BLKboots_nk", "TRYK_T_camo_tan", "TRYK_shirts_BLK_PAD_BK", "TRYK_shirts_TAN_PAD", "TRYK_shirts_TAN_PAD_BLW", "TRYK_U_B_BLK_tan_Rollup_CombatUniform", "TRYK_U_B_3CD_BLK_BDUTshirt", "TRYK_U_B_BLK_TAN_1", "TRYK_U_B_WOOD_MARPAT_CombatUniform", "U_IG_Guerilla2_1", "TRYK_U_pad_hood_Blk", "TRYK_U_B_woodR_CombatUniformTshirt", "TRYK_U_B_Sage_Tshirt", "TRYK_U_taki_G_BL", "TRYK_U_B_OD_OD_R_CombatUniform", "TRYK_hoodie_Wood", "TRYK_U_B_NATO_OCP_BLK_c_R_CombatUniform", "TRYK_U_B_fleece_UCP", "TRYK_U_B_3CD_Ranger_BDUTshirt", "TRYK_shirts_DENIM_BK", "TRYK_B_TRYK_MTP_T", "TRYK_U_B_AOR2_BLK_CombatUniform", "TRYK_U_B_PCUGs", "U_IG_Guerilla3_1", "TRYK_U_B_PCUHsW6", "TRYK_shirts_DENIM_WH", "TRYK_shirts_PAD", "TRYK_SUITS_BR_F", "TRYK_U_B_TANOCP_CombatUniform", "TRYK_U_B_ACUTshirt", "U_I_C_Soldier_Para_4_F", "TRYK_ZARATAKI", "TRYK_U_B_ODTAN", "U_I_C_Soldier_Para_1_F", "TRYK_B_TRYK_OCP_T", "TRYK_U_B_GRY_PCUs", "TRYK_U_B_NATO_UCP_CombatUniform", "TRYK_shirts_BLK_PAD_YEL", "TRYK_OVERALL_SAGE_BLKboots_nk_blk2", "TRYK_U_B_BLKTAN", "TRYK_shirts_OD_PAD_BK", "TRYK_shirts_PAD_RED2", "TRYK_T_CSAT_PAD", "TRYK_U_B_PCUGs_gry_R", "TRYK_U_B_BLK_T_BG_BK", "TRYK_U_B_wh_blk_Rollup_CombatUniform", "TRYK_U_pad_hood_Cl", "TRYK_U_hood_nc", "TRYK_U_B_BLK_T_BG_WH", "TRYK_shirts_BLK_PAD_RED2", "TRYK_OVERALL_SAGE", "TRYK_shirts_BLK_PAD_BL", "TRYK_U_B_MARPAT_Desert_Tshirt", "TRYK_T_TAN_PAD", "TRYK_shirts_TAN_PAD_RED2", "TRYK_shirts_DENIM_BWH", "TRYK_U_B_MARPAT_WOOD_CombatUniformTshirt", "TRYK_shirts_BLK_PAD_BLW", "TRYK_U_B_MARPAT_Wood_Tshirt", "TRYK_U_B_Sage_T", "TRYK_ZARATAKI3", "TRYK_U_B_MARPAT_Desert2_Tshirt", "TRYK_U_hood_mc", "TRYK_U_B_BLKOCP_CombatUniform", "TRYK_U_taki_wh", "TRYK_U_B_BLK_T_WH", "TRYK_U_B_PCUHsW5", "TRYK_U_B_BLKBLK_R_CombatUniform", "TRYK_U_B_AOR2_Rollup_CombatUniform", "TRYK_U_pad_hood_odBK", "TRYK_shirts_BLK_PAD_BLU3", "U_I_C_Soldier_Para_2_F", "TRYK_U_B_fleece", "TRYK_U_B_Snow_CombatUniform", "TRYK_shirts_DENIM_ylb", "TRYK_hoodie_Blk", "TRYK_U_B_RED_T_BG_BR", "TRYK_shirts_DENIM_R_Sleeve", "TRYK_shirts_DENIM_WH_Sleeve", "U_I_C_Soldier_Camo_F", "TRYK_T_camo_wood_marpat", "TRYK_U_B_OD_OD_CombatUniform", "TRYK_SUITS_BLK_F", "TRYK_shirts_DENIM_WHB_Sleeve", "TRYK_U_B_NATO_OCP_R_CombatUniform", "TRYK_shirts_OD_PAD", "U_I_C_Soldier_Para_5_F", "TRYK_shirts_DENIM_BL_Sleeve", "TRYK_U_B_wood_CombatUniform", "TRYK_U_B_Denim_T_BG_BK", "TRYK_U_B_MTP_BLK_CombatUniform", "TRYK_U_B_NATO_OCP_c_BLK_CombatUniform", "TRYK_T_camo_desert_marpat_BG", "TRYK_T_camo_wood_marpat_BG", "TRYK_shirts_TAN_PAD_BLU3", "TRYK_shirts_OD_PAD_BL", "TRYK_U_B_GRYOCP_CombatUniform", "TRYK_U_B_ARO2R_CombatUniform", "TRYK_T_camo_3c", "TRYK_U_Bts_GRYGRY_PCUs", "TRYK_U_B_ARO2_CombatUniform", "TRYK_U_B_AOR2_GRY_CombatUniform", "TRYK_OVERALL_flesh", "TRYK_U_B_BLK3CD_Tshirt", "TRYK_U_B_PCUHs", "TRYK_B_USMC_R", "TRYK_U_pad_hood_Blod", "TRYK_U_B_NATO_UCP_GRY_CombatUniform", "TRYK_shirts_TAN_PAD_BK", "TRYK_U_B_BLKOCP_R_CombatUniformTshirt", "TRYK_U_B_AOR2_GRY_R_CombatUniform", "TRYK_U_Bts_UCP_PCUs", "TRYK_U_B_C01_Tsirt", "TRYK_B_TRYK_3C_T", "TRYK_U_B_MARPAT_Desert", "TRYK_T_camo_Desert_marpat", "TRYK_U_B_3CD_Delta_BDUTshirt", "TRYK_B_USMC_R_ROLL", "TRYK_U_Bts_PCUs", "TRYK_U_B_ARO1_GRY_CombatUniform", "TRYK_U_B_wood3c_CombatUniformTshirt", "TRYK_U_B_PCUHsW8"};

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
		GuerillaBackpacks[] = {"B_Bergen_sgg", "TRYK_B_Carryall_wh", "TRYK_B_AssaultPack_MARPAT_Wood", "B_ViperLightHarness_hex_F", "TRYK_B_Carryall_wood", "B_ViperHarness_base_F", "TRYK_B_Belt", "TRYK_B_Coyotebackpack", "TRYK_B_Belt_BLK", "B_ViperHarness_blk_F", "TRYK_B_AssaultPack_MARPAT_Desert", "B_ViperHarness_hex_F", "TRYK_B_BAF_BAG_rgr", "B_FieldPack_oucamo", "B_ViperLightHarness_ghex_F", "TRYK_B_tube_od", "TRYK_B_Medbag", "TRYK_B_Medbag_OD", "B_ViperLightHarness_oli_F", "TRYK_B_Belt_AOR2", "B_FieldPack_cbr", "B_FieldPack_ghex_F", "TRYK_B_Medbag_ucp", "TRYK_B_Alicepack", "B_ViperLightHarness_khk_F", "TRYK_B_Belt_CYT", "TRYK_Winter_pack", "TRYK_B_Kitbag_Base", "TRYK_B_BAF_BAG_OD", "TRYK_B_AssaultPack_Type2camo", "TRYK_B_Carryall_blk", "TRYK_B_tube_cyt", "B_ViperHarness_ghex_F", "TRYK_B_Medbag_BK", "TRYK_B_BAF_BAG_BLK", "B_ViperHarness_oli_F", "B_ViperLightHarness_base_F", "TRYK_B_FieldPack_Wood", "TRYK_B_Carryall_JSDF", "TRYK_B_Coyotebackpack_BLK", "TRYK_B_BAF_BAG_CYT", "B_ViperHarness_khk_F", "TRYK_B_Kitbag_blk", "TRYK_B_tube_blk", "TRYK_B_AssaultPack_UCP", "TRYK_B_Belt_br", "B_FieldPack_blk", "TRYK_B_Belt_GR", "TRYK_B_BAF_BAG_mcamo", "B_Bergen_mcamo", "TRYK_B_Coyotebackpack_WH", "TRYK_B_Belt_tan", "B_FieldPack_ocamo", "B_ViperLightHarness_blk_F", "TRYK_B_Kitbag_Base_JSDF", "B_Bergen_blk", "TRYK_B_Belt_AOR1", "TRYK_B_Coyotebackpack_OD", "TRYK_B_Kitbag_aaf", "B_Bergen_rgr"};

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
		GuerillaVests[] = {"TRYK_V_Bulletproof_BL", "V_I_G_resistanceLeader_F", "TRYK_V_PlateCarrier_JSDF", "V_HarnessOSpec_brn", "TRYK_V_harnes_od_L", "V_HarnessOSpec_gry", "TRYK_V_ArmorVest_AOR2_2", "TRYK_V_IOTV_BLK", "V_HarnessOGL_brn", "TRYK_V_ArmorVest_Ranger", "V_BandollierB_oli", "V_BandollierB_blk", "TRYK_V_ArmorVest_tan2", "TRYK_V_ArmorVest_AOR1", "TRYK_V_Bulletproof_BLK", "TRYK_V_ArmorVest_cbr2", "TRYK_V_ArmorVest_Brown", "V_HarnessO_brn", "TRYK_V_ArmorVest_Ranger2", "TRYK_V_ArmorVest_khk2", "V_BandollierB_khk", "TRYK_V_ArmorVest_coyo", "V_BandollierB_cbr", "TRYK_V_ArmorVest_Delta", "TRYK_V_ArmorVest_AOR2", "V_HarnessO_gry", "TRYK_V_harnes_TAN_L", "V_HarnessOGL_gry", "TRYK_V_ArmorVest_CBR", "TRYK_V_harnes_blk_L", "TRYK_V_PlateCarrier_blk_L", "TRYK_V_ArmorVest_green", "TRYK_V_ArmorVest_tan", "V_Chestrig_khk", "TRYK_V_Bulletproof", "V_Chestrig_blk", "TRYK_V_ArmorVest_khk", "V_Chestrig_oli", "V_Chestrig_rgr", "TRYK_V_ArmorVest_coyo2", "TRYK_V_ArmorVest_Brown2", "V_BandollierB_rgr", "TRYK_V_PlateCarrier_wood_L", "TRYK_V_PlateCarrier_ACU_L", "TRYK_V_ArmorVest_Delta2", "TRYK_V_PlateCarrier_coyo_L", "TRYK_V_ArmorVest_AOR1_2", "TRYK_V_ArmorVest_green2"};

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
		GuerillaHeadgear[] = {"TRYK_Shemagh_TAN_NV", "TRYK_H_WH", "TRYK_TAC_SET_NV_TAN_2", "TRYK_H_Booniehat_AOR1", "H_Cap_tan_Syndikat_F", "TRYK_HRPIGEAR_NV", "TRYK_H_TACEARMUFF_H", "TRYK_H_woolhat_cu", "TRYK_TAC_SET_NV_WH", "TRYK_Shemagh_EAR_WH_NV", "H_Hat_camo", "TRYK_Shemagh_G_NV", "H_Cap_tan_specops_US", "H_Booniehat_mcamo", "TRYK_Shemagh_shade_WH_N", "H_Booniehat_tna_F", "TRYK_balaclava_BLACK_EAR_NV", "TRYK_Shemagh_shade_N", "TRYK_H_headset2", "TRYK_H_headsetcap_blk", "TRYK_Shemagh_WH_NV", "TRYK_TAC_SET_NV_MESH", "TRYK_R_CAP_TAN", "H_TurbanO_blk", "TRYK_US_ESS_Glasses_TAN_NV", "TRYK_H_headsetcap_od_Glasses", "TRYK_H_AOR2", "TRYK_ESS_BLKTAN_NV", "H_Beret_blk", "TRYK_H_headsetcap", "TRYK_R_CAP_BLK", "TRYK_H_GR", "TRYK_SPgear_PHC1_NV", "H_Booniehat_grn", "TRYK_H_PASGT_BLK", "H_Beret_grn", "TRYK_TAC_EARMUFF_SHADE", "TRYK_G_Shades_Black_NV", "TRYK_G_Shades_Blue_NV", "TRYK_H_Booniehat_AOR2", "TRYK_H_Bandana_H", "TRYK_H_woolhat", "TRYK_Headphone_NV", "TRYK_H_Helmet_MARPAT_Desert", "H_Shemag_khk", "TRYK_balaclava_EAR_NV", "TRYK_US_ESS_Glasses_Cover", "TRYK_H_Booniehat_MARPAT_Desert", "TRYK_r_cap_tan_Glasses", "TRYK_H_Helmet_MARPAT_Wood", "TRYK_TAC_SET_NV_MESH_2", "TRYK_H_Bandana_wig", "TRYK_Shemagh_shade_MESH", "TRYK_H_PASGT_TAN", "TRYK_H_Helmet_WOOD", "H_Watchcap_blk", "H_Cap_khaki_specops_UK", "TRYK_TAC_SET_NV_OD_2", "H_Bandanna_gry", "H_Beret_brn_SF", "TRYK_ESS_BLKBLK_NV", "H_Beret_red", "TRYK_H_Helmet_Winter", "TRYK_H_Helmet_Winter_2", "TRYK_SPgear_PHC2_NV", "TRYK_G_bala_wh_NV", "TRYK_TAC_EARMUFF", "TRYK_R_CAP_OD_US", "TRYK_ESS_wh_NV", "TRYK_US_ESS_Glasses_H", "H_Booniehat_indp", "TRYK_TAC_boonie_SET_NV", "H_Beret_ocamo", "TRYK_H_Helmet_JSDF", "TRYK_r_cap_od_Glasses", "TRYK_H_pakol", "H_Shemag_olive_hs", "TRYK_Shemagh_shade_G_N", "TRYK_G_bala_ess_NV", "H_Cap_brn_SPECOPS", "H_Bandanna_khk", "H_BandMask_blk", "TRYK_TAC_SET_NV_OD", "TRYK_H_Helmet_Snow", "TRYK_ESS_CAP", "H_ShemagOpen_tan", "Exile_Headgear_GasMask", "TRYK_headset2", "TRYK_H_LHS_HEL_G", "TRYK_Shemagh_MESH_NV", "TRYK_H_Booniehat_MARPAT_WOOD", "TRYK_Headset_NV", "TRYK_ShemaghESSOD_NV", "H_Booniehat_khk_hs", "H_Cap_grn_Syndikat_F", "TRYK_bandana_NV", "TRYK_H_Booniehat_CC", "TRYK_H_headsetcap_blk_Glasses", "TRYK_H_woolhat_WH", "H_Booniehat_tan", "TRYK_H_DELTAHELM_NV", "H_Watchcap_sgg", "TRYK_H_PASGT_OD", "TRYK_H_Booniehat_WOOD", "H_Watchcap_khk", "TRYK_H_Helmet_MARPAT_Desert2", "TRYK_Shemagh_EAR_G_NV", "TRYK_H_Helmet_3C", "H_Cap_blk_Syndikat_F", "TRYK_H_woolhat_tan", "H_MilCap_tna_F", "TRYK_SPgearG_NV", "TRYK_H_Bandana_wig_g", "H_Bandanna_cbr", "TRYK_ESS_CAP_tan", "H_Shemag_olive", "TRYK_H_Booniehat_3CD", "H_Shemag_tan", "TRYK_H_AOR1", "H_Beret_02", "TRYK_ShemaghESSTAN_NV", "TRYK_ShemaghESSWH_NV", "H_Bandanna_camo", "TRYK_H_woolhat_CW", "TRYK_r_cap_blk_Glasses", "H_MilCap_ghex_F", "H_MilCap_gen_F", "H_Booniehat_dirty", "TRYK_H_Helmet_CC", "TRYK_H_pakol2", "TRYK_H_wig", "TRYK_Kio_Balaclava", "H_Bandanna_mcamo", "H_FakeHeadgear_Syndikat_F", "TRYK_H_woolhat_br", "TRYK_Shemagh_EAR_NV", "TRYK_balaclava_NV", "H_Bandanna_khk_hs", "TRYK_H_Booniehat_JSDF", "H_Beret_Colonel", "TRYK_NOMIC_TAC_EARMUFF", "TRYK_TAC_SET_NV_TAN", "TRYK_H_Helmet_ACU", "H_Booniehat_dgtl", "H_Bandanna_sgg", "TRYK_H_PASGT_COYO", "H_Cap_oli_Syndikat_F", "H_Watchcap_camo", "H_Beret_grn_SF", "TRYK_H_headsetcap_Glasses", "H_Booniehat_khk", "TRYK_H_headsetcap_od", "TRYK_balaclava_BLACK_NV", "TRYK_ESS_CAP_OD", "TRYK_US_ESS_Glasses_NV", "H_ShemagOpen_khk", "TRYK_H_EARMUFF", "TRYK_TAC_SET_NV_WH_2"};

		/*
			Percental Item Spawn Chances of MilitaryClothing:

			U_B_CTRG_1                      = 1.35%
			U_B_CTRG_2                      = 1.35%
			U_B_CTRG_3                      = 1.35%
			U_B_CombatUniform_mcam          = 1.35%
			U_B_CombatUniform_mcam_tshirt   = 1.35%
			U_B_CombatUniform_mcam_vest     = 1.35%
			U_B_CombatUniform_mcam_worn     = 1.35%
			U_B_SpecopsUniform_sgg          = 1.35%
			U_O_OfficerUniform_ocamo        = 1.35%
			U_I_OfficerUniform              = 1.35%
			U_I_CombatUniform               = 1.35%
			U_I_CombatUniform_tshirt        = 1.35%
			U_I_CombatUniform_shortsleeve   = 1.35%
			U_B_HeliPilotCoveralls          = 1.35%
			U_O_PilotCoveralls              = 1.35%
			U_B_PilotCoveralls              = 1.35%
			U_I_pilotCoveralls              = 1.35%
			U_I_HeliPilotCoveralls          = 1.35%
			U_B_Wetsuit                     = 1.35%
			U_O_Wetsuit                     = 1.35%
			U_I_Wetsuit                     = 1.35%
			U_O_CombatUniform_ocamo         = 1.35%
			U_O_CombatUniform_oucamo        = 1.35%
			U_O_SpecopsUniform_ocamo        = 1.35%
			U_O_SpecopsUniform_blk          = 1.35%
			U_B_T_Soldier_AR_F              = 1.35%
			U_B_T_Soldier_SL_F              = 1.35%
			U_B_CTRG_Soldier_F              = 1.35%
			U_B_CTRG_Soldier_2_F            = 1.35%
			U_B_CTRG_Soldier_3_F            = 1.35%
			U_B_CTRG_Soldier_urb_1_F        = 1.35%
			U_B_CTRG_Soldier_urb_2_F        = 1.35%
			U_B_CTRG_Soldier_urb_3_F        = 1.35%
			U_B_GEN_Soldier_F               = 1.35%
			U_B_GEN_Commander_F             = 1.35%
			U_O_T_Soldier_F                 = 1.35%
			U_O_T_Officer_F                 = 1.35%
			rhs_uniform_cu_ocp              = 1.35%
			rhs_uniform_cu_ucp              = 1.35%
			rhs_uniform_cu_ocp_101st        = 1.35%
			rhs_uniform_df15                = 1.35%
			rhs_uniform_emr_patchless       = 1.35%
			rhs_uniform_flora_patchless     = 1.35%
			rhs_uniform_flora_patchless_alt = 1.35%
			rhs_uniform_m88_patchless       = 1.35%
			rhs_uniform_mflora_patchless    = 1.35%
			rhs_uniform_vdv_mflora          = 1.35%
			rhs_uniform_FROG01_m81          = 1.35%
			rhs_uniform_FROG01_d            = 1.35%
			rhs_uniform_FROG01_wd           = 1.35%
			rhs_uniform_vdv_emr_des         = 1.35%
			rhs_uniform_msv_emr             = 1.35%
			rhs_uniform_flora               = 1.35%
			rhs_uniform_vdv_flora           = 1.35%
			rhs_uniform_gorka_r_g           = 1.35%
			rhs_uniform_gorka_r_y           = 1.35%
			rhs_chdkz_uniform_5             = 1.35%
			rhs_chdkz_uniform_4             = 1.35%
			rhs_chdkz_uniform_3             = 1.35%
			rhs_chdkz_uniform_2             = 1.35%
			rhs_chdkz_uniform_1             = 1.35%
			rhs_uniform_mvd_izlom           = 1.35%
			rhs_uniform_cu_ocp_10th         = 1.35%
			rhs_uniform_cu_ocp_1stcav       = 1.35%
			rhs_uniform_cu_ocp_82nd         = 1.35%
			rhs_uniform_cu_ucp_101st        = 1.35%
			rhs_uniform_cu_ucp_10th         = 1.35%
			rhs_uniform_cu_ucp_1stcav       = 1.35%
			rhs_uniform_cu_ucp_82nd         = 1.35%
			rhs_uniform_g3_m81              = 1.35%
			rhs_uniform_g3_blk              = 1.35%
			rhs_uniform_g3_mc               = 1.35%
			rhs_uniform_g3_rgr              = 1.35%
			rhs_uniform_g3_tan              = 1.35%
		*/
		MilitaryClothing[] = {"U_B_CTRG_Soldier_F", "rhs_uniform_g3_tan", "U_I_OfficerUniform", "U_B_CTRG_Soldier_urb_1_F", "rhs_uniform_vdv_mflora", "rhs_uniform_cu_ocp", "rhs_chdkz_uniform_4", "U_B_HeliPilotCoveralls", "rhs_chdkz_uniform_1", "U_O_T_Officer_F", "U_I_Wetsuit", "rhs_uniform_FROG01_d", "rhs_uniform_df15", "U_B_CTRG_Soldier_urb_2_F", "rhs_uniform_flora", "rhs_uniform_cu_ucp_10th", "rhs_uniform_emr_patchless", "U_B_CTRG_Soldier_3_F", "U_B_CombatUniform_mcam_worn", "U_O_PilotCoveralls", "U_B_CTRG_Soldier_urb_3_F", "U_B_CombatUniform_mcam", "U_O_Wetsuit", "rhs_uniform_g3_rgr", "U_I_pilotCoveralls", "rhs_uniform_cu_ocp_101st", "rhs_uniform_vdv_emr_des", "rhs_chdkz_uniform_2", "rhs_uniform_FROG01_m81", "rhs_uniform_g3_mc", "U_B_CombatUniform_mcam_vest", "U_O_CombatUniform_oucamo", "U_I_CombatUniform_tshirt", "rhs_uniform_flora_patchless_alt", "rhs_uniform_gorka_r_y", "U_O_OfficerUniform_ocamo", "rhs_uniform_cu_ucp_82nd", "U_I_HeliPilotCoveralls", "rhs_uniform_vdv_flora", "U_B_CombatUniform_mcam_tshirt", "rhs_uniform_m88_patchless", "U_B_CTRG_2", "rhs_uniform_cu_ocp_82nd", "rhs_uniform_cu_ucp_1stcav", "rhs_uniform_g3_m81", "U_B_Wetsuit", "U_O_CombatUniform_ocamo", "rhs_uniform_cu_ocp_10th", "rhs_uniform_FROG01_wd", "rhs_uniform_msv_emr", "rhs_uniform_mflora_patchless", "U_B_T_Soldier_SL_F", "U_B_T_Soldier_AR_F", "U_I_CombatUniform_shortsleeve", "U_B_GEN_Soldier_F", "U_B_PilotCoveralls", "rhs_uniform_flora_patchless", "rhs_uniform_gorka_r_g", "rhs_uniform_cu_ucp_101st", "rhs_chdkz_uniform_3", "U_I_CombatUniform", "rhs_uniform_g3_blk", "U_O_T_Soldier_F", "U_O_SpecopsUniform_ocamo", "U_B_CTRG_Soldier_2_F", "U_B_GEN_Commander_F", "rhs_uniform_cu_ocp_1stcav", "U_B_SpecopsUniform_sgg", "U_B_CTRG_3", "rhs_chdkz_uniform_5", "U_O_SpecopsUniform_blk", "U_B_CTRG_1", "rhs_uniform_cu_ucp", "rhs_uniform_mvd_izlom"};

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
		MilitaryBackpacks[] = {"B_Carryall_oucamo", "rhs_medic_bag", "rhsusf_assault_eagleaiii_ucp", "B_Carryall_ghex_F", "B_Carryall_khk", "rhsusf_assault_eagleaiii_coy", "B_Bergen_mcamo_F", "rhsusf_assault_eagleaiii_ocp", "rhsusf_falconii", "rhs_sidor", "B_Carryall_mcamo", "B_Carryall_ocamo", "rhsusf_falconii_coy", "B_Carryall_oli", "rhs_rpg_empty", "B_Carryall_cbr", "rhsusf_falconii_mc", "rhs_assault_umbts", "B_Bergen_Base_F", "rhs_assault_umbts_engineer_empty"};

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
		MilitaryVests[] = {"V_TacChestrig_grn_F", "FGN_RU_V95_Podlesok_Urban_OMON", "rhsusf_iotv_ocp", "rhs_6b23_6sh92", "rhs_6b23_digi_6sh92_vog", "rhs_6sh92", "V_PlateCarrierSpec_tna_F", "V_TacChestrig_oli_F", "rhs_6sh92_radio", "rhs_6sh46", "FGN_RU_6B519_TTsKO", "rhsusf_iotv_ucp_teamleader", "rhs_6b23_medic", "rhsusf_iotv_ucp_SAW", "rhs_6sh92_digi_radio", "FGN_RU_V95_VSR", "V_PlateCarrier1_tna_F", "FGN_RU_6B519_TTsKO_Officer", "V_PlateCarrierIAGL_oli", "rhs_vydra_3m", "rhsusf_iotv_ucp_medic", "FGN_RU_6B519_Khaki", "rhs_6b23_digi_6sh92", "rhs_6b23_engineer", "V_RebreatherIA", "rhsusf_iotv_ucp_rifleman", "FGN_RU_V95_Podlesok", "FGN_RU_6B519_VSR_Medic", "V_PlateCarrierIA2_dgtl", "FGN_RU_6B513_TTsKO_Officer", "rhs_6sh92_digi_vog", "FGN_RU_V95_Black", "rhs_6b23_ML_6sh92", "rhs_6b23_digi_6sh92_headset_mapcase", "V_PlateCarrierGL_rgr", "FGN_RU_6B519", "rhs_6b23_digi_6sh92_vog_headset", "FGN_RU_6B519_Khaki_Officer", "rhs_6b23_digi_6sh92_headset", "FGN_RU_V95_Podlesok_Urban", "V_PlateCarrier2_rgr_noflag_F", "FGN_RU_6B513_Khaki_Medic", "rhsusf_spcs_ocp_rifleman", "rhs_6b23_digi_crew", "FGN_RU_V95_Podlesok_Urban_2", "V_PlateCarrier3_rgr", "rhsusf_spc_patchless", "FGN_RU_V95_Kamysh_2", "FGN_RU_6B519_Officer", "rhsusf_iotv_ucp_repair", "FGN_RU_6B513", "FGN_RU_V95_VSR_2", "FGN_RU_6B519_Medic", "rhs_6b23_6sh92_vog_headset", "V_TacVest_gen_F", "rhs_6b23_rifleman", "rhs_6b23_ML_6sh92_vog", "rhsusf_iotv_ucp", "FGN_RU_V95_Black_2", "rhs_6b23_6sh92_radio", "FGN_RU_6B513_Officer", "rhsusf_iotv_ocp_SAW", "FGN_RU_V95_Kamysh_Blue_2", "V_BandollierB_ghex_F", "FGN_RU_6B519_Sniper", "FGN_RU_6B519_TTsKO_Sniper", "rhsusf_spcs_ucp_rifleman", "rhs_6b23_sniper", "rhs_6b23_digi_crewofficer", "FGN_RU_6B519_VSR", "V_PlateCarrier2_rgr", "rhs_6b23_ML_crewofficer", "FGN_RU_V95_KKO_Urban_OMON", "rhs_6b23_6sh92_headset", "rhsusf_spc_rifleman", "FGN_RU_6B513_VSR_Sniper", "rhs_6b23_ML_sniper", "rhsusf_iotv_ucp_grenadier", "rhsusf_iotv_ucp_squadleader", "rhsusf_iotv_ocp_medic", "rhs_6b23_ML_medic", "FGN_RU_V95_KKO_2", "V_PlateCarrierIAGL_dgtl", "V_HarnessOGL_ghex_F", "V_HarnessO_ghex_F", "V_PlateCarrierL_CTRG", "FGN_RU_6B513_TTsKO_Medic", "V_PlateCarrierGL_blk", "FGN_RU_V95_KKO", "rhs_6b43", "rhsusf_iotv_ocp_teamleader", "FGN_RU_6B513_Khaki", "V_PlateCarrierH_CTRG", "rhs_6b23_ML_6sh92_headset_mapcase", "FGN_RU_6B519_VSR_Officer", "FGN_RU_6B519_VSR_Sniper", "FGN_RU_V95_Podlesok_OMON", "rhs_6b23_6sh92_vog", "rhs_vest_commander", "V_PlateCarrierSpec_blk", "FGN_RU_V95_VSR_OMON", "rhsusf_spc", "FGN_RU_V95_Kamysh_Blue", "rhs_6b23_digi_rifleman", "rhs_6sh92_vog", "rhsusf_spc_corpsman", "V_PlateCarrierIA1_dgtl", "FGN_RU_6B513_VSR_Officer", "FGN_RU_6B513_VSR_Medic", "FGN_RU_6B519_Khaki_Medic", "FGN_RU_V95_KKO_Urban_2", "FGN_RU_6B513_Medic", "V_PlateCarrier1_rgr_noflag_F", "rhsusf_iotv_ocp_squadleader", "rhs_6sh92_vog_headset", "rhsusf_iotv_ocp_grenadier", "rhs_6b23", "rhs_6sh92_digi", "FGN_RU_V95_Podlesok_2", "rhs_6sh92_headset", "V_PlateCarrier1_blk", "FGN_RU_6B513_Khaki_Sniper", "V_PlateCarrierSpec_mtp", "rhsusf_spcs_ocp", "FGN_RU_V95_KKO_OMON", "rhs_6sh92_digi_vog_headset", "rhs_6b23_ML_6sh92_vog_headset", "rhsusf_iotv_ocp_repair", "rhs_6b23_ML_6sh92_radio", "V_RebreatherIR", "V_PlateCarrierSpec_rgr", "FGN_RU_6B519_Khaki_Sniper", "FGN_RU_6B513_Khaki_Officer", "rhsusf_iotv_ocp_rifleman", "V_PlateCarrier2_tna_F", "FGN_RU_6B513_TTsKO_Sniper", "rhs_6b23_ML", "rhs_6b23_digi_engineer", "V_TacChestrig_cbr_F", "V_PlateCarrier1_rgr", "rhs_6b23_digi", "FGN_RU_V95_Black_OMON", "V_RebreatherB", "FGN_RU_6B519_TTsKO_Medic", "rhs_6b23_ML_6sh92_headset", "rhs_6b23_digi_medic", "rhs_6b23_digi_sniper", "rhsusf_spc_squadleader", "rhs_6b23_6sh92_headset_mapcase", "FGN_RU_6B513_TTsKO", "rhsusf_spc_iar", "FGN_RU_V95_KKO_Urban", "rhs_6b23_crewofficer", "rhs_6b23_ML_rifleman", "rhs_6b23_ML_engineer", "FGN_RU_6B513_Sniper", "rhsusf_spc_light", "rhsusf_spc_teamleader", "FGN_RU_6B513_VSR", "FGN_RU_V95_Kamysh_OMON", "FGN_RU_V95_Kamysh", "rhs_6b23_ML_crew", "V_PlateCarrierGL_mtp", "rhs_6sh92_digi_headset", "FGN_RU_V95_Kamysh_Blue_OMON", "rhsusf_spcs_ucp", "rhs_6b23_crew", "V_PlateCarrierGL_tna_F", "rhs_6b23_digi_6sh92_radio"};

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
		MilitaryHeadgear[] = {"rhsusf_ach_helmet_headset_ucp", "rhsusf_mich_bare_norotos_alt_semi", "rhsusf_ach_helmet_ucp", "FGN_Sfera_VSR", "H_HelmetB_Light_tna_F", "rhsusf_opscore_mar_fg_pelt", "rhs_6b27m_ess", "rhsusf_opscore_bk", "FGN_Sfera_Green", "rhs_6b27m_green_ess_bala", "H_HelmetSpecO_ocamo", "rhsusf_opscore_fg_pelt_cam", "rhsusf_mich_bare_norotos_semi", "rhsusf_ach_bare_tan_ess", "rhs_6b28_flora", "H_HelmetB", "FGN_FieldCap_Kamysh_Blue", "rhsusf_mich_helmet_marpatwd_norotos", "H_PilotHelmetFighter_B", "rhsusf_ach_bare_semi", "rhs_altyn_novisor", "rhsusf_ach_helmet_M81", "FGN_SSH68_VSR2", "H_HelmetO_oucamo", "H_CrewHelmetHeli_I", "rhsusf_opscore_paint", "H_HelmetLeaderO_ocamo", "rhsusf_opscore_coy_cover", "FGN_SSH68_Khaki", "rhsusf_ach_bare_headset_ess", "rhsusf_ach_bare_wood_headset_ess", "FGN_CauR_Beanie_Woodland", "rhs_6b28_ess", "rhsusf_ach_bare_headset", "rhsusf_mich_helmet_marpatwd_alt_headset", "rhsusf_mich_bare_norotos", "H_HelmetSpecB_blk", "rhsusf_mich_bare_norotos_alt", "H_HelmetB_black", "rhsusf_mich_bare_norotos_arc_alt_headset", "rhsusf_ach_bare_tan", "rhs_6b27m_ml", "rhsusf_mich_helmet_marpatwd_alt", "rhsusf_opscore_ut_pelt", "rhsusf_opscore_ut", "rhsusf_ach_bare", "H_HelmetB_light_desert", "rhsusf_ach_bare_des_headset_ess", "H_HelmetSpecB_paint1", "rhs_6b28_bala", "rhsusf_opscore_rg_cover_pelt", "rhsusf_mich_bare_norotos_arc_semi_headset", "rhsusf_protech_helmet_rhino", "rhs_6b27m_green", "rhs_6b26_green", "H_HelmetB_desert", "rhs_altyn_novisor_bala", "FGN_SSH68_TTsKO", "rhsusf_mich_bare_headset", "rhs_6b28_flora_ess_bala", "rhsusf_opscore_mc_pelt", "rhs_Booniehat_ucp", "rhsusf_ach_bare_wood", "H_HelmetB_light_snakeskin", "FGN_CauR_Pakol_03", "rhs_6b27m_ml_ess", "rhsusf_ach_bare_ess", "H_HelmetO_ocamo", "rhsusf_ach_bare_des_ess", "H_HelmetIA_net", "FGN_FieldCap_Kamysh", "rhs_6b26_ess", "rhsusf_opscore_paint_pelt", "rhsusf_mich_helmet_marpatd_norotos_headset", "rhsusf_opscore_fg_pelt_nsw", "rhs_6b26_bala_green", "FGN_SSH68_TTsKO2", "rhsusf_mich_bare_norotos_arc_alt_tan_headset", "rhsusf_opscore_paint_pelt_nsw", "rhsusf_lwh_helmet_marpatd_ess", "rhsusf_mich_bare_norotos_semi_headset", "rhsusf_ach_bare_semi_ess", "rhs_6b28_green_ess", "rhsusf_mich_helmet_marpatd_norotos_arc", "FGN_CauR_Boonie_M81", "FGN_CauR_Beanie_Black", "H_HelmetIA", "FGN_CauR_Pakol_01", "H_HelmetCrew_B", "rhs_altyn_novisor_ess", "rhsusf_lwh_helmet_marpatwd", "FGN_SferaS_VSR", "rhsusf_mich_bare_tan", "rhsusf_opscore_ut_pelt_cam", "FGN_SSH68_VSR", "rhsusf_opscore_mc_pelt_nsw", "rhsusf_opscore_coy_cover_pelt", "rhs_6b26_ess_green", "rhsusf_ach_helmet_camo_ocp", "rhsusf_mich_bare_norotos_arc_alt_tan", "H_MilCap_mcamo", "rhsusf_ach_helmet_headset_ocp", "rhsusf_ach_helmet_ucp_norotos", "rhsusf_protech_helmet_rhino_ess", "rhs_6b27m_ess_bala", "rhsusf_opscore_mar_fg", "FGN_RU_Beret_OMON_New", "rhsusf_opscore_mar_ut_pelt", "rhs_6b27m_digi_bala", "H_BandMask_khk", "rhsusf_lwh_helmet_marpatd_headset", "rhsusf_ach_bare_des_headset", "H_HelmetB_TI_tna_F", "rhsusf_bowman_cap", "rhsusf_opscore_mc_cover_pelt_nsw", "rhsusf_lwh_helmet_marpatwd_ess", "H_HelmetB_snakeskin", "rhs_6b28_flora_bala", "H_HelmetB_sand", "rhsusf_mich_bare_semi_headset", "rhs_Booniehat_digi", "rhsusf_mich_bare_norotos_arc_semi", "H_PilotHelmetFighter_O", "rhsusf_mich_bare_alt", "rhs_Booniehat_flora", "rhsusf_mich_bare_norotos_tan_headset", "FGN_ZSH12_Black", "H_HelmetIA_camo", "rhsusf_ach_bare_des", "H_HelmetO_ghex_F", "H_HelmetSpecO_ghex_F", "Exile_Headgear_GasMask", "H_MilCap_rucamo", "rhs_altyn_visordown", "rhs_6b27m", "rhs_6b28", "rhsusf_mich_helmet_marpatd_headset", "rhs_6b27m_digi", "rhsusf_mich_bare_norotos_alt_headset", "rhs_6b28_ess_bala", "rhsusf_ach_helmet_headset_ess_ocp", "rhsusf_mich_bare_norotos_arc_headset", "FGN_CauR_Pakol_02", "rhsusf_opscore_bk_pelt", "rhsusf_mich_bare_alt_semi", "rhs_6b27m_digi_ess_bala", "H_HelmetSpecB_paint2", "H_MilCap_dgtl", "H_HelmetLeaderO_ghex_F", "rhsusf_mich_helmet_marpatwd", "rhsusf_mich_helmet_marpatwd_norotos_arc_headset", "rhsusf_ach_bare_tan_headset", "rhsusf_ach_bare_wood_ess", "H_PilotHelmetHeli_B", "rhs_6b27m_ml_bala", "rhs_6b26_ess_bala_green", "rhsusf_opscore_mc_cover_pelt_cam", "rhs_6b27m_ML_ess_bala", "rhsusf_mich_bare_norotos_alt_semi_headset", "rhs_6b26", "FGN_SSH68_Flora", "rhsusf_opscore_paint_pelt_nsw_cam", "rhsusf_mich_bare_alt_tan", "rhsusf_lwh_helmet_M1942", "rhsusf_mich_bare_norotos_arc_alt_semi", "H_HelmetB_paint", "rhs_6b27m_bala", "rhsusf_Bowman", "FGN_SSH68_KLMK", "H_MilCap_ocamo", "rhsusf_mich_bare_norotos_alt_tan_headset", "rhsusf_lwh_helmet_marpatwd_headset", "rhs_ssh68", "rhsusf_mich_bare_norotos_tan", "rhsusf_mich_bare_norotos_alt_tan", "rhsusf_opscore_mar_ut", "H_HelmetB_light_sand", "rhsusf_mich_helmet_marpatwd_norotos_arc", "rhsusf_mich_bare_semi", "rhsusf_ach_helmet_ocp", "H_HelmetCrew_I", "rhsusf_mich_bare_norotos_arc_tan", "FGN_ZSH12", "rhsusf_ach_helmet_ocp_norotos", "H_BandMask_reaper", "FGN_CauR_Beanie_Brown", "H_HelmetB_light", "rhs_6b26_ess_bala", "rhs_Booniehat_ocp", "H_HelmetLeaderO_oucamo", "rhsusf_opscore_ut_pelt_nsw", "rhs_Booniehat_m81", "rhsusf_opscore_fg", "rhs_6b26_bala", "rhsusf_ach_bare_wood_headset", "rhsusf_mich_bare_norotos_arc", "H_BandMask_demon", "rhs_6b28_green_bala", "H_HelmetB_plain_blk", "H_HelmetSpecB", "H_PilotHelmetFighter_I", "H_HelmetB_Enh_tna_F", "rhs_altyn_novisor_ess_bala", "rhsusf_mich_bare_tan_headset", "rhs_6b27m_digi_ess", "rhsusf_mich_helmet_marpatwd_headset", "H_PilotHelmetHeli_O", "rhsusf_mich_helmet_marpatd_alt_headset", "rhsusf_lwh_helmet_marpatd", "rhsusf_opscore_mc_cover", "rhsusf_mich_bare_norotos_arc_alt", "rhsusf_mich_helmet_marpatd_norotos_arc_headset", "rhsusf_opscore_mc", "H_Helmet_Skate", "rhsusf_opscore_ut_pelt_nsw_cam", "H_Beret_gen_F", "H_HelmetCrew_O", "H_HelmetB_light_black", "H_HelmetCrew_O_ghex_F", "H_MilCap_blue", "H_HelmetB_light_grass", "rhsusf_ach_helmet_ESS_ocp", "rhs_altyn", "rhsusf_mich_bare_norotos_arc_alt_semi_headset", "rhs_altyn_bala", "H_HelmetSpecO_blk", "rhsusf_protech_helmet", "rhsusf_mich_bare_norotos_headset", "rhsusf_mich_helmet_marpatwd_norotos_headset", "rhsusf_ach_helmet_ESS_ucp", "H_HelmetB_tna_F", "rhsusf_opscore_mc_cover_pelt", "rhs_6b27m_green_ess", "rhsusf_opscore_rg_cover", "rhsusf_protech_helmet_ess", "H_HelmetB_grass", "H_CrewHelmetHeli_O", "rhsusf_mich_bare", "rhsusf_opscore_fg_pelt", "rhsusf_ach_bare_tan_headset_ess", "rhs_Booniehat_marpatd", "H_CrewHelmetHeli_B", "FGN_CauR_PatrolCap_M81", "rhs_Booniehat_marpatwd", "FGN_RU_OSNBeret", "rhsusf_ach_helmet_headset_ess_ucp", "rhsusf_mich_helmet_marpatd_norotos", "H_MilCap_oucamo", "H_HelmetB_camo", "rhsusf_ach_bare_semi_headset", "FGN_ZSH12_Balaclava", "rhsusf_ach_bare_semi_headset_ess", "rhs_6b28_green", "rhs_6b28_flora_ess", "FGN_SferaS_Green", "H_PilotHelmetHeli_I", "rhs_6b28_green_ess_bala"};

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
		Ghillies[] = {"U_O_GhillieSuit", "U_B_GhillieSuit", "U_I_GhillieSuit", "U_O_GhillieSuit", "U_B_GhillieSuit", "U_I_GhillieSuit", "U_B_GhillieSuit", "U_B_GhillieSuit", "U_B_T_FullGhillie_tna_F", "U_B_GhillieSuit", "U_O_FullGhillie_ard", "U_B_GhillieSuit", "U_O_GhillieSuit", "U_O_GhillieSuit", "U_B_GhillieSuit", "U_O_GhillieSuit", "U_I_GhillieSuit", "U_B_GhillieSuit", "U_B_FullGhillie_sard", "U_B_GhillieSuit", "U_B_GhillieSuit", "U_I_GhillieSuit", "U_I_GhillieSuit", "U_I_GhillieSuit", "U_I_GhillieSuit", "U_O_GhillieSuit", "U_B_GhillieSuit", "U_B_GhillieSuit", "U_I_FullGhillie_sard", "U_O_GhillieSuit", "U_O_GhillieSuit", "U_B_GhillieSuit", "U_B_FullGhillie_ard", "U_B_GhillieSuit", "U_I_GhillieSuit", "U_B_GhillieSuit", "U_I_FullGhillie_lsh", "U_O_GhillieSuit", "U_O_GhillieSuit", "U_B_GhillieSuit", "U_O_GhillieSuit", "U_I_GhillieSuit", "U_B_GhillieSuit", "U_O_FullGhillie_sard", "U_I_GhillieSuit", "U_I_GhillieSuit", "U_I_GhillieSuit", "U_O_GhillieSuit", "U_B_FullGhillie_lsh", "U_I_GhillieSuit", "U_O_T_Sniper_F", "U_O_GhillieSuit", "U_I_GhillieSuit", "U_O_GhillieSuit", "U_I_GhillieSuit", "U_O_GhillieSuit", "U_I_GhillieSuit", "U_I_GhillieSuit", "U_O_GhillieSuit", "U_B_GhillieSuit", "U_B_GhillieSuit", "U_B_GhillieSuit", "U_I_GhillieSuit", "U_O_GhillieSuit", "U_I_FullGhillie_ard", "U_I_GhillieSuit", "U_B_T_Soldier_F", "U_O_FullGhillie_lsh", "U_O_GhillieSuit", "U_O_GhillieSuit", "U_I_GhillieSuit", "U_B_T_Sniper_F", "U_O_T_FullGhillie_tna_F", "U_O_GhillieSuit"};

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
		MedicalItems[] = {"Exitem_painkillers", "Exile_Item_Vishpirin", "Exile_Item_Defibrillator", "Exitem_dressing", "Exile_Item_Bandage", "Exitem_bloodbag", "Exile_Item_Bandage", "Exitem_bloodbag", "Exile_Item_Vishpirin", "Exitem_dressing", "Exile_Item_Bandage", "Exitem_antibiotic", "Exile_Item_Bandage", "Exitem_painkillers", "Exile_Item_Vishpirin", "Exile_Item_Bandage", "Exile_Item_Bandage", "Exile_Item_Bandage", "Exitem_disinfectant", "Exile_Item_Bandage", "Exile_Item_Bandage", "Exile_Item_Bandage", "Exitem_vitamins", "Exile_Item_Bandage", "Exitem_bandage_dirty", "Exile_Item_Bandage", "Exitem_disinfectant", "Exile_Item_Vishpirin", "Exitem_antibiotic", "Exile_Item_Bandage", "Exile_Item_Vishpirin", "Exitem_painkillers", "Exitem_dressing", "Exile_Item_Bandage", "Exile_Item_Bandage", "Exitem_disinfectant", "Exitem_vitamins", "Exile_Item_Bandage", "Exile_Item_Vishpirin", "Exitem_painkillers", "Exitem_antibiotic", "Exitem_dressing", "Exitem_bandage_dirty", "Exile_Item_Vishpirin", "Exitem_disinfectant", "Exitem_bloodbag", "Exitem_dressing", "Exitem_antibiotic", "Exitem_antibiotic", "Exitem_dressing", "Exitem_dressing", "Exitem_bloodbag", "Exile_Item_Bandage", "Exile_Item_Bandage", "Exitem_dressing", "Exitem_vitamins", "Exile_Item_InstaDoc", "Exitem_bandage_dirty", "Exitem_dressing", "Exitem_vitamins", "Exitem_bandage_dirty", "Exitem_dressing", "Exitem_disinfectant", "Exile_Item_InstaDoc", "Exile_Item_Bandage", "Exile_Item_Vishpirin", "Exitem_vitamins", "Exitem_dressing", "Exitem_bandage_dirty", "Exitem_antibiotic", "Exitem_disinfectant", "Exile_Item_Vishpirin", "Exitem_painkillers", "Exile_Item_InstaDoc", "Exile_Item_InstaDoc", "Exile_Item_Bandage", "Exile_Item_InstaDoc", "Exitem_dressing", "Exile_Item_Vishpirin", "Exile_Item_Bandage", "Exitem_bandage_dirty", "Exitem_bandage_dirty", "Exitem_dressing", "Exitem_bloodbag", "Exile_Item_InstaDoc", "Exitem_antibiotic", "Exile_Item_Bandage", "Exitem_bandage_dirty", "Exile_Item_Vishpirin", "Exitem_vitamins", "Exitem_disinfectant", "Exitem_bloodbag", "Exitem_vitamins", "Exitem_dressing", "Exile_Item_Bandage", "Exile_Item_InstaDoc", "Exile_Item_Vishpirin", "Exitem_bloodbag", "Exile_Item_Bandage", "Exitem_painkillers", "Exile_Item_Bandage", "Exitem_painkillers", "Exitem_bloodbag", "Exile_Item_Bandage", "Exitem_disinfectant", "Exitem_vitamins", "Exile_Item_Bandage", "Exitem_disinfectant", "Exitem_dressing", "Exitem_dressing", "Exitem_dressing", "Exitem_bandage_dirty", "Exitem_dressing", "Exitem_dressing", "Exitem_antibiotic", "Exitem_vitamins", "Exitem_vitamins", "Exitem_disinfectant", "Exitem_painkillers", "Exile_Item_Bandage", "Exitem_painkillers", "Exile_Item_Vishpirin", "Exitem_bandage_dirty", "Exitem_dressing", "Exile_Item_Vishpirin", "Exile_Item_Bandage", "Exile_Item_Vishpirin", "Exile_Item_InstaDoc", "Exile_Item_Bandage", "Exitem_bloodbag", "Exile_Item_InstaDoc", "Exitem_antibiotic", "Exitem_painkillers", "Exitem_antibiotic"};

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
		IndustrialItems[] = {"Exitem_torch", "Exile_Item_ScrewDriver", "Exile_Melee_Shovel", "Exile_Item_MetalScrews", "Exile_Item_Handsaw", "Exitem_torch", "Exile_Item_Grinder", "Exitem_gascooker", "Exitem_engine", "Exile_Item_WaterCanisterEmpty", "Exile_Melee_Shovel", "Exile_Melee_Shovel", "Exile_Melee_Axe", "Exile_Item_FloodLightKit", "Exile_Item_Handsaw", "Exitem_gascooker", "Exitem_rotor", "Exile_Item_MetalBoard", "Exile_Melee_Axe", "Exitem_windshield", "Exile_Item_ScrewDriver", "Exile_Item_LightBulb", "Exitem_flashlight", "Exile_Item_MetalBoard", "Exitem_gascooker", "Exitem_gascooker", "Exile_Item_WaterCanisterEmpty", "Exile_Item_LightBulb", "Exile_Item_ScrewDriver", "Exitem_flashlight", "Exitem_gascooker", "Exile_Item_Cement", "Exile_Melee_SledgeHammer", "Exile_Melee_Shovel", "Exile_Item_Cement", "Exitem_windshield", "Exile_Item_Handsaw", "Exile_Item_ExtensionCord", "Exitem_carbattery", "Exile_Item_Sand", "Exitem_flashlight", "Exile_Item_ScrewDriver", "Exile_Item_Pliers", "Exitem_measuringtape", "Exile_Item_Handsaw", "Exile_Melee_SledgeHammer", "Exile_Item_ScrewDriver", "Exile_Melee_SledgeHammer", "Exile_Item_Knife", "Exile_Item_FloodLightKit", "Exitem_rotor", "Exile_Item_JunkMetal", "Exile_Item_LightBulb", "Exile_Melee_Shovel", "Exile_Item_FloodLightKit", "Exile_Item_PortableGeneratorKit", "Exile_Item_JunkMetal", "Exile_Item_PortableGeneratorKit", "Exile_Item_ExtensionCord", "Exitem_fueltank", "Exile_Item_ExtensionCord", "Exile_Item_JunkMetal", "Exile_Item_ScrewDriver", "Exile_Item_MetalBoard", "Exitem_flashlight", "Exile_Item_Cement", "Exitem_fueltank", "Exile_Melee_Axe", "Exile_Melee_SledgeHammer", "Exile_Item_Sand", "Exile_Item_Pliers", "Exitem_engine", "Exile_Item_Cement", "Exile_Melee_Shovel", "Exile_Item_PortableGeneratorKit", "Exile_Melee_Shovel", "Exile_Item_WaterCanisterEmpty", "Exile_Item_ScrewDriver", "Exile_Melee_SledgeHammer", "Exile_Item_LightBulb", "Exile_Item_Sand", "Exitem_flashlight", "Exile_Item_Pliers", "Exitem_engine", "Exile_Melee_SledgeHammer", "Exile_Melee_Shovel", "Exile_Item_JunkMetal", "Exile_Item_ExtensionCord", "Exile_Item_MetalScrews", "Exile_Melee_Shovel", "Exile_Melee_Shovel", "Exile_Melee_Axe", "Exile_Item_Handsaw", "Exitem_fueltank", "Exile_Item_MetalBoard", "Exile_Item_Sand", "Exile_Item_Grinder", "Exile_Melee_Axe", "Exile_Item_Sand", "Exile_Item_FloodLightKit", "Exitem_measuringtape", "Exile_Item_Pliers", "Exile_Item_Foolbox", "Exile_Item_Grinder", "Exile_Melee_Axe", "Exitem_measuringtape", "Exile_Item_Pliers", "Exile_Melee_Axe", "Exile_Melee_SledgeHammer", "Exile_Item_MetalScrews", "Exile_Item_Handsaw", "Exile_Item_Foolbox", "Exile_Item_Foolbox", "Exitem_rotor", "Exile_Item_Pliers", "Exile_Item_Pliers", "Exile_Item_JunkMetal", "Exitem_torch", "Exitem_measuringtape", "Exile_Item_ExtensionCord", "Exile_Item_Handsaw", "Exile_Melee_SledgeHammer", "Exile_Item_Handsaw", "Exile_Item_WaterCanisterEmpty", "Exile_Item_Pliers", "Exile_Item_ScrewDriver", "Exile_Item_Grinder", "Exile_Item_Handsaw", "Exile_Item_Foolbox", "Exile_Item_PortableGeneratorKit", "Exile_Melee_SledgeHammer", "Exile_Item_ScrewDriver", "Exile_Item_MetalBoard", "Exile_Item_Grinder", "Exile_Melee_SledgeHammer", "Exile_Item_PortableGeneratorKit", "Exile_Item_MetalScrews", "Exile_Item_Pliers", "Exile_Item_Cement", "Exitem_measuringtape", "Exitem_carbattery", "Exile_Item_WaterCanisterEmpty", "Exile_Item_MetalScrews", "Exile_Item_Handsaw", "Exile_Item_LightBulb", "Exitem_windshield", "Exile_Item_Foolbox", "Exile_Item_Pliers", "Exitem_carbattery", "Exitem_torch", "Exile_Melee_Axe", "Exile_Item_FloodLightKit", "Exile_Melee_Axe", "Exitem_torch", "Exile_Melee_Axe", "Exile_Item_ScrewDriver"};

		/*
			Percental Item Spawn Chances of Vehicle:

			Exile_Item_FuelCanisterFull  = 35.71%
			Exile_Item_FuelCanisterEmpty = 35.71%
			Exile_Item_DuctTape          = 14.29%
			Exile_Item_Rope              = 14.29%
		*/
		Vehicle[] = {"Exile_Item_FuelCanisterFull", "Exile_Item_FuelCanisterEmpty", "Exile_Item_FuelCanisterFull", "Exile_Item_FuelCanisterEmpty", "Exile_Item_FuelCanisterEmpty", "Exile_Item_FuelCanisterFull", "Exile_Item_DuctTape", "Exile_Item_DuctTape", "Exile_Item_Rope", "Exile_Item_FuelCanisterFull", "Exile_Item_FuelCanisterEmpty", "Exile_Item_FuelCanisterFull", "Exile_Item_FuelCanisterEmpty", "Exile_Item_FuelCanisterFull", "Exile_Item_FuelCanisterFull", "Exile_Item_FuelCanisterEmpty", "Exile_Item_FuelCanisterFull", "Exile_Item_FuelCanisterEmpty", "Exile_Item_FuelCanisterFull", "Exile_Item_FuelCanisterFull", "Exile_Item_FuelCanisterEmpty", "Exile_Item_FuelCanisterFull", "Exile_Item_Rope", "Exile_Item_DuctTape", "Exile_Item_FuelCanisterEmpty", "Exile_Item_FuelCanisterEmpty", "Exile_Item_DuctTape", "Exile_Item_FuelCanisterFull", "Exile_Item_Rope", "Exile_Item_DuctTape", "Exile_Item_FuelCanisterEmpty", "Exile_Item_FuelCanisterFull", "Exile_Item_Rope", "Exile_Item_DuctTape", "Exile_Item_DuctTape", "Exile_Item_Rope", "Exile_Item_FuelCanisterEmpty", "Exile_Item_FuelCanisterEmpty", "Exile_Item_FuelCanisterEmpty", "Exile_Item_FuelCanisterEmpty", "Exile_Item_FuelCanisterEmpty", "Exile_Item_DuctTape", "Exile_Item_DuctTape", "Exile_Item_FuelCanisterEmpty", "Exile_Item_FuelCanisterEmpty", "Exile_Item_FuelCanisterFull", "Exile_Item_Rope", "Exile_Item_FuelCanisterFull", "Exile_Item_FuelCanisterEmpty", "Exile_Item_FuelCanisterEmpty", "Exile_Item_FuelCanisterFull", "Exile_Item_Rope", "Exile_Item_DuctTape", "Exile_Item_FuelCanisterFull", "Exile_Item_FuelCanisterFull", "Exile_Item_Rope", "Exile_Item_Rope", "Exile_Item_FuelCanisterEmpty", "Exile_Item_Rope", "Exile_Item_FuelCanisterFull", "Exile_Item_FuelCanisterEmpty", "Exile_Item_FuelCanisterEmpty", "Exile_Item_FuelCanisterFull", "Exile_Item_FuelCanisterFull", "Exile_Item_FuelCanisterFull", "Exile_Item_FuelCanisterEmpty", "Exile_Item_FuelCanisterEmpty", "Exile_Item_FuelCanisterFull", "Exile_Item_FuelCanisterFull", "Exile_Item_FuelCanisterFull"};

		/*
			Percental Item Spawn Chances of Chemlights:

			Chemlight_blue   = 25.00%
			Chemlight_green  = 25.00%
			Chemlight_red    = 25.00%
			Chemlight_yellow = 25.00%
		*/
		Chemlights[] = {"Chemlight_green", "Chemlight_blue", "Chemlight_yellow", "Chemlight_red"};

		/*
			Percental Item Spawn Chances of RoadFlares:

			FlareGreen_F  = 25.00%
			FlareRed_F    = 25.00%
			FlareWhite_F  = 25.00%
			FlareYellow_F = 25.00%
		*/
		RoadFlares[] = {"FlareWhite_F", "FlareYellow_F", "FlareRed_F", "FlareGreen_F"};

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
		SmokeGrenades[] = {"SmokeShellGreen", "SmokeShellRed", "SmokeShell", "SmokeShellPurple", "SmokeShellBlue", "SmokeShellOrange", "SmokeShellYellow"};

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
		Electronics[] = {"Exile_Item_CordlessScrewdriver", "Exile_Item_Laptop", "Exile_Item_Codelock", "Exile_Item_ThermalScannerPro", "Exile_Item_Codelock", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_Laptop", "Exile_Item_BaseCameraKit", "Exile_Item_Laptop", "Exile_Item_Laptop", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_Codelock", "Exile_Item_Codelock", "Exile_Item_CordlessScrewdriver", "Exile_Item_BaseCameraKit", "Exitem_documents", "Exile_Item_BaseCameraKit", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_BaseCameraKit", "Exile_Item_Laptop", "Exile_Item_Codelock", "Exile_Item_Codelock", "Exile_Item_BaseCameraKit", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exitem_documents", "Exile_Item_Laptop", "Exile_Item_CordlessScrewdriver", "Exile_Item_Laptop", "Exitem_documents", "Exile_Item_CordlessScrewdriver", "Exile_Item_Laptop", "Exile_Item_ThermalScannerPro", "Exile_Item_Laptop", "Exile_Item_Laptop", "Exile_Item_Laptop", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exitem_documents", "Exile_Item_Laptop", "Exile_Item_BaseCameraKit", "Exile_Item_BaseCameraKit", "Exile_Item_BaseCameraKit", "Exile_Item_Laptop", "Exile_Item_Laptop", "Exitem_documents", "Exile_Item_BaseCameraKit", "Exile_Item_CordlessScrewdriver", "Exile_Item_Codelock", "Exitem_documents", "Exile_Item_BaseCameraKit", "Exile_Item_Laptop", "Exile_Item_Laptop", "Exile_Item_Laptop", "Exile_Item_CordlessScrewdriver", "Exitem_documents", "Exitem_documents", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_Laptop", "Exile_Item_BaseCameraKit", "Exile_Item_Codelock", "Exile_Item_BaseCameraKit", "Exile_Item_BaseCameraKit", "Exile_Item_BaseCameraKit", "Exile_Item_CordlessScrewdriver", "Exile_Item_Laptop", "Exitem_documents", "Exile_Item_Codelock", "Exile_Item_Codelock", "Exile_Item_Laptop", "Exitem_documents", "Exitem_documents", "Exile_Item_BaseCameraKit", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_ThermalScannerPro", "Exile_Item_CordlessScrewdriver", "Exile_Item_Laptop", "Exile_Item_Laptop", "Exile_Item_ThermalScannerPro", "Exile_Item_BaseCameraKit", "Exile_Item_BaseCameraKit", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_BaseCameraKit", "Exile_Item_BaseCameraKit", "Exile_Item_CordlessScrewdriver", "Exile_Item_BaseCameraKit", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exitem_documents", "Exile_Item_BaseCameraKit", "Exile_Item_Laptop", "Exile_Item_BaseCameraKit", "Exile_Item_BaseCameraKit", "Exile_Item_BaseCameraKit", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_BaseCameraKit", "Exile_Item_CordlessScrewdriver", "Exile_Item_Laptop", "Exile_Item_CordlessScrewdriver", "Exile_Item_Laptop", "Exile_Item_CordlessScrewdriver", "Exile_Item_Codelock", "Exile_Item_Laptop", "Exile_Item_Laptop", "Exile_Item_CordlessScrewdriver", "Exile_Item_Codelock", "Exile_Item_BaseCameraKit", "Exile_Item_CordlessScrewdriver", "Exile_Item_BaseCameraKit", "Exile_Item_CordlessScrewdriver", "Exile_Item_BaseCameraKit", "Exile_Item_Laptop", "Exitem_documents", "Exile_Item_Codelock", "Exile_Item_Laptop", "Exile_Item_CordlessScrewdriver", "Exile_Item_ThermalScannerPro", "Exile_Item_Codelock", "Exile_Item_BaseCameraKit", "Exitem_documents", "Exitem_documents", "Exile_Item_Laptop", "Exile_Item_CordlessScrewdriver", "Exile_Item_Laptop", "Exile_Item_Laptop", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_Laptop", "Exile_Item_Laptop", "Exile_Item_CordlessScrewdriver", "Exile_Item_Laptop", "Exile_Item_Laptop", "Exile_Item_Codelock", "Exile_Item_Codelock", "Exile_Item_CordlessScrewdriver", "Exile_Item_Codelock", "Exile_Item_CordlessScrewdriver", "Exitem_documents", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_Codelock", "Exile_Item_CordlessScrewdriver", "Exitem_documents", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_BaseCameraKit", "Exile_Item_BaseCameraKit", "Exile_Item_Laptop", "Exile_Item_Laptop", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_Laptop", "Exile_Item_Codelock", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exitem_documents", "Exile_Item_Laptop", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_BaseCameraKit", "Exile_Item_CordlessScrewdriver", "Exile_Item_BaseCameraKit", "Exile_Item_BaseCameraKit", "Exile_Item_Laptop", "Exile_Item_Laptop", "Exile_Item_Laptop", "Exile_Item_BaseCameraKit", "Exile_Item_Laptop", "Exile_Item_CordlessScrewdriver", "Exile_Item_BaseCameraKit", "Exile_Item_CordlessScrewdriver", "Exile_Item_BaseCameraKit", "Exile_Item_BaseCameraKit", "Exitem_documents", "Exile_Item_Codelock", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_BaseCameraKit", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_BaseCameraKit", "Exile_Item_Laptop", "Exile_Item_CordlessScrewdriver", "Exitem_documents", "Exile_Item_Laptop", "Exile_Item_Laptop", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_Laptop", "Exile_Item_CordlessScrewdriver", "Exile_Item_CordlessScrewdriver", "Exile_Item_Laptop", "Exile_Item_Laptop"};

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
		Trash[] = {"Exitem_bucket", "Exile_Item_Magazine04", "Exitem_can_crushed", "Exitem_pillow_flannel", "Exile_Item_PlasticBottleEmpty", "Exile_Item_Magazine03", "Exile_Item_Magazine02", "Exitem_pillow", "Exile_Item_Magazine01", "Exitem_pencil", "Exitem_camera", "Exile_Item_ToiletPaper", "Exitem_nails", "Exile_Item_Can_Empty", "Exitem_cloth", "Exitem_airhorn"};

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
		Unused[] = {"Exile_Item_SleepingMat", "Exile_Item_FireExtinguisher", "Exile_Item_Hammer", "Exile_Item_OilCanister", "Exile_Item_Wrench", "Exile_Item_CordlessScrewdriver", "Exile_Item_Carwheel"};
	};
};