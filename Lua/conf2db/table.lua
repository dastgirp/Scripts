-- Comments are Auto Parsed
tbl = {
	-- ItemDB Fields
	fields = {
		'Id',
		'AegisName',
		'Name',
		'Type',
		'Buy',
		'Sell',
		'Weight',
		'Atk',
		'Matk',
		'Def',
		'Range',
		'Slots',
		'Job',
		'Upper',
		'Gender',
		'Loc',
		'WeaponLv',
		'EquipLv',
		'Refine',
		'View',
		'BindOnEquip',
		'BuyingStore',
		'Delay',
		'KeepAfterUse',
			'override',
			'nodrop',
			'notrade',
			'partneroverride',
			'noselltonpc',
			'nocart',
			'nostorage',
			'nogstorage',
			'nomail',
			'noauction',
			'sitting',
		'Stack',
		'Sprite',
	},
	-- [Groups with internal settings]
	-- Groups have { } 
	group_s = {
		'Nouse',
		'Trade',
	},
	-- Arrays have [ ]
	array = {	-- Should be inside fields too
		-- Format
		-- { 'FieldName', ValuesCount}
		{ 'EquipLv', 2 },
		{ 'Stack', 2 },
		
	},
	-- script have <" ">
	script = {
		'Script',
		'OnEquipScript',
		'OnUnequipScript' 
	}
}