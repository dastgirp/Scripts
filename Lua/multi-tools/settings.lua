-- Comments are Auto Parsed

-- Settings

settings = {
	-- Converts Display Name '_' (Underscore) to ' ' (Space)
	convert_display_tag = true
}


-- Tables Configuration

-- Constants
--[[
DataTypes:
	Integer(1):
		Can read Real Integer values.
		e.g.: 1, 2, 3
	Boolean(2):
		Can read boolean values
		e.g.: True, False
	Hex(3):
		Can Read hexadecimal values.
		e.g.: 0xABC, 0x1BF
	Value(4):
		String Group, Reads the Value from item_tbl.value_s
	String(5):
		String Literal
	Group(6):
		Parses LibConfig Group
		e.g:
		a: {
			b: true
		}
	Script(7):
		Parses Script Tag <" ">
	Constant(8):
		Parses Constants
		(Constants are read from item_tbl['constants'][field_name])
	Constant Mask(9):
		Same as Constant(8), but it can contain multiple values.
		bit values.
--]]
typ = {
	int           = 1,	-- Integer
	bool          = 2,	-- Boolean
	hex           = 3,	-- Hex 
	value         = 4,	-- Assign Value from value_s table
	string        = 5,	-- String
	group         = 6,	-- LibConfig Group
	script        = 7,	-- Script Format
	constant      = 8,	-- Constants
	constant_mask = 9,	-- Constant Mask
}

-- ItemDB
item_tbl = {
	item_tbl_name = "item_db",	-- See at start of item_db, the initial line determine's this.
	-- ItemDB Fields
	fields = {	--Names are Formats too
		{'Id',                 typ.int },
		{'AegisName',          typ.string },
		{'Name',               typ.string },
		{'Type',               typ.constant },
		{'Buy',                typ.int },
		{'Sell',               typ.int },
		{'Weight',             typ.int },
		{'Atk',                typ.int },
		{'Matk',               typ.int },
		{'Def',                typ.int },
		{'Range',              typ.int },
		{'Slots',              typ.int },
		{'Job',                typ.value },
		{'Upper',              typ.constant_mask },
		{'Gender',             typ.constant },
		{'Loc',                typ.constant_mask },
		{'WeaponLv',           typ.int },
		{'EquipLv',            typ.group },
		{'Refine',             typ.bool },
		{'DisableOptions',     typ.bool },
		{'Subtype',            typ.constant },
		{'View',               typ.int },
		{'BindOnEquip',        typ.bool },
		{'ForceSerial',        typ.bool },
		{'BuyingStore',        typ.bool },
		{'Delay',              typ.int },
		{'KeepAfterUse',       typ.bool },
		{'DropAnnounce',       typ.bool },
		{	'override',        typ.int },
		{	'nodrop',          typ.bool },
		{	'notrade',         typ.bool },
		{	'partneroverride', typ.bool },
		{	'noselltonpc',     typ.bool },
		{	'nocart',          typ.bool },
		{	'nostorage',       typ.bool },
		{	'nogstorage',      typ.bool },
		{	'nomail',          typ.bool },
		{	'noauction',       typ.bool },
		{	'sitting',         typ.bool },
		{'Stack',              typ.group },
		{'Sprite',             typ.int },
		{'ViewSprite',         typ.int },
	},

	constants = {
		Type = {
			{ 'IT_HEALING',      0  },
			{ 'IT_USABLE',       2  },
			{ 'IT_ETC',          3  },
			{ 'IT_WEAPON',       4  },
			{ 'IT_ARMOR',        5  },
			{ 'IT_CARD',         6  },
			{ 'IT_PETEGG',       7  },
			{ 'IT_PETARMOR',     8  },
			{ 'IT_AMMO',         10 },
			{ 'IT_DELAYCONSUME', 11 },
			{ 'IT_CASH',         18 },
		},
		Gender = {
			{ 'SEX_FEMALE',      0  },
			{ 'SEX_MALE',        1  },
			{ 'SEX_ANY',         2  },
		},
		Upper = {
			{ 'ITEMUPPER_NONE',        0x00 },
			{ 'ITEMUPPER_NORMAL',      0x01 },
			{ 'ITEMUPPER_UPPER',       0x02 },
			{ 'ITEMUPPER_BABY',        0x04 },
			{ 'ITEMUPPER_THIRD',       0x08 },
			{ 'ITEMUPPER_THIRDUPPER',  0x10 },
			{ 'ITEMUPPER_THIRDBABY',   0x20 },
			{ 'ITEMUPPER_ALL',         0x3f },
		},
		Loc = {
			{ 'EQP_HEAD_LOW',             0x000001 },
			{ 'EQP_HAND_R',               0x000002 },
			{ 'EQP_WEAPON',               0x000002 },
			{ 'EQP_GARMENT',              0x000004 },
			{ 'EQP_ACC_L',                0x000008 },
			{ 'EQP_ARMOR',                0x000010 },
			{ 'EQP_HAND_L',               0x000020 },
			{ 'EQP_SHIELD',               0x000020 },
			{ 'EQP_ARMS',                 0x000022 },
			{ 'EQP_SHOES',                0x000040 },
			{ 'EQP_ACC_R',                0x000080 },
			{ 'EQP_ACC',                  0x000088 },
			{ 'EQP_HEAD_TOP',             0x000100 },
			{ 'EQP_HEAD_MID',             0x000200 },
			{ 'EQP_HELM',                 0x000301 },
			{ 'EQP_COSTUME_HEAD_TOP',     0x000400 },
			{ 'EQP_COSTUME_HEAD_MID',     0x000800 },
			{ 'EQP_COSTUME_HEAD_LOW',     0x001000 },
			{ 'EQP_COSTUME_GARMENT',      0x002000 },
			{ 'EQP_AMMO',                 0x008000 },
			{ 'EQP_SHADOW_ARMOR',         0x010000 },
			{ 'EQP_SHADOW_WEAPON',        0x020000 },
			{ 'EQP_SHADOW_SHIELD',        0x040000 },
			{ 'EQP_SHADOW_ARMS',          0x060000 },
			{ 'EQP_SHADOW_SHOES',         0x080000 },
			{ 'EQP_SHADOW_ACC_R',         0x100000 },
			{ 'EQP_SHADOW_ACC_L',         0x200000 },
			{ 'EQP_SHADOW_ACC',           0x300000 },
		},
		Subtype = {
			{'W_FIST',      0 },
			{'W_DAGGER',    1 },
			{'W_1HSWORD',   2 },
			{'W_2HSWORD',   3 },
			{'W_1HSPEAR',   4 },
			{'W_2HSPEAR',   5 },
			{'W_1HAXE',     6 },
			{'W_2HAXE',     7 },
			{'W_MACE',      8 },
			{'W_2HMACE',    9 },
			{'W_STAFF',    10 },
			{'W_BOW',      11 },
			{'W_KNUCKLE',  12 },
			{'W_MUSICAL',  13 },
			{'W_WHIP',     14 },
			{'W_BOOK',     15 },
			{'W_KATAR',    16 },
			{'W_REVOLVER', 17 },
			{'W_RIFLE',    18 },
			{'W_GATLING',  19 },
			{'W_SHOTGUN',  20 },
			{'W_GRENADE',  21 },
			{'W_HUUMA',    22 },
			{'W_2HSTAFF',  23 },
			{'A_ARROW',       1 },
			{'A_DAGGER',      2 },
			{'A_BULLET',      3 },
			{'A_SHELL',       4 },
			{'A_GRENADE',     5 },
			{'A_SHURIKEN',    6 },
			{'A_KUNAI',       7 },
			{'A_CANNONBALL',  8 },
			{'A_THROWWEAPON', 9 },
		},
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