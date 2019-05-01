# cython: language_level=3
### Data Types
def g(byte):
	return int.from_bytes(byte, byteorder='big')
# 1 byte
MIN_CHAR = -g(b'\x80')
MAX_CHAR = g(b'\x7f')

MIN_UCHAR = 0
MAX_UCHAR = g(b'\xff')

# 2 bytes
MIN_INT16 = -g(b'\x80\x00')
MAX_INT16 = g(b'\x7f\xff')

MIN_UINT16 = 0
MAX_UINT16 = g(b'\xff\xff')

# 4 bytes
MIN_INT32 = -g(b'\x80\x00\x00\x00')
MAX_INT32 = g(b'\x7f\xff\xff\xff')

MIN_UINT32 = 0
MAX_UINT32 = g(b'\xff\xff\xff\xff')

# 8 bytes
MIN_INT64 = -g(b'\x80\x00\x00\x00\x00\x00\x00\x00')
MAX_INT64 = g(b'\x7f\xff\xff\xff\xff\xff\xff\xff')

MIN_UINT64 = 0
MAX_UINT64 = g(b'\xff\xff\xff\xff\xff\xff\xff\xff')

### ItemDB Constants

MAX_JOB_VALUE = MAX_UINT64

### Libconfig itemdb
item_db = {
	"convertables": {
		"Type": {
			"IT_HEALING":      0,
			"IT_USABLE":       2,
			"IT_ETC":          3,
			"IT_WEAPON":       4,
			"IT_ARMOR":        5,
			"IT_CARD":         6,
			"IT_PETEGG":       7,
			"IT_PETARMOR":     8,
			"IT_AMMO":         10,
			"IT_DELAYCONSUME": 11,
			"IT_CASH":         18,
		},
		"Upper": {
			"ITEMUPPER_NONE":       0,
			"ITEMUPPER_NORMAL":     1,
			"ITEMUPPER_UPPER":      2,
			"ITEMUPPER_BABY":       4,
			"ITEMUPPER_THIRD":      8,
			"ITEMUPPER_THIRDUPPER": 16,
			"ITEMUPPER_THIRDBABY":  32,
			"ITEMUPPER_ALL":        63,
		},
		"Job": {
			"Novice":            0x00000001,
			"Swordsman":         0x00000002,
			"Magician":          0x00000004,
			"Archer":            0x00000008,
			"Acolyte":           0x00000010,
			"Merchant":          0x00000020,
			"Thief":             0x00000040,
			"Knight":            0x00000080,
			"Priest":            0x00000100,
			"Wizard":            0x00000200,
			"Blacksmith":        0x00000400,
			"Hunter":            0x00000800,
			"Assassin":          0x00002000,
			"Crusader":          0x00004000,
			"Monk":              0x00008000,
			"Sage":              0x00010000,
			"Rogue":             0x00020000,
			"Alchemist":         0x00040000,
			"Bard":              0x00080000,
			"Taekwon":           0x00200000,
			"Star_Gladiator":    0x00400000,
			"Soul_Linker":       0x00800000,
			"Gunslinger":        0x01000000,
			"Ninja":             0x02000000,
			"Gangsi":            0x04000000,
			"Death_Knight":      0x08000000,
			"Dark_Collector":    0x10000000,
			"Kagerou":           0x20000000,
			"Rebellion":         0x40000000,
			"Summoner":          0x80000000,
			"All":               0xFFFFFFFF,
		},
		"Gender": {			
			"SEX_FEMALE": 0,
			"SEX_MALE": 1,
			"SEX_ANY": 2,
		},
		"Loc": {
			"EQP_HEAD_LOW": 1,
			"EQP_HEAD_MID": 512,
			"EQP_HEAD_TOP": 256,
			"EQP_HAND_R": 2,
			"EQP_HAND_L": 32,
			"EQP_ARMOR": 16,
			"EQP_SHOES": 64,
			"EQP_GARMENT": 4,
			"EQP_ACC_L": 8,
			"EQP_ACC_R": 128,
			"EQP_COSTUME_HEAD_TOP": 1024,
			"EQP_COSTUME_HEAD_MID": 2048,
			"EQP_COSTUME_HEAD_LOW": 4096,
			"EQP_COSTUME_GARMENT": 8192,
			"EQP_AMMO": 32768,
			"EQP_SHADOW_ARMOR": 65536,
			"EQP_SHADOW_WEAPON": 131072,
			"EQP_SHADOW_SHIELD": 262144,
			"EQP_SHADOW_SHOES": 524288,
			"EQP_SHADOW_ACC_R": 1048576,
			"EQP_SHADOW_ACC_L": 2097152,
			"EQP_WEAPON": 2,
			"EQP_SHIELD": 32,
			"EQP_ARMS": 34,
			"EQP_HELM": 769,
			"EQP_ACC": 136,
			"EQP_COSTUME": 15360,
			"EQP_SHADOW_ACC": 3145728,
			"EQP_SHADOW_ARMS": 393216,
		},
		"Trade": {
			"ITR_NONE": 0,
			"nodrop": 1,
			"notrade": 2,
			"partneroverride": 4,
			"noselltonpc": 8,
			"nocart": 16,
			"nostorage": 32,
			"nogstorage": 64,
			"nomail": 128,
			"noauction": 256,
			"ITR_ALL": 511,
		},
		"Nouse": {
			"INR_NONE": 0,
			"sitting": 1,
			"INR_ALL": 1,
		},
	}
}