-- Comments are Auto Parsed

-- Constants
typ = {
	int = 1,
	bool = 2,
	hex8 = 3,
	hex2 = 4,
	string = 5,
	group = 6,
	script = 7,
}

-- ItemDB
tbl = {
	-- ItemDB Fields
	fields = {	--Names are Formats too
		{'Id', typ.int },
		{'AegisName', typ.string },
		{'Name', typ.string },
		{'Type', typ.int },
		{'Buy', typ.int },
		{'Sell', typ.int },
		{'Weight', typ.int },
		{'Atk', typ.int },
		{'Matk', typ.int },
		{'Def', typ.int },
		{'Range', typ.int },
		{'Slots', typ.int },
		{'Job', typ.hex8 },
		{'Upper', typ.hex2 },
		{'Gender', typ.int },
		{'Loc', typ.int },
		{'WeaponLv', typ.int },
		{'EquipLv', typ.group },
		{'Refine', typ.bool },
		{'View', typ.int },
		{'BindOnEquip', typ.bool },
		{'BuyingStore', typ.bool },
		{'Delay', typ.int },
		{'KeepAfterUse', typ.bool },
		{	'override', typ.int },
		{	'nodrop', typ.bool },
		{	'notrade', typ.bool },
		{	'partneroverride', typ.bool },
		{	'noselltonpc', typ.bool },
		{	'nocart', typ.bool },
		{	'nostorage', typ.bool },
		{	'nogstorage', typ.bool },
		{	'nomail', typ.bool },
		{	'noauction', typ.bool },
		{	'sitting', typ.bool },
		{'Stack', typ.group },
		{'Sprite', typ.int },
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
		-- { 'FieldName', ValuesCount, {Type1, Type2}}
		{ 
			'EquipLv',
			2,
			{
				typ.int,
				typ.int
			}
		},
		{ 
			'Stack',
			2,
			{
				typ.int,
				typ.int
			}
		},
		
	},
	-- script have <" ">
	script = {	--Treated as ScriptType
		'Script',
		'OnEquipScript',
		'OnUnequipScript' 
	}
}