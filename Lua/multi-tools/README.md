REQUIRES LUA 5.3<br/>
<br/>
Using CopyDisplayName: <br/>
<br/>
Changes item_db.conf name from idnumitemdisplaynametable.txt/iteminfo.lua/lub<br/>
1)Copy item_db.conf,idnumitemdisplaynametable.txt or iteminfo.lua/lub to "CopyDisplayName" Folder<br/>
2)Just run the "copyname.bat" and input some details.<br/>
<br/>
Credits: Dastgir<br/>
<br/>
<br/>
Using Conf2DB:<br/>
<br/>
Extract item_db.conf to item_db.txt:<br/>
1)Copy item_db.conf to "conf2db" Folder.<br/>
2)Just run the "conf2db.bat" and Enter some details of file.<br/>
<br/>
Format:<br/>
	Usage: multi-tools.lua conf2db {FileName} {Output} {Format(RE,or see below)}<br/>
	Format: #ID #AegisName, #View,etc..(As Mentioned in item_db.conf) [Variables are Case-InSensitive]<br/>
	Default: #ID,#AegisName,#Name,#Type,#Buy,#Sell,#Weight,#Atk:#Matk,#Def,#Range,#Slots,#Job,#Upper,#Gender,#Loc,#wLV,#eLV,#Refine,#View,{ #Script },{ #OnEquipScript },{ #OnUnequipScript }<br/>
	Additional Parameter: #eqmax,#eqmin (maximum and minimum equip level) <br/>
<br/>
Credits: Dastgir<br/>
