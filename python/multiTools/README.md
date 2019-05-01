REQUIRES Python 3<br/>
<br/>
Work In Progress. <br/>
Currently, this tool only works in linux and only "conf2db" tool is working.
<br/>
<br/>
Using Conf2DB:<br/>
<br/>
Extract item_db.conf to item_db.txt:<br/>
1)Copy item_db.conf to "conf2db" Folder.<br/>
2)Run Following Command "python3 run.py"<br/>
3)Follow the Instructions<br/>
<br/>
Format: #id #script #View, [Case-insensitive]<br/>
        Default: #ID,#AegisName,#Name,#Type,#Buy,#Sell,#Weight,#Atk:#Matk,#Def,#Range,#Slots,#Job,#Upper,#Gender,#Loc,#WeaponLv,#EquipLv,#Refine,#View,{ #Script },{ #OnEquipScript },{ #OnUnequipScript }<br/>
        Additional Parameters supported by item_db.conf:<br/>
                #KeepAfterUse #BindOnEquip #Delay #BuyingStore #DisableOptions #Subtype #ViewSprite #ForceSerial #DropAnnounce #ShowDropEffect #DropEffectMode<br/>
        Additional Parameters made by Script:<br/>
                #EquipLvMin (Minimum Equip Level)<br/>
                #EquipLvMax (Maximum Equip Level)<br/>
                #Trade_override (GroupLv to override Trade Restriction)<br/>
                #Nouse_override (GroupLv to override Nouse Restriction)<br/>
                #Stack_amount (Stack Amount)<br/>
                #Stack_type (Stack Restriction)<br/>
                #Job_str (Job Constant String)<br/>
                #Upper_str (Upper Constant String)<br/>
                #Gender_str (Gender Constant String)<br/>
                #Loc_str (Loc Constant String)<br/>
                #Trade_str (Trade Constant String)<br/>
                #Nouse_str (Nouse Constant String)<br/>
Sort: 1/0<br/>
        1: Sort Entries by ItemID<br/>
        0: Do Not Sort<br/>
<br/>
Credits: Dastgir<br/>
