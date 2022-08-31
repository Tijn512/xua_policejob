Config                            = {}

Config.DrawDistance               = 100.0 -- Hoe dichtbij moet je zijn om de markers te tekenen (in GTA-eenheden).
Config.MarkerType                 = {Cloakrooms = 20, Armories = 21, BossActions = 22, Vehicles = 36, Helicopters = 34}
Config.MarkerSize                 = {x = 1.5, y = 1.5, z = 0.5}
Config.MarkerColor                = {r = 50, g = 50, b = 204}

Config.EnablePlayerManagement     = true -- Schakel in als u esx_identity gebruikt.
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- Schakel in als u esx_identity gebruikt.
Config.EnableLicenses             = true -- Schakel in als u esx_license gebruikt.

Config.EnableHandcuffTimer        = true -- Handboeien-timer inschakelen? zal de speler opheffen nadat de tijd is verstreken.
Config.HandcuffTimer              = 10 * 60000 -- 10 minuten

Config.EnableJobBlip              = true -- Enable blips for cops on duty, requires esx_society.
Config.EnableCustomPeds           = false -- Enable custom peds in cloak room? See Config.CustomPeds below to customize peds.
Config.assistentiecollega         = false

Config.EnableESXService           = false -- Enable esx service?
Config.MaxInService               = -1 -- How much people can be in service at once?

Config.Locale                     = 'nl'

Config.policeStations = {

	LSPD = {

		Blip = {
			Coords  = vector3(-1088.52, -830.85, 33.18),
			Sprite  = 60,
			Display = 4,
			Scale   = 1.2,
			Colour  = 0
		},

		Cloakrooms = {
			vector3(-1098.17, -831.62, -243509814.28)
		},

		Armories = {
			vector3(-1098.3537597656, -826.79675292969, -14.283270835876)
		},

		Vehicles = {
			{
				Spawner = vector3(-1081.39, -864.98, 5.04),
				InsideShop = vector3(-1077.69, -845.83, 4.88),
				SpawnPoints = {
					{coords = vector3(-1039.57, -855.56, 4.88), heading = 57.08, radius = 2.5},
					{coords = vector3(-1042.84, -858.06, 4.89), heading = 59.29, radius = 2.5},
					{coords = vector3(-1045.86, -861.19, 4.92), heading = 51.81, radius = 2.5},
                    {coords = vector3(-1049.2, -864.06, 5.01), heading = 55.68, radius = 2.5},
                    {coords = vector3(-1052.46, -866.62, 5.12), heading = 57.55, radius = 2.5},
                    {coords = vector3(-1069.9, -877.6, 4.84), heading = 30.3, radius = 2.5},
                    {coords = vector3(-1073.44, -879.03, 4.76), heading = 31.91, radius = 2.5},
                    {coords = vector3(-1076.34, -881.89, 4.68), heading = 37.27, radius = 2.5},
                    {coords = vector3(-1079.73, -883.54, 4.6), heading = 32.87, radius = 2.5},
                    {coords = vector3(-1047.56, -847.08, 4.87), heading = 215.66, radius = 2.5},
                    {coords = vector3(-1051.76, -847.71, 4.87), heading = 218.5, radius = 2.5}
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(-1092.3, -840.25, 37.7),
				InsideShop = vector3(-1096.27, -832.37, 37.7),
				SpawnPoints = {
					{coords = vector3(-1096.27, -832.37, 37.7), heading = 307.8, radius = 10.0}
				}
			}
		},


		BossActions = {
			vector3(-1113.2794, -832.9193, 34.3611)
		}

	}

}


Config.AuthorizedWeapons = {
	aspirant = { 
		{weapon = 'gadget_parachute', price = 0, label = "Parachute"},
	        {weapon = 'weapon_fireextinguisher', price = 0, label = "Brand Blusser"},
		{weapon = 'weapon_flashlight', price = 0, label = "Zaklamp"},
		{weapon = 'nightstick', price = 0, label = "WapenStok"},
		{weapon = 'stungun', price = 0, label = "Tazer"}
	},

	surveillant = {
		{weapon = 'gadget_parachute', price = 0, label = "Parachute"},
	        {weapon = 'weapon_fireextinguisher', price = 0, label = "Brand Blusser"},
		{weapon = 'weapon_flashlight', price = 0, label = "Zaklamp"},
		{weapon = 'weapon_nightstick', price = 0, label = "WapenStok"},
		{weapon = 'weapon_stungun', price = 0, label = "Tazer"},
		{weapon = 'weapon_combatpistol', price = 0, label = "Combat Pistol" },
	},

	agent = {
		{weapon = 'gadget_parachute', price = 0, label = "Parachute"},
	        {weapon = 'weapon_fireextinguisher', price = 0, label = "Brand Blusser"},
		{weapon = 'weapon_flashlight', price = 0, label = "Zaklamp"},
		{weapon = 'weapon_nightstick', price = 0, label = "WapenStok"},
		{weapon = 'weapon_stungun', price = 0, label = "Tazer"},
		{weapon = 'weapon_combatpistol', price = 0, label = "Combat Pistol" },
	},

	hoofdagent = {
		{weapon = 'gadget_parachute', price = 0, label = "Parachute"},
	        {weapon = 'weapon_fireextinguisher', price = 0, label = "Brand Blusser"},
		{weapon = 'weapon_flashlight', price = 0, label = "Zaklamp"},
		{weapon = 'weapon_nightstick', price = 0, label = "WapenStok"},
		{weapon = 'weapon_stungun', price = 0, label = "Tazer"},
		{weapon = 'weapon_combatpistol', price = 0, label = "Combat Pistol" },
	},


	brigadier = {
		{weapon = 'gadget_parachute', price = 0, label = "Parachute"},
	        {weapon = 'weapon_fireextinguisher', price = 0, label = "Brand Blusser"},
		{weapon = 'weapon_flashlight', price = 0, label = "Zaklamp"},
		{weapon = 'weapon_nightstick', price = 0, label = "WapenStok"},
		{weapon = 'weapon_stungun', price = 0, label = "Tazer"},
		{weapon = 'weapon_combatpistol', price = 0, label = "Combat Pistol" },
	},

	inspecteur = {
		{weapon = 'gadget_parachute', price = 0, label = "Parachute"},
	        {weapon = 'weapon_fireextinguisher', price = 0, label = "Brand Blusser"},
		{weapon = 'weapon_flashlight', price = 0, label = "Zaklamp"},
		{weapon = 'weapon_nightstick', price = 0, label = "WapenStok"},
		{weapon = 'weapon_stungun', price = 0, label = "Tazer"},
		{weapon = 'weapon_combatpistol', price = 0, label = "Combat Pistol" },
	},

	hoofdinspecteur = {
		{weapon = 'gadget_parachute', price = 0, label = "Parachute"},
	        {weapon = 'fireextinguisher', price = 0, label = "Brand Blusser"},
		{weapon = 'weapon_flashlight', price = 0, label = "Zaklamp"},
		{weapon = 'weapon_nightstick', price = 0, label = "WapenStok"},
		{weapon = 'weapon_stungun', price = 0, label = "Tazer"},
		{weapon = 'weapon_combatpistol', price = 0, label = "Combat Pistol" },
	},

	commissaris = {
		{weapon = 'gadget_parachute', price = 0, label = "Parachute"},
	        {weapon = 'fireextinguisher', price = 0, label = "Brand Blusser"},
		{weapon = 'weapon_flashlight', price = 0, label = "Zaklamp"},
		{weapon = 'weapon_nightstick', price = 0, label = "WapenStok"},
		{weapon = 'weapon_stungun', price = 0, label = "Tazer"},
		{weapon = 'weapon_combatpistol', price = 0, label = "Combat Pistol" },
		{weapon = 'weapon_smg', components = { 0, 0, 0, 0, 0, 0 }, price = 0, label = "SMG"},
		{weapon = 'weapon_carbinerifle', components = { 0, 0, 0, 0, 0, 0, 0 }, price = 0, label = "Carbine Rifle"},
		{weapon = 'weapon_carbinerifle_mk2', components = { 0, 0, 0, 0, 0, 0 }, price = 0, label = "Carbine Rifle MK2"},
	},

	hoofdcommissaris = {
		{weapon = 'gadget_parachute', price = 0, label = "Parachute"},
	        {weapon = 'weapon_fireextinguisher', price = 0, label = "Brand Blusser"},
		{weapon = 'weapon_flashlight', price = 0, label = "Zaklamp"},
		{weapon = 'weapon_nightstick', price = 0, label = "WapenStok"},
		{weapon = 'weapon_stungun', price = 0, label = "Tazer"},
		{weapon = 'weapon_combatpistol', price = 0, label = "Combat Pistol" },
		{weapon = 'weapon_smg', components = { 0, 0, 0, 0, 0, 0 }, price = 0, label = "SMG"},
		{weapon = 'weapon_carbinerifle', components = { 0, 0, 0, 0, 0, 0, 0 }, price = 0, label = "Carbine Rifle"},
		{weapon = 'weapon_carbinerifle_mk2', components = { 0, 0, 0, 0, 0, 0 }, price = 0, label = "Carbine Rifle MK2"},
	},

	korpsleiding = {
		{weapon = 'gadget_parachute', price = 0, label = "Parachute"},
	        {weapon = 'weapon_fireextinguisher', price = 0, label = "Brand Blusser"},
		{weapon = 'weapon_flashlight', price = 0, label = "Zaklamp"},
		{weapon = 'weapon_nightstick', price = 0, label = "WapenStok"},
		{weapon = 'weapon_stungun', price = 0, label = "Tazer"},
		{weapon = 'weapon_combatpistol', price = 0, label = "Combat Pistol" },
		{weapon = 'weapon_smg', components = { 0, 0, 0, 0, 0, 0 }, price = 0, label = "SMG"},
		{weapon = 'weapon_carbinerifle', components = { 0, 0, 0, 0, 0, 0, 0 }, price = 0, label = "Carbine Rifle"},
		{weapon = 'weapon_carbinerifle_mk2', components = { 0, 0, 0, 0, 0, 0 }, price = 0, label = "Carbine Rifle MK2"},
	},


	recherche1 = {
		{weapon = 'gadget_parachute', price = 0, label = "Parachute"},
	        {weapon = 'weapon_fireextinguisher', price = 0, label = "Brand Blusser"},
		{weapon = 'weapon_flashlight', price = 0, label = "Zaklamp"},
		{weapon = 'weapon_nightstick', price = 0, label = "WapenStok"},
		{weapon = 'weapon_stungun', price = 0, label = "Tazer"},
		{weapon = 'weapon_combatpistol', price = 0, label = "Combat Pistol" },
		{weapon = 'weapon_smg', components = { 0, 0, 0, 0, 0, 0 }, price = 0, label = "SMG"},
		{weapon = 'weapon_carbinerifle', components = { 0, 0, 0, 0, 0, 0, 0 }, price = 0, label = "Carbine Rifle"},
		{weapon = 'weapon_carbinerifle_mk2', components = { 0, 0, 0, 0, 0, 0 }, price = 0, label = "Carbine Rifle MK2"},
	},

	recherche2 = {
		{weapon = 'gadget_parachute', price = 0, label = "Carbine Rifle MK2"},
	        {weapon = 'weapon_fireextinguisher', price = 0, label = "Brand Blusser"},
		{weapon = 'weapon_flashlight', price = 0, label = "Zaklamp"},
		{weapon = 'weapon_nightstick', price = 0, label = "WapenStok"},
		{weapon = 'weapon_stungun', price = 0, label = "Tazer"},
		{weapon = 'weapon_combatpistol', price = 0, label = "Combat Pistol" },
		{weapon = 'weapon_smg', components = { 0, 0, 0, 0, 0, 0 }, price = 0, label = "SMG"}
	},

	recherche3 = {
		{weapon = 'gadget_parachute', price = 0, label = "Carbine Rifle MK2"},
	        {weapon = 'weapon_fireextinguisher', price = 0, label = "Brand Blusser"},
		{weapon = 'weapon_flashlight', price = 0, label = "Zaklamp"},
		{weapon = 'weapon_nightstick', price = 0, label = "WapenStok"},
		{weapon = 'weapon_stungun', price = 0, label = "Tazer"},
		{weapon = 'weapon_combatpistol', price = 0, label = "Combat Pistol" },
		{weapon = 'weapon_smg', components = { 0, 0, 0, 0, 0, 0 }, price = 0, label = "SMG"}
	},


	recherche4 = {
		{weapon = 'gadget_parachute', price = 0, label = "Carbine Rifle MK2"},
	        {weapon = 'weapon_fireextinguisher', price = 0, label = "Brand Blusser"},
		{weapon = 'weapon_flashlight', price = 0, label = "Zaklamp"},
		{weapon = 'weapon_nightstick', price = 0, label = "WapenStok"},
		{weapon = 'weapon_stungun', price = 0, label = "Tazer"},
		{weapon = 'weapon_combatpistol', price = 0, label = "Combat Pistol" },
		{weapon = 'weapon_smg', components = { 0, 0, 0, 0, 0, 0 }, price = 0, label = "SMG"}
	},

	korporaals = {
		{weapon = 'gadget_parachute', price = 0, label = "Parachute"},
	        {weapon = 'weapon_fireextinguisher', price = 0, label = "Brand Blusser"},
		{weapon = 'weapon_flashlight', price = 0, label = "Zaklamp"},
		{weapon = 'weapon_nightstick', price = 0, label = "WapenStok"},
		{weapon = 'weapon_stungun', price = 0, label = "Tazer"},
		{weapon = 'weapon_combatpistol', price = 0, label = "Combat Pistol" },
		{weapon = 'weapon_smg', components = { 0, 0, 0, 0, 0, 0 }, price = 0, label = "SMG"},
		{weapon = 'weapon_carbinerifle', components = { 0, 0, 0, 0, 0, 0, 0 }, price = 0, label = "Carbine Rifle"},
		{weapon = 'weapon_carbinerifle_mk2', components = { 0, 0, 0, 0, 0, 0 }, price = 0, label = "Carbine Rifle MK2"},
	},

	onderofficieren = {
		{weapon = 'gadget_parachute', price = 0, label = "Carbine Rifle MK2"},
	        {weapon = 'weapon_fireextinguisher', price = 0, label = "Brand Blusser"},
		{weapon = 'weapon_flashlight', price = 0, label = "Zaklamp"},
		{weapon = 'weapon_nightstick', price = 0, label = "WapenStok"},
		{weapon = 'weapon_stungun', price = 0, label = "Tazer"},
		{weapon = 'weapon_combatpistol', price = 0, label = "Combat Pistol" },
		{weapon = 'weapon_smg', price = 0, label = "SMG" },
		{weapon = 'weapon_carbinerifle', price = 0, label = "Carbine Rifle" },
		{weapon = 'weapon_carbinerifle_mk2', price = 0, label = "Carbine Rifle MK2" },
	},

	officieren = {
		{weapon = 'gadget_parachute', price = 0, label = "Carbine Rifle MK2"},
	        {weapon = 'weapon_fireextinguisher', price = 0, label = "Brand Blusser"},
		{weapon = 'weapon_flashlight', price = 0, label = "Zaklamp"},
		{weapon = 'weapon_nightstick', price = 0, label = "WapenStok"},
		{weapon = 'weapon_stungun', price = 0, label = "Tazer"},
		{weapon = 'weapon_combatpistol', price = 0, label = "Combat Pistol" },
		{weapon = 'weapon_smg', price = 0, label = "SMG" },
		{weapon = 'weapon_carbinerifle', price = 0, label = "Carbine Rifle" },
		{weapon = 'weapon_carbinerifle_mk2', price = 0, label = "Carbine Rifle MK2" },
	},

	majoor = {
		{weapon = 'gadget_parachute', price = 0, label = "Carbine Rifle MK2"},
	        {weapon = 'weapon_fireextinguisher', price = 0, label = "Brand Blusser"},
		{weapon = 'weapon_flashlight', price = 0, label = "Zaklamp"},
		{weapon = 'weapon_nightstick', price = 0, label = "WapenStok"},
		{weapon = 'weapon_stungun', price = 0, label = "Tazer"},
		{weapon = 'weapon_combatpistol', price = 0, label = "Combat Pistol" },
		{weapon = 'weapon_smg', price = 0, label = "SMG" },
		{weapon = 'weapon_carbinerifle', price = 0, label = "Carbine Rifle" },
		{weapon = 'weapon_carbinerifle_mk2', price = 0, label = "Carbine Rifle MK2" },
	},
}

Config.AuthorizedVehicles = {
	car = {
		aspirant = {
			{model = 'poltouran2016', label = 'Touran', price = -1},
			{model = 'polfiets', label = 'Fiets', price = -1},
			{model = 'polvito2016', label = 'Vito', price = -1}
		},

		surveillant = {
			{model = 'poltouran2016', label = 'Touran', price = -1},
			{model = 'pamarok', label = 'Amarok', price = -1},
			{model = 'polfiets', label = 'Fiets', price = -1},
			{model = 'polvito2016', label = 'Vito', price = -1},
			{model = 'flatbedp', label = 'Politie Flatbed', price = -1}
		},

		agent = {
			{model = 'poltouran2016', label = 'Touran', price = -1},
			{model = 'pamarok', label = 'Amarok', price = -1},
			{model = 'polfiets', label = 'Fiets', price = -1},
			{model = 'polvito2016', label = 'Vito', price = -1},
			{model = 'bf400', label = 'Lichte Motor', price = -1},
			{model = 'policeb', label = 'Zwarte Motor', price = -1},
			{model = 'police3', label = 'Audi A6', price = -1},
			{model = 'flatbedp', label = 'Politie Flatbed', price = -1}
		},

		hoofdagent = {
			{model = 'poltouran2016', label = 'Touran', price = -1},
			{model = 'pamarok', label = 'Amarok', price = -1},
			{model = 'polfiets', label = 'Fiets', price = -1},
			{model = 'polvito2016', label = 'Vito', price = -1},
			{model = 'bf400', label = 'Lichte Motor', price = -1},
			{model = 'policeb', label = 'Zwarte Motor', price = -1},
			{model = 'police3', label = 'Audi A6', price = -1},
			{model = 'politiev90', label = 'Unmarked Volvo', price = -1},
			{model = 'unmarkedrs6', label = 'Unmarked RS6', price = -1},
			{model = 'flatbedp', label = 'Politie Flatbed', price = -1}
		},

		brigadier = {
			{model = 'poltouran2016', label = 'Touran', price = -1},
			{model = 'pamarok', label = 'Amarok', price = -1},
			{model = 'polfiets', label = 'Fiets', price = -1},
			{model = 'polvito2016', label = 'Vito', price = -1},
			{model = 'bf400', label = 'Lichte Motor', price = -1},
			{model = 'policeb', label = 'Zwarte Motor', price = -1},
			{model = 'police3', label = 'Audi A6', price = -1},	
			{model = 'politiev90', label = 'Unmarked Volvo', price = -1},
			{model = 'unmarkedrs6', label = 'Unmarked RS6', price = -1},
			{model = 'flatbedp', label = 'Politie Flatbed', price = -1}
		},

		inspecteur = {
			{model = 'poltouran2016', label = 'Touran', price = -1},
			{model = 'pamarok', label = 'Amarok', price = -1},
			{model = 'polfiets', label = 'Fiets', price = -1},
			{model = 'polvito2016', label = 'Vito', price = -1},
			{model = 'bf400', label = 'Lichte Motor', price = -1},
			{model = 'policeb', label = 'Zwarte Motor', price = -1},
			{model = 'police3', label = 'Audi A6', price = -1},	
			{model = 'politiev90', label = 'Unmarked Volvo', price = -1},
			{model = 'unmarkedrs6', label = 'Unmarked RS6', price = -1},
			{model = 'flatbedp', label = 'Politie Flatbed', price = -1}
		},

		hoofdinspecteur = {
			{model = 'poltouran2016', label = 'Touran', price = -1},
			{model = 'pamarok', label = 'Amarok', price = -1},
			{model = 'polfiets', label = 'Fiets', price = -1},
			{model = 'polvito2016', label = 'Vito', price = -1},
			{model = 'bf400', label = 'Lichte Motor', price = -1},
			{model = 'policeb', label = 'Zwarte Motor', price = -1},
			{model = 'police3', label = 'Audi A6', price = -1},
			{model = 'politiev90', label = 'Unmarked Volvo', price = -1},
			{model = 'unmarkedrs6', label = 'Unmarked RS6', price = -1},
			{model = 'flatbedp', label = 'Politie Flatbed', price = -1}
		},
        
        commissaris = {
			{model = 'poltouran2016', label = 'Touran', price = -1},
			{model = 'pamarok', label = 'Amarok', price = -1},
			{model = 'polfiets', label = 'Fiets', price = -1},
			{model = 'polvito2016', label = 'Vito', price = -1},
			{model = 'bf400', label = 'Lichte Motor', price = -1},
			{model = 'policeb', label = 'Zwarte Motor', price = -1},
			{model = 'police3', label = 'Audi A6', price = -1},	
			{model = 'politiev90', label = 'Unmarked Volvo', price = -1},
			{model = 'policemaserati', label = 'Politie Maserati', price = -1},
			{model = 'unmarkedrs6', label = 'Unmarked RS6', price = -1},
			{model = 'flatbedp', label = 'Politie Flatbed', price = -1}
		},
        
        hoofdcommissaris = {
			{model = 'poltouran2016', label = 'Touran', price = -1},
			{model = 'pamarok', label = 'Amarok', price = -1},
			{model = 'polfiets', label = 'Fiets', price = -1},
			{model = 'polvito2016', label = 'Vito', price = -1},
			{model = 'bf400', label = 'Lichte Motor', price = -1},
			{model = 'policeb', label = 'Zwarte Motor', price = -1},
			{model = 'police3', label = 'Audi A6', price = -1},	
			{model = 'politiev90', label = 'Unmarked Volvo', price = -1},
			{model = 'policemaserati', label = 'Politie Maserati', price = -1},
			{model = 'unmarkedrs6', label = 'Unmarked RS6', price = -1},
			{model = 'flatbedp', label = 'Politie Flatbed', price = -1}
		},


		korpsleiding = {
			{model = 'poltouran2016', label = 'Touran', price = -1},
			{model = 'pamarok', label = 'Amarok', price = -1},
			{model = 'polfiets', label = 'Fiets', price = -1},
			{model = 'polvito2016', label = 'Vito', price = -1},
			{model = 'bf400', label = 'Lichte Motor', price = -1},
			{model = 'policeb', label = 'Zwarte Motor', price = -1},
			{model = 'police3', label = 'Audi A6', price = -1},	
			{model = 'politiev90', label = 'Unmarked Volvo', price = -1},
			{model = 'unmarkedrs6', label = 'Unmarked RS6', price = -1},
			{model = 'policemaserati', label = 'Politie Maserati', price = -1},
			{model = 'flatbedp', label = 'Politie Flatbed', price = -1}
		},

		dsi1 = {
			{model = 'poltouran2016', label = 'Touran', price = -1},
			{model = 'pamarok', label = 'Amarok', price = -1},
			{model = 'polfiets', label = 'Fiets', price = -1},
			{model = 'polvito2016', label = 'Vito', price = -1},
			{model = 'bf400', label = 'Lichte Motor', price = -1},
			{model = 'policeb', label = 'Zwarte Motor', price = -1},
			{model = 'police3', label = 'Audi A6', price = -1},	
			{model = 'politiev90', label = 'Unmarked Volvo', price = -1},
			{model = 'flatbedp', label = 'Politie Flatbed', price = -1}

		},

		dsi2 = {
			{model = 'police', label = 'Touran', price = -1},
			{model = 'police3', label = 'Vito', price = -1},
			{model = 'police4', label = 'Undercover BMW', price = -1},
			{model = 'fbi', label = 'Undercover RS6', price = -1},
			{model = 'policeb', label = 'Motor', price = -1},
			{model = 'bf400', label = 'Offroad motor', price = -1},
			{model = 'politiev90', label = 'Unmarked Volvo', price = -1},
			{model = 'flatbedp', label = 'Politie Flatbed', price = -1}

		},

		dsi3 = {
			{model = 'police', label = 'Touran', price = -1},
			{model = 'police3', label = 'Vito', price = -1},
			{model = 'police4', label = 'Undercover BMW', price = -1},
			{model = 'fbi', label = 'Undercover RS6', price = -1},
			{model = 'policeb', label = 'Motor', price = -1},
			{model = 'bf400', label = 'Offroad motor', price = -1},
			{model = 'politiev90', label = 'Unmarked Volvo', price = -1},
			{model = 'flatbedp', label = 'Politie Flatbed', price = -1}
		},

		dsi4 = {
			{model = 'police', label = 'Touran', price = -1},
			{model = 'police3', label = 'Vito', price = -1},
			{model = 'police4', label = 'Undercover BMW', price = -1},
			{model = 'fbi', label = 'Undercover RS6', price = -1},
			{model = 'policeb', label = 'Motor', price = -1},
			{model = 'bf400', label = 'Offroad motor', price = -1}

		},

		dsi5 = {
			{model = 'police', label = 'Touran', price = -1},
			{model = 'police3', label = 'Vito', price = -1},
			{model = 'police4', label = 'Undercover BMW', price = -1},
			{model = 'fbi', label = 'Undercover RS6', price = -1},
			{model = 'policeb', label = 'Motor', price = -1},
			{model = 'bf400', label = 'Offroad motor', price = -1},
			{model = 'flatbedp', label = 'Politie Flatbed', price = -1}

		},

		recherche1 = {
			{model = 'police', label = 'Touran', price = -1},
			{model = 'police3', label = 'Vito', price = -1},
			{model = 'police4', label = 'Undercover BMW', price = -1},
			{model = 'fbi', label = 'Undercover RS6', price = -1},
			{model = 'policeb', label = 'Motor', price = -1},
			{model = 'bf400', label = 'Offroad motor', price = -1}
		},

		recherche2 = {
			{model = 'police', label = 'Touran', price = -1},
			{model = 'police3', label = 'Vito', price = -1},
			{model = 'police4', label = 'Undercover BMW', price = -1},
			{model = 'fbi', label = 'Undercover RS6', price = -1},
			{model = 'policeb', label = 'Motor', price = -1},
			{model = 'bf400', label = 'Offroad motor', price = -1}
		},

		recherche3 = {
			{model = 'police', label = 'Touran', price = -1},
			{model = 'police3', label = 'Vito', price = -1},
			{model = 'police4', label = 'Undercover BMW', price = -1},
			{model = 'fbi', label = 'Undercover RS6', price = -1},
			{model = 'policeb', label = 'Motor', price = -1},
			{model = 'bf400', label = 'Offroad motor', price = -1}
		},

		recherche4 = {
			{model = 'police', label = 'Touran', price = -1},
			{model = 'police3', label = 'Vito', price = -1},
			{model = 'police4', label = 'Undercover BMW', price = -1},
			{model = 'fbi', label = 'Undercover RS6', price = -1},
			{model = 'policeb', label = 'Motor', price = -1},
			{model = 'bf400', label = 'Offroad motor', price = -1}
		},
	},

	helicopter = {
		aspirant = {},
        
        surveillant = {},
        
        agent = {},
        
        hoofdagent = {},
        
        brigadier = {
            {model = 'pzulu', label = 'Zulu', price = -1}
        },
        
        inspecteur = {
			{model = 'pzulu', label = 'Zulu', price = -1},
			{model = 'buzzard', label = 'DSI Buzzard', price = -1},
			{model = 'buzzard2', label = 'DSI Buzzard2', price = -1},
			{model = 'hunter', label = 'Apache', price = -1},
			{model = 'valkyrie', label = 'Blackhawk', price = -1}

		},

		hoofdinspecteur = {
			{model = 'pzulu', label = 'Zulu', price = -1},
			{model = 'buzzard', label = 'DSI Buzzard', price = -1},
			{model = 'buzzard2', label = 'DSI Buzzard2', price = -1},
			{model = 'hunter', label = 'Apache', price = -1},
			{model = 'valkyrie', label = 'Blackhawk', price = -1}

		},
        
        commisarris = {
			{model = 'pzulu', label = 'Zulu', price = -1},
			{model = 'buzzard', label = 'DSI Buzzard', price = -1},
			{model = 'buzzard2', label = 'DSI Buzzard2', price = -1},
			{model = 'hunter', label = 'Apache', price = -1},
			{model = 'valkyrie', label = 'Blackhawk', price = -1}

		},
        
        hoofdcommisarris = {
			{model = 'pzulu', label = 'Zulu', price = -1},
			{model = 'buzzard', label = 'DSI Buzzard', price = -1},
			{model = 'buzzard2', label = 'DSI Buzzard2', price = -1},
			{model = 'hunter', label = 'Apache', price = -1},
			{model = 'valkyrie', label = 'Blackhawk', price = -1}

		},

		korpsleiding = {
			{model = 'pzulu', label = 'Zulu', price = -1},
			{model = 'buzzard', label = 'DSI Buzzard', price = -1},
			{model = 'buzzard2', label = 'DSI Buzzard2', price = -1},
			{model = 'hunter', label = 'Apache', price = -1},
			{model = 'valkyrie', label = 'Blackhawk', price = -1}

		},

		dsi1 = {
			{model = 'pzulu', label = 'Zulu', price = -1},
			{model = 'buzzard', label = 'DSI Buzzard', price = -1},
			{model = 'buzzard2', label = 'DSI Buzzard2', price = -1},
			{model = 'hunter', label = 'Apache', price = -1},
			{model = 'valkyrie', label = 'Blackhawk', price = -1}

		},

		dsi2 = {
			{model = 'pzulu', label = 'Zulu', price = -1},
			{model = 'buzzard', label = 'DSI Buzzard', price = -1},
			{model = 'buzzard2', label = 'DSI Buzzard2', price = -1},
			{model = 'hunter', label = 'Apache', price = -1},
			{model = 'valkyrie', label = 'Blackhawk', price = -1}

		},

		dsi3 = {
			{model = 'pzulu', label = 'Zulu', price = -1},
			{model = 'buzzard', label = 'DSI Buzzard', price = -1},
			{model = 'buzzard2', label = 'DSI Buzzard2', price = -1},
			{model = 'hunter', label = 'Apache', price = -1},
			{model = 'valkyrie', label = 'Blackhawk', price = -1}

		},

		dsi4 = {
			{model = 'pzulu', label = 'Zulu', price = -1},
			{model = 'buzzard', label = 'DSI Buzzard', price = -1},
			{model = 'buzzard2', label = 'DSI Buzzard2', price = -1},
			{model = 'hunter', label = 'Apache', price = -1},
			{model = 'valkyrie', label = 'Blackhawk', price = -1}
		},

		recherche1 = {
            {model = 'pzulu', label = 'Zulu', price = -1}
        },

		recherche2 = {
            {model = 'pzulu', label = 'Zulu', price = -1}
        },

		recherche3 = {
            {model = 'pzulu', label = 'Zulu', price = -1}
        },

		recherche4 = {
            {model = 'pzulu', label = 'Zulu', price = -1}
        },
	}
}

Config.CustomPeds = {
	shared = {
		{label = 'Sheriff Ped', maleModel = 's_m_y_sheriff_01', femaleModel = 's_f_y_sheriff_01'},
		{label = 'police Ped', maleModel = 's_m_y_cop_01', femaleModel = 's_f_y_cop_01'}
	},

	recruit = {},

	officer = {},

	sergeant = {},

	lieutenant = {},

	boss = {
		{label = 'SWAT Ped', maleModel = 's_m_y_swat_01', femaleModel = 's_m_y_swat_01'}
	}
}

-- controleer skinchanger client main.lua voor bijpassende elementen
Config.Uniforms = {
	dsi = {
		male = {
			['tshirt_1'] = 1,  ['tshirt_2'] = 0,
			['torso_1'] = 219,   ['torso_2'] = 7,
			['decals_1'] = 1,   ['decals_2'] = 0,
			['arms'] = 42,
			['pants_1'] =31,   ['pants_2'] = 1,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['mask_1'] = 52,   ['mask_2'] = 2,
			['helmet_1'] = 13,  ['helmet_2'] = 0,
			['chain_1'] = 6,    ['chain_2'] = 0,
			['bproof_1'] = 16,  ['bproof_2'] = 0,
			['glasses_1'] = 23,  ['glasses_2'] = 0,
			['bag_1'] = 2,  ['bag_2'] = 0,
		},
		female = {
			['tshirt_1'] = 1,  ['tshirt_2'] = 0,
			['torso_1'] = 219,   ['torso_2'] = 7,
			['decals_1'] = 1,   ['decals_2'] = 0,
			['arms'] = 42,
			['pants_1'] =31,   ['pants_2'] = 1,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['mask_1'] = 52,   ['mask_2'] = 2,
			['helmet_1'] = 13,  ['helmet_2'] = 0,
			['chain_1'] = 6,    ['chain_2'] = 0,
			['bproof_1'] = 16,  ['bproof_2'] = 0,
			['glasses_1'] = 23,  ['glasses_2'] = 0,
			['bag_1'] = 2,  ['bag_2'] = 0,
		}
	},
	me = {
		male = {
			['tshirt_1'] = 48,  ['tshirt_2'] = 0,
			['torso_1'] = 219,   ['torso_2'] = 0,
			['decals_1'] = 2,   ['decals_2'] = 0,
			['arms'] = 42,
			['pants_1'] =34,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['mask_1'] = 52,   ['mask_2'] = 0,
			['helmet_1'] = 126,  ['helmet_2'] = 0,
			['chain_1'] = 10,    ['chain_2'] = 0,
			['bproof_1'] = 20,  ['bproof_2'] = 0,
			['glasses_1'] = 23,  ['glasses_2'] = 0,
			['bag_1'] = 2,  ['bag_2'] = 0,
		},
		female = {
			['tshirt_1'] = 48,  ['tshirt_2'] = 0,
			['torso_1'] = 219,   ['torso_2'] = 0,
			['decals_1'] = 2,   ['decals_2'] = 0,
			['arms'] = 42,
			['pants_1'] =34,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['mask_1'] = 52,   ['mask_2'] = 0,
			['helmet_1'] = 126,  ['helmet_2'] = 0,
			['chain_1'] = 10,    ['chain_2'] = 0,
			['bproof_1'] = 20,  ['bproof_2'] = 0,
			['glasses_1'] = 23,  ['glasses_2'] = 0,
			['bag_1'] = 2,  ['bag_2'] = 0,
		}
	},
	tpe = {
		male = {
			['tshirt_1'] = 48,  ['tshirt_2'] = 0,
			['torso_1'] = 219,   ['torso_2'] = 3,
			['decals_1'] = 2,   ['decals_2'] = 0,
			['arms'] = 42,
			['pants_1'] =52,   ['pants_2'] = 3,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['mask_1'] = 52,   ['mask_2'] = 0,
			['helmet_1'] = 13,  ['helmet_2'] = 1,
			['chain_1'] = 10,    ['chain_2'] = 0,
			['bproof_1'] = 21,  ['bproof_2'] = 2,
			['glasses_1'] = 23,  ['glasses_2'] = 0,
			['bag_1'] = 2,  ['bag_2'] = 0,
		},
		female = {
			['tshirt_1'] = 48,  ['tshirt_2'] = 0,
			['torso_1'] = 219,   ['torso_2'] = 3,
			['decals_1'] = 2,   ['decals_2'] = 0,
			['arms'] = 42,
			['pants_1'] =52,   ['pants_2'] = 3,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['mask_1'] = 52,   ['mask_2'] = 0,
			['helmet_1'] = 13,  ['helmet_2'] = 1,
			['chain_1'] = 10,    ['chain_2'] = 0,
			['bproof_1'] = 21,  ['bproof_2'] = 2,
			['glasses_1'] = 23,  ['glasses_2'] = 0,
			['bag_1'] = 2,  ['bag_2'] = 0,
		}
	},
	noodhulp5 = {
		male = {
			['tshirt_1'] = 48,  ['tshirt_2'] = 0,
			['torso_1'] = 190,   ['torso_2'] = 3,
			['decals_1'] = 2,   ['decals_2'] = 0,
			['arms'] = 0,
			['pants_1'] =34,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['mask_1'] = 11,   ['mask_2'] = 2,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 10,    ['chain_2'] = 0,
			['bproof_1'] = 17,  ['bproof_2'] = 0,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['bag_1'] = 2,  ['bag_2'] = 0,
		},
		female = {
			['tshirt_1'] = 48,  ['tshirt_2'] = 0,
			['torso_1'] = 190,   ['torso_2'] = 3,
			['decals_1'] = 2,   ['decals_2'] = 0,
			['arms'] = 0,
			['pants_1'] =34,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['mask_1'] = 11,   ['mask_2'] = 2,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 10,    ['chain_2'] = 0,
			['bproof_1'] = 17,  ['bproof_2'] = 0,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['bag_1'] = 2,  ['bag_2'] = 0,
		}
	},
	noodhulp2 = {
		male = {
			['tshirt_1'] = 48,  ['tshirt_2'] = 0,
			['torso_1'] = 200,   ['torso_2'] = 3,
			['decals_1'] = 2,   ['decals_2'] = 0,
			['arms'] = 1,
			['pants_1'] =34,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['mask_1'] = 11,   ['mask_2'] = 2,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 6,    ['chain_2'] = 0,
			['bproof_1'] = 17,  ['bproof_2'] = 0,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['bag_1'] = 2,  ['bag_2'] = 0,
		},
		female = {
			['tshirt_1'] = 48,  ['tshirt_2'] = 0,
			['torso_1'] = 200,   ['torso_2'] = 3,
			['decals_1'] = 2,   ['decals_2'] = 0,
			['arms'] = 1,
			['pants_1'] =34,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['mask_1'] = 11,   ['mask_2'] = 2,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 6,    ['chain_2'] = 0,
			['bproof_1'] = 17,  ['bproof_2'] = 0,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['bag_1'] = 2,  ['bag_2'] = 0,
		}
	},
	noodhulp4 = {
		male = {
			['tshirt_1'] = 48,  ['tshirt_2'] = 0,
			['torso_1'] = 200,   ['torso_2'] = 3,
			['decals_1'] = 2,   ['decals_2'] = 0,
			['arms'] = 1,
			['pants_1'] =34,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['mask_1'] = 11,   ['mask_2'] = 2,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 10,    ['chain_2'] = 0,
			['bproof_1'] = 17,  ['bproof_2'] = 0,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['bag_1'] = 2,  ['bag_2'] = 0,
		},
		female = {
			['tshirt_1'] = 48,  ['tshirt_2'] = 0,
			['torso_1'] = 200,   ['torso_2'] = 3,
			['decals_1'] = 2,   ['decals_2'] = 0,
			['arms'] = 1,
			['pants_1'] =34,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['mask_1'] = 11,   ['mask_2'] = 2,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 10,    ['chain_2'] = 0,
			['bproof_1'] = 17,  ['bproof_2'] = 0,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['bag_1'] = 2,  ['bag_2'] = 0,
		}
	},
	verkeerpolitie = {
		male = {
			['tshirt_1'] = 48,  ['tshirt_2'] = 0,
			['torso_1'] = 190,   ['torso_2'] = 3,
			['decals_1'] = 2,   ['decals_2'] = 0,
			['arms'] = 0,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['mask_1'] = 11,   ['mask_2'] = 2,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['bproof_1'] = 17,  ['bproof_2'] = 3,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['bag_1'] = 2,  ['bag_2'] = 0,
		},
		female = {
			['tshirt_1'] = 48,  ['tshirt_2'] = 0,
			['torso_1'] = 190,   ['torso_2'] = 3,
			['decals_1'] = 2,   ['decals_2'] = 0,
			['arms'] = 1,
			['pants_1'] =34,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['mask_1'] = 11,   ['mask_2'] = 2,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 10,    ['chain_2'] = 0,
			['bproof_1'] = 17,  ['bproof_2'] = 3,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['bag_1'] = 2,  ['bag_2'] = 0,
		}
	},
	verkeerpolitie1 = {
		male = {
			['tshirt_1'] = 48,  ['tshirt_2'] = 0,
			['torso_1'] = 190,   ['torso_2'] = 3,
			['decals_1'] = 2,   ['decals_2'] = 0,
			['arms'] = 0,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['mask_1'] = 11,   ['mask_2'] = 2,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['bproof_1'] = 17,  ['bproof_2'] = 3,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['bag_1'] = 2,  ['bag_2'] = 0,
		},
		female = {
			['tshirt_1'] = 48,  ['tshirt_2'] = 0,
			['torso_1'] = 190,   ['torso_2'] = 3,
			['decals_1'] = 2,   ['decals_2'] = 0,
			['arms'] = 1,
			['pants_1'] =34,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['mask_1'] = 11,   ['mask_2'] = 2,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 10,    ['chain_2'] = 0,
			['bproof_1'] = 17,  ['bproof_2'] = 3,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['bag_1'] = 2,  ['bag_2'] = 0,
		}
	},
	verkeerpolitie2 = {
		male = {
			['tshirt_1'] = 48,  ['tshirt_2'] = 0,
			['torso_1'] = 200,   ['torso_2'] = 3,
			['decals_1'] = 2,   ['decals_2'] = 0,
			['arms'] = 0,
			['pants_1'] =34,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['mask_1'] = 11,   ['mask_2'] = 2,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 6,    ['chain_2'] = 0,
			['bproof_1'] = 17,  ['bproof_2'] = 3,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['bag_1'] = 2,  ['bag_2'] = 0,
		},
		female = {
			['tshirt_1'] = 48,  ['tshirt_2'] = 0,
			['torso_1'] = 200,   ['torso_2'] = 3,
			['decals_1'] = 2,   ['decals_2'] = 0,
			['arms'] = 1,
			['pants_1'] =34,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['mask_1'] = 11,   ['mask_2'] = 2,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 6,    ['chain_2'] = 0,
			['bproof_1'] = 17,  ['bproof_2'] = 3,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['bag_1'] = 2,  ['bag_2'] = 0,
		}
	},
	unmarked = {
		male = {
			['tshirt_1'] = 48,  ['tshirt_2'] = 0,
			['torso_1'] = 155,   ['torso_2'] = 0,
			['decals_1'] = 2,   ['decals_2'] = 0,
			['arms'] = 42,
			['pants_1'] =34,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['mask_1'] = 11,   ['mask_2'] = 2,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 6,    ['chain_2'] = 0,
			['bproof_1'] = 17,  ['bproof_2'] = 1,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['bag_1'] = 0,  ['bag_2'] = 0,
		},
		female = {
			['tshirt_1'] = 48,  ['tshirt_2'] = 0,
			['torso_1'] = 155,   ['torso_2'] = 0,
			['decals_1'] = 2,   ['decals_2'] = 0,
			['arms'] = 42,
			['pants_1'] =34,   ['pants_2'] = 0,
			['shoes_1'] = 28,   ['shoes_2'] = 0,
			['mask_1'] = 11,   ['mask_2'] = 2,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 6,    ['chain_2'] = 0,
			['bproof_1'] = 17,  ['bproof_2'] = 1,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['bag_1'] = 0,  ['bag_2'] = 0,
		}
	},
	steekvest = {
		male = {
            ['bproof_1'] = 1,  ['bproof_2'] = 1,
		},
		female = {
            ['bproof_1'] = 1,  ['bproof_2'] = 1,
		}
	},
	pet = {
		male = {
            ['helmet_1'] = 10,  ['helmet_2'] = 0,
		},
		female = {
            ['helmet_1'] = 10,  ['helmet_2'] = 0,
		}
	},
	
	unmarkedsteekvest = {
		male = {
            ['bproof_1'] = 17,  ['bproof_2'] = 1,
		},
		female = {
            ['bproof_1'] = 17,  ['bproof_2'] = 1,
		}
	},
	noodhulp = {
		male = {
			['tshirt_1'] = 48,  ['tshirt_2'] = 0,
			['torso_1'] = 190,   ['torso_2'] = 3,
			['arms'] = 0,
			['pants_1'] =34,   ['pants_2'] = 0,
			['decals_1'] = 2,   ['decals_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['mask_1'] = 11,   ['mask_2'] = 2,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['bproof_1'] = 17,  ['bproof_2'] = 0,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['bag_1'] = 2,  ['bag_2'] = 0,
		},
		female = {
			['tshirt_1'] = 48,  ['tshirt_2'] = 0,
			['torso_1'] = 190,   ['torso_2'] = 3,
			['arms'] = 0,
			['pants_1'] =34,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['mask_1'] = 11,   ['mask_2'] = 2,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['bproof_1'] = 17,  ['bproof_2'] = 0,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['bag_1'] = 2,  ['bag_2'] = 0,
		}
	},
	ibtdocent = {
		male = {
			['tshirt_1'] = 48,  ['tshirt_2'] = 0,
			['torso_1'] = 51,   ['torso_2'] = 2,
			['decals_1'] = 2,   ['decals_2'] = 0,
			['arms'] = 19,
			['pants_1'] =34,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['mask_1'] = 11,   ['mask_2'] = 2,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 6,    ['chain_2'] = 0,
			['bproof_1'] = 20,  ['bproof_2'] = 0,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['bag_1'] = 2,  ['bag_2'] = 0,
		},
		female = {
			['tshirt_1'] = 48,  ['tshirt_2'] = 0,
			['torso_1'] = 51,   ['torso_2'] = 2,
			['decals_1'] = 2,   ['decals_2'] = 0,
			['arms'] = 19,
			['pants_1'] =34,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['mask_1'] = 11,   ['mask_2'] = 2,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 6,    ['chain_2'] = 0,
			['bproof_1'] = 20,  ['bproof_2'] = 0,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['bag_1'] = 2,  ['bag_2'] = 0,
		}
	},
	ibtstudent = {
		male = {
			['tshirt_1'] = 48,  ['tshirt_2'] = 0,
			['torso_1'] = 94,   ['torso_2'] = 2,
			['decals_1'] = 2,   ['decals_2'] = 0,
			['arms'] = 19,
			['pants_1'] =34,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['mask_1'] = 11,   ['mask_2'] = 2,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 6,    ['chain_2'] = 0,
			['bproof_1'] = 20,  ['bproof_2'] = 0,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['bag_1'] = 2,  ['bag_2'] = 0,
		},
		female = {
			['tshirt_1'] = 48,  ['tshirt_2'] = 0,
			['torso_1'] = 94,   ['torso_2'] = 2,
			['decals_1'] = 2,   ['decals_2'] = 0,
			['arms'] = 19,
			['pants_1'] =34,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['mask_1'] = 11,   ['mask_2'] = 2,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 6,    ['chain_2'] = 0,
			['bproof_1'] = 20,  ['bproof_2'] = 0,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['bag_1'] = 2,  ['bag_2'] = 0,
		}
	},
	motor = {
		male = {
			['tshirt_1'] = 48,  ['tshirt_2'] = 0,
			['torso_1'] = 155,   ['torso_2'] = 2,
			['decals_1'] = 2,   ['decals_2'] = 0,
			['arms'] = 42,
			['pants_1'] =34,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['mask_1'] = 52,   ['mask_2'] = 0,
			['helmet_1'] = 68,  ['helmet_2'] = 0,
			['chain_1'] = 6,    ['chain_2'] = 0,
			['bproof_1'] = 17,  ['bproof_2'] = 3,
			['glasses_1'] = 25,  ['glasses_2'] = 1,
			['bag_1'] = 2,  ['bag_2'] = 0,
		},
		female = {
			['tshirt_1'] = 48,  ['tshirt_2'] = 0,
			['torso_1'] = 155,   ['torso_2'] = 2,
			['decals_1'] = 2,   ['decals_2'] = 0,
			['arms'] = 42,
			['pants_1'] =34,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['mask_1'] = 52,   ['mask_2'] = 0,
			['helmet_1'] = 68,  ['helmet_2'] = 0,
			['chain_1'] = 6,    ['chain_2'] = 0,
			['bproof_1'] = 17,  ['bproof_2'] = 3,
			['glasses_1'] = 25,  ['glasses_2'] = 1,
			['bag_1'] = 2,  ['bag_2'] = 0,
		}
	},

	officer = {
		male = {
			tshirt_1 = 58,  tshirt_2 = 0,
			torso_1 = 55,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 41,
			pants_1 = 25,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		},
		female = {
			tshirt_1 = 35,  tshirt_2 = 0,
			torso_1 = 48,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 44,
			pants_1 = 34,   pants_2 = 0,
			shoes_1 = 27,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		}
	},

	sergeant = {
		male = {
			tshirt_1 = 58,  tshirt_2 = 0,
			torso_1 = 55,   torso_2 = 0,
			decals_1 = 8,   decals_2 = 1,
			arms = 41,
			pants_1 = 25,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		},
		female = {
			tshirt_1 = 35,  tshirt_2 = 0,
			torso_1 = 48,   torso_2 = 0,
			decals_1 = 7,   decals_2 = 1,
			arms = 44,
			pants_1 = 34,   pants_2 = 0,
			shoes_1 = 27,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		}
	},

	lieutenant = {
		male = {
			tshirt_1 = 58,  tshirt_2 = 0,
			torso_1 = 55,   torso_2 = 0,
			decals_1 = 8,   decals_2 = 2,
			arms = 41,
			pants_1 = 25,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		},
		female = {
			tshirt_1 = 35,  tshirt_2 = 0,
			torso_1 = 48,   torso_2 = 0,
			decals_1 = 7,   decals_2 = 2,
			arms = 44,
			pants_1 = 34,   pants_2 = 0,
			shoes_1 = 27,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		}
	},

	boss = {
		male = {
			tshirt_1 = 58,  tshirt_2 = 0,
			torso_1 = 55,   torso_2 = 0,
			decals_1 = 8,   decals_2 = 3,
			arms = 41,
			pants_1 = 25,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		},
		female = {
			tshirt_1 = 35,  tshirt_2 = 0,
			torso_1 = 48,   torso_2 = 0,
			decals_1 = 7,   decals_2 = 3,
			arms = 44,
			pants_1 = 34,   pants_2 = 0,
			shoes_1 = 27,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		}
	},

	bullet_wear = {
		male = {
			bproof_1 = 11,  bproof_2 = 1
		},
		female = {
			bproof_1 = 13,  bproof_2 = 1
		}
	},

	gilet_wear = {
		male = {
			tshirt_1 = 59,  tshirt_2 = 1
		},
		female = {
			tshirt_1 = 36,  tshirt_2 = 1
		}
	}
}