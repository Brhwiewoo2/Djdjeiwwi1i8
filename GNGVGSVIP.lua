local function lol(lib)
   local rangeList = gg.getRangesList(lib)  
for _, v in ipairs(rangeList) do 
      if v.state == "Xa" then return v.start  
         end  
    end  
end

function PATCH(libname_or_offset, offset_or_value, value_or_etype, etytype)
    local libBase = nil
    local offset = nil
    local value = nil
    if type(libname_or_offset) == "string" then
        libBase = lol(libname_or_offset)
        if libBase == nil then return end
        offset = offset_or_value
        value = value_or_etype
    else
        offset = libname_or_offset
        value = offset_or_value
        etytype = value_or_etype
        libBase = lol("libGangstar4.so")
    end
    if value == nil then
        value = "C0035FD6" else
        value = value:gsub("%s+", "") 
    end
    local valuesTable = {}
    local valueSize = math.ceil(#value / 2)
    etytype = etytype or 1
    for i = 1, #value, 2 do
        local entry = {}
        entry.address = libBase + offset + math.floor((i - 1) / 2)
        entry.flags = etytype
        local entryValue = value:sub(i, i + 1)
        if etytype == 1 then
            entry.value = tonumber(entryValue, 16)
        else
            entry.value = tonumber(entryValue)
        end
        table.insert(valuesTable, entry)
    end
    gg.setValues(valuesTable)
end
title = "GNG VGAS SCRIPT"  
function Hack()
menu = gg.multiChoice({"No Ads","No Money Decrease","Unlock Everything + Max","Exit"},nil, [[
Game : Gangster Vegas : World Of Crime 
64 Bit & V7.9.0 & Vip
Made By ZLI HACKS

]]..title)

if menu == nil then 
else
if menu[1] then ADS()  end
if menu[2] then MONEY() end
if menu[3] then 
PATCH(0x10D678,"E07C80D2C0035FD61F2003D5")
gg.alert([[
Everything Unlocked And Maxed To 999!
Characters & Skins & Items & Weapons & More!
]])
end
if menu[4] then
gg.setVisible(true)
print("Hope You Enjoyed My Script") 
os.exit() 
end
end
ZLI = -1
end


function ADS()
local NAD = {
0x12A7E4C,
0x12A83FC,
0x12A5588,
0x12A70C4,
0x12A8998,
0X12A6CFC,
0x12A6b28,
0x12a7674
0x12A5Dfc}
for D = 1, #NAD do
PATCH(NAD[D])
end

gg.alert("No Ads Activated\nOn First Time Ad will appear but\nAfter that it wont so dont worry")
end 

function MONEY()
PATCH(0x721EC8)
gg.alert("No Money Decrease Activated")
end


function pass()
local allowedPasswords = {
----------------------------------------------------------------
["N230606o"] = function()
title = "Welcome bro"  
---2025/3/19ends
end,

["kw0822"] = function()
title = "Welcome Dude"  
---2025/4/09ends
end,

["Daroy"] = function()
title = "Welcome Dude"  
---2025/5/07ends
end,
    ------------------------------------------------------------------


}
local inputPassword = gg.prompt({"Type The PasswordðŸ”’"}, {[1] = ""}, {[1] = "text"})

if inputPassword and inputPassword[1] ~= "" then
    local passwordFunction = allowedPasswords[inputPassword[1]]

    if passwordFunction then
        passwordFunction()
    else
        gg.alert("The password is incorrect")
pass()
    end
else
    gg.alert("No password entered") 
    pass() end end pass()

while true do
if gg.isVisible(true) then
ZLI = 1 gg.setVisible(false) end
if ZLI == 1 then Hack() end end