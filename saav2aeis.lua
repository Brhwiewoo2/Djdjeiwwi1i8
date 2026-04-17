


off = "OFF - "
on = "ON - "

Ai = off
Dmg = off
DDD = off
UM = off
US = off
Speed = off
title = "ZLI SCRIPT"  
function Hack()
menu = gg.multiChoice({Dmg.."Damage Multiplier X2",Ai.."Disable Enemy",DDD.."ONE HIT KILL(Risk)",UM.."Infinity Mana",US.."Infinity Skills",Speed.."Player Speed x2","Exit"},nil, [[
Solo Leveling Arise x64 Hack Script
Made By ZLI HACKS
]]..title)

if menu == nil then 
else
if menu[1] then DAMAGE() end
if menu[2] then NPC()  end
if menu[3] then KILL() end
if menu[4] then Mana() end
if menu[5] then Skills() end
if menu[6] then Spd() end
if menu[7] then 
gg.setVisible(true)
print("Hope You Enjoyed My Script") 
os.exit() 
end
end
ZLI = -1
end


function KILL()
if DDD == off then
gg.clearResults()
gg.clearList()
gg.setRanges(16384)
gg.searchNumber("h 00 84 4D 2D 02 18 21 1E 28 20 20 1E",1)
gg.getResults(999)
gg.editAll("hE07C80520000221EC0035FD6",1)
gg.clearResults()
gg.clearList()
DDD = on
gg.alert("One Hit Kill Activated")
else
gg.clearResults()
gg.clearList()
gg.setRanges(16384)
gg.searchNumber("hE07C80520000221EC0035FD6",1)
gg.getResults(999)
gg.editAll("h 00 84 4D 2D 02 18 21 1E 28 20 20 1E",1)
gg.alert("One Hit Kill Deactivated")
gg.clearResults()
gg.clearList()
DDD = off
end
end


function DAMAGE()
if Dmg == off then
gg.clearResults()
gg.clearList()
gg.setRanges(16384)
gg.searchNumber("h 00 84 4D 2D 02 18 21 1E",1)
gg.getResults(999)
gg.editAll("h00102E1EC0035FD6",1)
gg.clearResults()
gg.clearList()
Dmg = on
gg.alert("Damage Multiplier Activated")
else
gg.clearResults()
gg.clearList()
gg.setRanges(16384)
gg.searchNumber("h 00102E1EC0035FD6 28 20 20 1E",1)
gg.getResults(999)
gg.refineNumber("h 00902E1EC0035FD6",1)
gg.getResults(999)
gg.editAll("h 00 84 4D 2D 02 18 21 1E",1)
gg.alert("Damage Multiplier Deactivated")
gg.clearResults()
gg.clearList()
Dmg = off
end
end

function NPC()
if Ai == off then

gg.clearResults() gg.clearList() gg.setRanges(16384)
        gg.searchNumber("397,070,489;-132,247,564;-1,459,520,525:9", 4)
        gg.getResults(999) gg.refineNumber("-132,247,564;-1,459,520,525", 4)
        gg.getResults(999) gg.editAll("-698,416,192", 4)
        gg.clearResults() gg.clearList() gg.setRanges(16384)
        gg.searchNumber("-1,763,111,862;-1,447,144,459;-1,459,520,525;-1,186,965,496:13", 4)
        gg.getResults(999) gg.editAll("-1,763,111,862;-698,416,192;-698,416,192;-698,416,192", 4)
        gg.clearResults() gg.clearList()

Ai = on
gg.alert("Disable Enemy Activated")
else
gg.clearResults() gg.clearList() gg.setRanges(16384)
        gg.searchNumber("397,070,489;-698,416,192;-698,416,192:9", 4)
        gg.getResults(999) gg.editAll("397,070,489;-132,247,564;-1,459,520,525", 4)
        gg.clearResults() gg.clearList() gg.setRanges(16384)
        gg.searchNumber("-1,763,111,862;-698,416,192;-698,416,192;-698,416,192:13", 4)
        gg.getResults(999) gg.editAll("-1,763,111,862;-1,447,144,459;-1,459,520,525;-1,186,965,496", 4)
        gg.clearResults() gg.clearList()

gg.alert("Disable Enemy Deactivated")
Ai = off
end
end




function Mana()
if UM == off then
gg.clearResults()
gg.clearResults() gg.clearList() gg.setRanges(16384)
        gg.searchNumber("-1,762,870,036;-132,182,018;-113,243,128:9", 4)
        gg.getResults(999) gg.refineNumber("-132,182,018;-113,243,128", 4)
        gg.getResults(999) gg.editAll("1,384,408,320;-698,416,192", 4)
        gg.clearResults() gg.clearList()

UM = on
gg.alert("Unlimited Mana Activated ")
else
gg.clearResults() gg.clearList() gg.setRanges(16384)
        gg.searchNumber("-1,762,870,036;1,384,408,320;-698,416,192::9", 4)
        gg.getResults(999) gg.refineNumber("1,384,408,320;-698,416,192", 4)
        gg.getResults(999) gg.editAll("-132,182,018;-113,243,128", 4)
        gg.clearResults() gg.clearList()

UM = off
gg.alert("Unlimited Mana Deactivated")
end
end


function Skills()
if US == off then
gg.clearResults() gg.clearList() gg.setRanges(16384)
        gg.searchNumber("-1,762,876,233;-65,204,248;-1,459,530,763:9", 4)
        gg.getResults(999) gg.refineNumber("-65,204,248;-1,459,530,763", 4)
        gg.getResults(999) gg.editAll("506,204,160;-698,416,192", 4)
        gg.clearResults() gg.clearList()
gg.alert("Unlimited Skills Activated")
US = on
else
gg.clearResults() gg.clearList() gg.setRanges(16384)
        gg.searchNumber("-1,762,876,233;506,204,160;-698,416,192::9", 4)
        gg.getResults(999) gg.refineNumber("506,204,160;-698,416,192", 4)
        gg.getResults(999) gg.editAll("-65,204,248;-1,459,530,763", 4)
        gg.clearResults() gg.clearList()

gg.alert("Unlimited Skills Deactivated")
US = off
end
end


function Spd()
if Speed == off then
gg.clearResults() gg.clearList() gg.setRanges(16384)
        gg.searchNumber("-1,744,990,326;-132,182,018;-113,230,840:9", 4)
        gg.getResults(999) gg.refineNumber("-132,182,018;-113,230,840", 4)
        gg.getResults(999) gg.editAll("505,835,520;-698,416,192", 4)
        gg.clearResults() gg.clearList()

gg.alert("Speed Player x2 Activated")
Speed = on
else
gg.clearResults() gg.clearList() gg.setRanges(16384)
        gg.searchNumber("-1,744,990,326;505,835,520;-698,416,192::9", 4)
        gg.getResults(999) gg.refineNumber("505,835,520;-698,416,192", 4)
        gg.getResults(999) gg.editAll("-132,182,018;-113,230,840", 4)
        gg.clearResults() gg.clearList()

gg.alert("Player Speed x2 Deactivated")
Speed = off
end
end



function pass()
local allowedPasswords = {
----------------------------------------------------------------
["OVERTESTSZLI"] = function()
title = "Updated Script"  
end,


["Zzx"] = function()
title = "Yo"  
------EndsOn2025/7/22
end,

    ------------------------------------------------------------------


}
local inputPassword = gg.prompt({"Type The Password🔒"}, {[1] = ""}, {[1] = "text"})

if inputPassword and inputPassword[1] ~= "" then
    local passwordFunction = allowedPasswords[inputPassword[1]]

    if passwordFunction then
        passwordFunction()
    else
        gg.alert("The password is Expired Or incorrect")
pass()
    end
else
    gg.alert("No password entered") 
    pass() end end pass()




while true do
if gg.isVisible(true) then
ZLI = 1 gg.setVisible(false) end
if ZLI == 1 then Hack() end end