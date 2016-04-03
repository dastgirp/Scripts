-- Comments are Auto Parsed

-- Constants
typ = {
	int = 1,	-- Integer
	bool = 2,	-- Boolean
	hex = 3,	-- Hex 
	value = 4,	-- Assign Value from value_s table
	string = 5,	-- String
	group = 6,	-- LibConfig Group
	script = 7,	-- Script Format
}

-- ItemDB
item_tbl = {
	item_tbl_name = "item_db",	-- See at start of item_db, the initial line determine's this.
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
		{'Job', typ.value },
		{'Upper', {typ.hex, 2} },
		{'Gender', typ.int },
		{'Loc', typ.int },
		{'WeaponLv', typ.int },
		{'EquipLv', typ.group },
		{'Refine', typ.bool },
		{'View', typ.int },
		{'BindOnEquip', typ.bool },
		{'ForceSerial', typ.bool },
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
	
	value_s = {
		-- Job with its Hex Code
		-- Only Bool Supported till now
		{ 'Novice',            0x00000001, typ.bool },
		{ 'Swordsman',         0x00000002, typ.bool },
		{ 'Magician',          0x00000004, typ.bool },
		{ 'Archer',            0x00000008, typ.bool },
		{ 'Acolyte',           0x00000010, typ.bool },
		{ 'Merchant',          0x00000020, typ.bool },
		{ 'Thief',             0x00000040, typ.bool },
		{ 'Knight',            0x00000080, typ.bool },
		{ 'Priest',            0x00000100, typ.bool },
		{ 'Wizard',            0x00000200, typ.bool },
		{ 'Blacksmith',        0x00000400, typ.bool },
		{ 'Hunter',            0x00000800, typ.bool },
		{ 'Assassin',          0x00002000, typ.bool },
		{ 'Crusader',          0x00004000, typ.bool },
		{ 'Monk',              0x00008000, typ.bool },
		{ 'Sage',              0x00010000, typ.bool },
		{ 'Rogue',             0x00020000, typ.bool },
		{ 'Alchemist',         0x00040000, typ.bool },
		{ 'Bard',              0x00080000, typ.bool },
		{ 'Taekwon',           0x00200000, typ.bool },
		{ 'Star_Gladiator',    0x00400000, typ.bool },
		{ 'Soul_Linker',       0x00800000, typ.bool },
		{ 'Gunslinger',        0x01000000, typ.bool },
		{ 'Ninja',             0x02000000, typ.bool },
		{ 'Gangsi',            0x04000000, typ.bool },
		{ 'Death_Knight',      0x08000000, typ.bool },
		{ 'Dark_Collector',    0x10000000, typ.bool },
		{ 'Kagerou',           0x20000000, typ.bool },
		{ 'Rebellion',         0x40000000, typ.bool },
		{ 'Summoner',          0x80000000, typ.bool },
		{ 'All',               0xFFFFFFFF, typ.bool },
	},
	-- [Groups with internal settings]
	-- Groups have { } 
	group_s = {
		'Nouse',
		'Trade',
		'Job',
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
