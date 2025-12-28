local imports = {
    "android.*",
    "android.app.*",
    "android.content.*",
    "android.graphics.*",
    "android.graphics.drawable.*",
    "android.os.*",
    "android.view.*",
    "android.widget.*",
    "android.ext.*",
    "android.ext.Tools",
    "android.ext.MainService",
    "android.view.animation.*",
    "android.animation.ObjectAnimator",
    "com.ldoublem.loadingviewlib.view.*",
    "com.ldoublem.loadingviewlib.view.base.LVBase",
    "com.ldoublem.loadingviewlib.LVCircularCD",
    "com.ldoublem.loadingviewlib.view.LVCircularRing",
    "com.ldoublem.loadingviewlib.view.LVBlock",
    "com.romainpiel.shimmer.*",
    "java.io.File",
    "java.lang.*",
    "java.util.*",
    "luaj.lib.ModLib",
    "loadlayout"
}

for _, lib in ipairs(imports) do
    import(lib)
end

Gravity = luajava.bindClass("android.view.Gravity")
toast.setGravity(Gravity.BOTTOM)
toast.setMode(1)

-- Core functionality (unchanged)
local function lol(lib)
    local rangeList = gg.getRangesList(lib)
    for _, v in ipairs(rangeList) do
        if v.state == "Xa" then return v.start end
    end
end

function PATCH(libname_or_offset, offset_or_value, value_or_etype, etytype)
    local libBase = nil
    local offset = nil
    local value = nil
    if type(libname_or_offset) == "string" then
        libBase = lol(libname_or_offset)
        if libBase == nil then
            gg.alert("Failed to find library base address for: " .. tostring(libname_or_offset))
            return
        end
        offset = offset_or_value
        value = value_or_etype
    else
        offset = libname_or_offset
        value = offset_or_value
        etytype = value_or_etype
        libBase = lol("libil2cpp.so")
        if libBase == nil then
            gg.alert("Failed to find libil2cpp.so base address")
            return
        end
    end
    if value == nil then
        value = "C0035FD6"
    else
        value = value:gsub("%s+", "")
    end
    if not value or value == "" then
        gg.alert("Invalid value for PATCH")
        return
    end
    local valuesTable = {}
    local valueSize = math.ceil(#value / 2)
    etytype = etytype or 1
    for i = 1, #value, 2 do
        local entry = {}
        entry.address = libBase + offset + math.floor((i - 1) / 2)
        entry.flags = etytype
        local entryValue = value:sub(i, i + 1)
        if not entryValue or entryValue == "" then
            gg.alert("Invalid entry value at position " .. i)
            return
        end
        if etytype == 1 then
            if entryValue:match("^[0-9A-Fa-f]+$") then
                entry.value = tonumber(entryValue, 16)
            else
                gg.alert("Invalid hex value: " .. tostring(entryValue))
                return
            end
        else
            if entryValue:match("^[0-9]+$") then
                entry.value = tonumber(entryValue)
            else
                gg.alert("Invalid decimal value: " .. tostring(entryValue))
                return
            end
        end
        table.insert(valuesTable, entry)
    end
    gg.setValues(valuesTable)
end

off = "OFF - "
on = "ON - "
Ai = off
Dmg = off
DDD = off
US = off
UM = off
Speed = off
Fatks = off
title = "ZLI HACKS"

-- Nouvelles URLs d'API
API_CHECK_KEY = "https://d-m-z-key-manager-138650ea.base44.app/api/functions/checkKey"
API_REGISTER_UID = "https://d-m-z-key-manager-138650ea.base44.app/api/functions/registerUid"
API_LOG_USAGE = "https://d-m-z-key-manager-138650ea.base44.app/api/functions/logUsage"
API_CHECK_UID = "https://d-m-z-key-manager-138650ea.base44.app/api/functions/checkUid"
API_REQUEST_HWID_RESET = "https://d-m-z-key-manager-138650ea.base44.app/api/functions/requestHwidReset"
API_SCRIPT_EXECUTION = "https://d-m-z-key-manager-138650ea.base44.app/api/functions/scriptExecution"
GAME = "Solo"

function getAndroidUID()    local context = activity
    
    -- TOUJOURS vérifier SharedPreferences EN PREMIER
    local sharedPrefs = context.getSharedPreferences("ZLI_HACKS", 0)
    local savedUid = sharedPrefs.getString("custom_uid", nil)
    
    if savedUid and savedUid ~= "" then
        return savedUid  -- Utiliser l'UID déjà sauvegardé
    end
    
    -- Si pas d'UID sauvegardé, essayer d'en obtenir un
    local settings = context.getContentResolver()
    local uid = luajava.bindClass("android.provider.Settings$Secure").getString(settings, "android_id")
    
    if not uid or uid == "" then
        local Build = luajava.bindClass("android.os.Build")
        uid = Build.SERIAL
    end
    
    if not uid or uid == "unknown" or uid == "" then
        uid = tostring(os.time()) .. "_" .. math.random(100000, 999999)
    end
    
    -- Sauvegarder l'UID pour les prochaines fois
    local editor = sharedPrefs.edit()
    editor.putString("custom_uid", uid)
    editor.commit()
    
    return uid
end
function validateKey(key)
    local android_uid = getAndroidUID()
    
    gg.sleep(500)
    
    -- Requête GET
    local url = API_CHECK_KEY .. "?key=" .. key .. "&android_uid=" .. android_uid .. "&game=" .. GAME
    
    gg.toast("Checking server...")
    
    local response = gg.makeRequest(url)
    
    if not response then
        gg.toast("No server response")
        return false, "No response from server", nil, nil, nil
    end
    
  --  gg.toast("Response code: " .. tostring(response.code))
    
    -- Traiter la réponse même si code 403 ou 200
    -- Le serveur peut retourner 403 mais avec un contenu valide
    if response.code == 200 or response.code == 403 then
        local content = response.content
        
        if not content then
            gg.toast("Empty content")
            return false, "Empty response", nil, nil, nil
        end
        
        -- Parsing de la réponse
        local expiration = content:match('"expiration":"(.-)"')
        local status = content:match('"status":"(.-)"')
        local error = content:match('"error":"(.-)"')
        local max_devices = content:match('"max_devices":(%d+)')
        local device_count = content:match('"device_count":(%d+)')
        
        if error then
            gg.toast("Error: " .. error)
            return false, error, nil, nil, nil
        end
        
        if not expiration or not status then
            gg.toast("Missing expiration or status")
            return false, "Invalid response format", nil, nil, nil
        end
        
        -- Parsing de la date d'expiration
        local year, month, day = expiration:match("(%d+)-(%d+)-(%d+)")
        if not year or not month or not day then
            gg.toast("Invalid date format")
            return false, "Invalid date format", nil, nil, nil
        end
        
        -- Vérification de l'expiration
        local expTime = os.time({year = tonumber(year), month = tonumber(month), day = tonumber(day)})
        local currentTime = os.time()
        
        if status == "active" and currentTime < expTime then
            local message = max_devices and ("Trial Key validated (" .. device_count .. "/" .. max_devices .. " devices)") or "VIP Key validated"
            gg.toast("✅ " .. message)
            return true, message, expiration, max_devices, device_count
        else
            if currentTime >= expTime then
                gg.toast("Key expired")
                return false, "Key expired", expiration, nil, nil
            else
                gg.toast("Key inactive")
                return false, "Key is inactive", expiration, nil, nil
            end
        end
    else
        -- Pour tous les autres codes (400, 500, etc.)
   --     gg.toast("Server error: code " .. tostring(response.code))
        return false, "Connection failed", nil, nil, nil
    end
end

function registerUID(key, discord_id)
    local android_uid = getAndroidUID()
    local url = API_REGISTER_UID .. "?key=" .. key .. "&discord_id=" .. discord_id .. "&android_uid=" .. android_uid .. "&game=" .. GAME
    local max_attempts = 3
    local attempt = 1
    while attempt <= max_attempts do
        local response = gg.makeRequest(url)
        if response and response.code == 200 then
            return true
        else
            if attempt == max_attempts then
                return false
            end
            gg.sleep(2000)
        end
        attempt = attempt + 1
    end
    return false
end

function logUsage(key, action)
    local url = API_LOG_USAGE .. "?key=" .. key .. "&action=" .. action .. "&game=" .. GAME
    gg.makeRequest(url)
end

function logScriptExecution(key)
    local url = API_SCRIPT_EXECUTION .. "?key=" .. key .. "&game=" .. GAME
    gg.makeRequest(url)
end



function promptKeyAndDiscord()
    local input = gg.prompt(
        {"Enter your VIP or Trial key:"},
        {nil},
        {"text"}
    )
    if not input or not input[1] then
        gg.toast("Missing key")
        os.exit()
    end
    local key = input[1]
    local isValid, message, expiration, max_devices, device_count = validateKey(key)
    if not isValid then
        if message:match("trial_key_max_devices_reached") then
            gg.toast("Trial key has reached its maximum device limit. Contact support.")
        else
            gg.toast(message)
        end
        os.exit()
    end
    gg.toast(message) -- Show "Trial Key validated" or "VIP Key validated"
    logScriptExecution(key)
    local android_uid = getAndroidUID()
    local response = gg.makeRequest(API_CHECK_UID .. "?key=" .. key .. "&android_uid=" .. android_uid .. "&game=" .. GAME)
    if response and response.code ~= 200 then
        if response and response.code == 403 then
            local content = response.content
            local error = content:match('"error":"(.-)"') or "Unknown error"
            if error:match("trial_key_max_devices_reached") then
                gg.toast("Trial key has reached its maximum device limit. Contact support.")
            else
                gg.toast(error)
            end
            os.exit()
        end
        gg.toast("Failed to check UID")
        os.exit()
    end
    local content = response and response.content
    if not content then
        gg.toast("No response content")
        os.exit()
    end
    local exists = content:match('"exists":(.-)[,}]')
    local error = content:match('"error":"(.-)"')
    if error then
        if error:match("trial_key_max_devices_reached") then
            gg.toast("Trial key has reached its maximum device limit. Contact support.")
        else
            gg.toast(error)
        end
        os.exit()
    end
    if exists == "true" then
    else
        local discord_id = gg.prompt({"Enter your Discord ID:"}, nil, {"text"})[1]
        if not discord_id then
            gg.toast("Missing Discord ID")
            os.exit()
        end
        if not registerUID(key, discord_id) then
            gg.toast("Failed to register UID")
            os.exit()
        end
    end
    return key, expiration, max_devices, device_count
end

local key, expiration = promptKeyAndDiscord()
if not key then
    os.exit()
end


function KILL()
    if DDD == off then
        gg.clearResults()
        gg.clearList()
        gg.setRanges(16384)
        gg.searchNumber("-1,447,207,945;-1,459,530,763;1,358,955,560:13",4)
        gg.getResults(999)
        gg.refineNumber("1,358,955,560",4)
        gg.getResults(999)
        gg.editAll("1,358,960,680", 4)
        gg.clearResults()
        gg.clearList()
        DDD = on
        gg.alert("Direct Kill Activated")
            else
        gg.clearResults()
        gg.clearList()
        gg.setRanges(16384)
        gg.searchNumber("-1,447,207,945;-1,459,530,763;1,358,960,680:13", 4)
        gg.getResults(999)
        gg.editAll("-1,447,207,945;-1,459,530,763;1,358,955,560", 4)
        gg.clearResults()
        gg.clearList()
        DDD = off
        gg.alert("Direct Kill Deactivated")
            end
end


-- Fonction pour Damage Multiplier
function DAMAGE()
    if Dmg == off then
        gg.clearResults()
        gg.clearList()
        gg.setRanges(16384)
        gg.searchNumber("h 00 84 4D 2D 02 18 21 1E", 1)
        gg.getResults(999)
        gg.editAll("h00102E1EC0035FD6", 1)
        gg.clearResults()
        gg.clearList()
        Dmg = on
        gg.alert("Damage x2 Activated")
            else
        gg.clearResults()
        gg.clearList()
        gg.setRanges(16384)
        gg.searchNumber("h 00102E1EC0035FD6 28 20 20 1E", 1)
        gg.getResults(999)
        gg.refineNumber("h 00902E1EC0035FD6", 1)
        gg.getResults(999)
        gg.editAll("h 00 84 4D 2D 02 18 21 1E", 1)
        gg.clearResults()
        gg.clearList()
        Dmg = off
        gg.alert("Damage x2 Deactivated")
    end
end


-- Fonction pour Disable Enemy
function NPC()
    if Ai == off then
gg.clearResults()
gg.clearList()
gg.setRanges(16384)
gg.searchNumber("396,888,635;-132,247,564;-1,459,520,525:9",4)
gg.getResults(999)
gg.refineNumber("-132,247,564;-1,459,520,525",4)
gg.getResults(999)
gg.editAll("-698,416,192",4)
gg.clearResults()
gg.clearList()

gg.clearResults()
gg.clearList()
gg.setRanges(16384)
gg.searchNumber("-1,762,916,711;-1,447,144,459;-1,459,520,525;-1,186,965,496:13",4)
gg.getResults(999)
gg.editAll("-1,762,916,711;-698,416,192;-698,416,192;-698,416,192",4)
gg.clearResults()
gg.clearList()
Ai = on
gg.alert("Disable Enemy Activated")
else
gg.clearResults()
gg.clearList()
gg.setRanges(16384)
gg.searchNumber("396,888,635;-698,416,192;-698,416,192:9",4)
gg.getResults(999)
gg.editAll("396,888,635;-132,247,564;-1,459,520,525",4)
gg.clearResults()
gg.clearList()

gg.clearResults()
gg.clearList()
gg.setRanges(16384)
gg.searchNumber("-1,762,916,711;-698,416,192;-698,416,192;-698,416,192:13",4)
gg.getResults(999)
gg.editAll("-1,762,916,711;-1,447,144,459;-1,459,520,525;-1,186,965,496",4)
gg.clearResults()
gg.clearList()
gg.alert("Disable Enemy Deactivated")
        Ai = off
       
    end
end

function Mana()
if UM == off then
gg.clearResults()
gg.clearList()
gg.setRanges(16384)
gg.searchNumber("-1,764,632,802;-132,182,018;-113,243,128:9",4)
gg.getResults(999)
gg.refineNumber("-132,182,018;-113,243,128",4)
gg.getResults(999)
gg.editAll("1,384,408,320;-698,416,192",4)
gg.clearResults()
gg.clearList()
UM = on
gg.alert("Unlimited Mana Activated ")
else
gg.clearResults()
gg.clearList()
gg.setRanges(16384)
gg.searchNumber("-1,764,632,802;1,384,408,320;-698,416,192::9",4)
gg.getResults(999)
gg.refineNumber("1,384,408,320;-698,416,192",4)
gg.getResults(999)
gg.editAll("-132,182,018;-113,243,128",4)
gg.clearResults()
gg.clearList()
UM = off
gg.alert("Unlimited Mana Deactivated")
end
end

function Skills()
if US == off then
gg.clearResults()
gg.clearList()
gg.setRanges(16384)
gg.searchNumber("-1,764,638,370;-65,204,248;-1,459,530,763:9",4)
gg.getResults(999)
gg.refineNumber("-65,204,248;-1,459,530,763",4)
gg.getResults(999)
gg.editAll("506,204,160;-698,416,192",4)
gg.clearResults()
gg.clearList()
gg.alert("Unlimited Skills Activated")
US = on
else
gg.clearResults()
gg.clearList()
gg.setRanges(16384)
gg.searchNumber("-1,764,638,370;506,204,160;-698,416,192::9",4)
gg.getResults(999)
gg.refineNumber("506,204,160;-698,416,192",4)
gg.getResults(999)
gg.editAll("-65,204,248;-1,459,530,763",4)
gg.clearResults()
gg.clearList()
gg.alert("Unlimited Skills Deactivated")
US = off
end
end




function FATK()
if Fatks == off then
gg.clearResults()
gg.clearList()
gg.setRanges(16384)
gg.searchNumber("-1,763,740,567;-132,182,018;-113,239,040:9",4)
gg.getResults(999)
gg.refineNumber("-132,182,018;-113,239,040",4)
gg.getResults(999)
gg.editAll("505,614,336;-698,416,192",4)
gg.clearResults()
gg.clearList()
Fatks = on
gg.alert("Fast Attacks Activated")
else
gg.clearResults()
gg.clearList()
gg.setRanges(16384)
gg.searchNumber("-1,763,740,567;505,614,336;-698,416,192::9",4)
gg.getResults(999)
gg.refineNumber("505,614,336;-698,416,192",4)
gg.getResults(999)
gg.editAll("-132,182,018;-113,239,040",4)
gg.clearResults()
gg.clearList()
Fatks = off
gg.alert("Fast Attacks Deactivated")
end
end


function Spd()
if Speed == off then
gg.clearResults()
gg.clearList()
gg.setRanges(16384)
gg.searchNumber("-1,765,067,862;-132,182,018;-113,230,840:9",4)
gg.getResults(999)
gg.refineNumber("-132,182,018;-113,230,840",4)
gg.getResults(999)
gg.editAll("505,835,520;-698,416,192",4)
gg.clearResults()
gg.clearList()
Speed = on
gg.alert("Speed Player x2 Activated")
else
gg.clearResults()
gg.clearList()
gg.setRanges(16384)
gg.searchNumber("-1,765,067,862;505,835,520;-698,416,192::9",4)
gg.getResults(999)
gg.refineNumber("505,835,520;-698,416,192",4)
gg.getResults(999)
gg.editAll("-132,182,018;-113,230,840",4)
gg.clearResults()
gg.clearList()
Speed = off
gg.alert("Player Speed x2 Deactivated")
end
end



-- UI Setup
local HotPoint = luajava.bindClass("android.ext.HotPoint").instance
gg.setVisible(false)
toast.hint("Script Cheat Menu Initiated...", 1500)

if HotPoint and type(HotPoint.hide) == "function" then
    HotPoint.hide()
else
    gg.toast("HotPoint.hide() is not available. Skipping...")
end

toast.success("Cheat Menu Activated", 1500)

local context = activity
local window = context.getSystemService("window")
local mObjectAnimator

local function sparkle_animation(view)
    if not mObjectAnimator then
        mObjectAnimator = ObjectAnimator.ofFloat(view, "alpha", 0.3, 1)
        mObjectAnimator.setDuration(800)
        mObjectAnimator.setRepeatCount(ObjectAnimator.INFINITE)
        mObjectAnimator.setRepeatMode(ObjectAnimator.REVERSE)
        mObjectAnimator.setInterpolator(AccelerateDecelerateInterpolator())
    end
end

local function sparkle_startanimation()
    if mObjectAnimator then
        mObjectAnimator.start()
    end
end

local function getLayoutParams()
    local LayoutParams = WindowManager.LayoutParams
    local layoutParams = luajava.new(LayoutParams)
    layoutParams.type = (Build.VERSION.SDK_INT >= 26) and LayoutParams.TYPE_APPLICATION_OVERLAY or LayoutParams.TYPE_PHONE
    layoutParams.format = PixelFormat.RGBA_8888
    layoutParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE
    layoutParams.gravity = Gravity.CENTER | Gravity.LEFT
    layoutParams.width = LayoutParams.WRAP_CONTENT
    layoutParams.height = LayoutParams.WRAP_CONTENT
    return layoutParams
end

local function getShapeBackground(color, radius)
    local drawable = luajava.new(GradientDrawable)
    drawable.setShape(GradientDrawable.RECTANGLE)
    drawable.setGradientType(GradientDrawable.LINEAR_GRADIENT)
    drawable.setColor(0xFF000000) -- black
    drawable.setCornerRadius(radius)
    drawable.setStroke(2, 0xFFFF4500) -- Orange stroke
    return drawable
end

local function getBannerBackground()
    local drawable = luajava.new(GradientDrawable)
    drawable.setShape(GradientDrawable.RECTANGLE)
    drawable.setGradientType(GradientDrawable.LINEAR_GRADIENT)
    drawable.setColor(0xFF000000) -- Black
    drawable.setCornerRadius(15)
    drawable.setStroke(2, 0xFFFFFFFF) -- White stroke
    return drawable
end

local function getButtonBackground()
    local drawable = luajava.new(GradientDrawable)
    drawable.setShape(GradientDrawable.RECTANGLE)
    drawable.setColor(0xFF000000) -- Black
    drawable.setCornerRadius(20)
    drawable.setStroke(2, 0xFFFF4500) -- Orange stroke
    return drawable
end

local function getCloseButtonBackground()
    local drawable = luajava.new(GradientDrawable)
    drawable.setShape(GradientDrawable.RECTANGLE)
    drawable.setColor(0xFF000000) -- Black
    drawable.setCornerRadius(20)
    drawable.setStroke(2, 0xFFFF4500) -- Orange stroke
    return drawable
end

local function iOSwitch(isChecked)
    local trackColor = isChecked and 0xFF00FF00 or 0xFF000000 -- Black for unchecked
    local thumbColor = isChecked and 0xFFFF4500 or 0xFFFF0000
    local radius = 50
    local thumbRadius = 20
    local width = 50
    local height = 30
    local trackDrawable = luajava.new(GradientDrawable)
    trackDrawable.setShape(GradientDrawable.RECTANGLE)
    trackDrawable.setColor(trackColor)
    trackDrawable.setCornerRadius(radius)
    trackDrawable.setSize(width, height)
    trackDrawable.setStroke(1, 0xFFFF4500)
    local thumbDrawable = luajava.new(GradientDrawable)
    thumbDrawable.setShape(GradientDrawable.OVAL)
    thumbDrawable.setColor(thumbColor)
    thumbDrawable.setSize(thumbRadius * 2, thumbRadius * 2)
    local thumbX = isChecked and (width - thumbRadius * 2) or 0
    local thumbY = (height - thumbRadius * 2) / 2
    thumbDrawable.setBounds(thumbX, thumbY, thumbX + thumbRadius * 2, thumbY + thumbRadius * 2)
    return trackDrawable, thumbDrawable
end

function updateiOSwitch(switchView, isChecked)
    local trackDrawable, thumbDrawable = iOSwitch(isChecked)
    switchView.setTrackDrawable(trackDrawable)
    switchView.setThumbDrawable(thumbDrawable)
end

local log = function(text, color, size)
    local tmp = loadlayout {
        TextView,
        text = os.date("  %Y-%m-%d %H:%M:%S ") .. text,
        textSize = size or '12sp',
        textColor = color or "#FF4500",
        gravity = "center_vertical",
        layout_width = "wrap_content",
        shadowLayer = {2, 1, 1, 0xFF000000},
        padding = "5dp",
    }
    Runlog_list.addView(tmp)
    Runlog.fullScroll(View.FOCUS_DOWN)
end

function ShimmerLayout1(id, text)
    return {
        ShimmerTextView;
        layout_width = "match_parent";
        layout_height = "match_parent";
        id = id;
        text = text;
        reflectionColor = "#FFFF4500";
        textColor = "#FFFFFF";
        textSize = "14sp";
        gravity = "center";
        shadowLayer = {2, 1, 1, 0xFF000000};
        padding = "5dp";
    }
end

function ShimmerLayout2(id, text, gravity, textSize, margin)
    return {
        ShimmerTextView;
        layout_centerVertical = "true";
        reflectionColor = "#FFFF4500";
        textColor = "#FFFFFF";
        layout_margin = margin or "5dp";
        textSize = textSize or "14sp";
        layout_height = "match_parent";
        layout_width = "match_parent";
        id = id;
        text = text;
        gravity = gravity;
        shadowLayer = {2, 1, 1, 0xFF000000};
    }
end

local function ButtonLayout(id, text)
    return {
        LinearLayout;
        layout_width = "match_parent";
        layout_height = "40dp";
        layout_margin = "5dp";
        gravity = "center";
        background = getButtonBackground();
        {
            ShimmerTextView;
            layout_width = "match_parent";
            layout_height = "match_parent";
            id = id;
            text = text;
            reflectionColor = "#FFFF4500";
            textColor = "#FFFFFF";
            textSize = "14sp";
            gravity = "center";
            shadowLayer = {2, 1, 1, 0xFF000000};
        };
    }
end

function AboutLayout(id1, text1, id2, text2)
    return {
        LinearLayout,
        layout_height = "wrap_content",
        orientation = "horizontal",
        layout_width = "match_parent";
        gravity = "center_vertical";
        padding = "5dp";
        {
            CircleImageView,
            layout_width = "40dp";
            layout_height = "40dp";
            id = id1;
            layout_margin = "5dp";
        };
        {
            ShimmerTextView,
            reflectionColor = "#FFFF4500";
            textColor = "#FFFFFF";
            layout_margin = "5dp";
            textSize = "14sp";
            id = id1 .. "1";
            layout_height = "wrap_content";
            layout_width = "wrap_content";
            text = text1;
            gravity = "center";
        };
        {
            ShimmerTextView,
            reflectionColor = "#FFFF4500";
            textColor = "#FFFFFF";
            layout_margin = "5dp";
            textSize = "14sp";
            id = id1 .. "2";
            layout_height = "wrap_content";
            layout_width = "wrap_content";
            text = text2;
            gravity = "center|right";
        };
    }
end

page1 = {
    LinearLayout;
    layout_width = "fill";
    layout_height = "fill";
    orientation = "vertical";
    {
        LinearLayout; -- Banner
        layout_width = "match_parent";
        layout_height = "60dp";
        gravity = "center";
        background = getBannerBackground();
        {
            CircleImageView;
            layout_width = "40dp";
            layout_height = "40dp";
            id = "banner_logo";
            layout_marginStart = "10dp";
        };
        {
            ShimmerTextView;
            layout_width = "wrap_content";
            layout_height = "wrap_content";
            text = "ZLI HACKS";
            textSize = "18sp";
            textColor = "#FFFFFF";
            reflectionColor = "rgba(0, 0, 0, 1)";
            gravity = "center";
            layout_marginStart = "10dp";
        };
    };
    {
        LinearLayout;
        layout_height = "match_parent";
        layout_margin = "5dp";
        layout_width = "match_parent";
        {
            ScrollView;
            layout_height = "match_parent";
            padding = "0dp";
            layout_width = "match_parent";
            VerticalScrollBarEnabled = true;
            {
                LinearLayout;
                background = getShapeBackground(0xFF000000, 30);
                layout_height = "match_parent";
                layout_width = "match_parent";
                orientation = "vertical";
                id = "FuncLayout";
                padding = "10dp";
                {
                    LinearLayout; -- Placeholder for cheat options (populated dynamically)
                    layout_width = "match_parent";
                    layout_height = "wrap_content";
                    orientation = "vertical";
                    id = "CheatOptions";
                };
                {
                    LinearLayout; -- Close Menu button at the bottom
                    layout_width = "match_parent";
                    layout_height = "40dp";
                    layout_margin = "5dp";
                    gravity = "center";
                    background = getCloseButtonBackground();
                    {
                        ShimmerTextView;
                        layout_width = "match_parent";
                        layout_height = "match_parent";
                        id = "close_menu";
                        text = "Close Menu";
                        reflectionColor = "#FFFF4500";
                        textColor = "#FFFFFF";
                        textSize = "14sp";
                        gravity = "center";
                        shadowLayer = {2, 1, 1, 0xFF000000};
                    };
                };
            };
        };
    };
}

page4 = {
    LinearLayout;
    layout_width = "fill";
    layout_height = "fill";
    orientation = "vertical";
    {
        LinearLayout; -- Banner
        layout_width = "match_parent";
        layout_height = "60dp";
        gravity = "center";
        background = getBannerBackground();
        {
            ShimmerTextView;
            layout_width = "wrap_content";
            layout_height = "wrap_content";
            text = "LOGS";
            textSize = "18sp";
            textColor = "#FFFFFF";
            reflectionColor = "#FFFF4500";
            gravity = "center";
        };
    };
    {
        LinearLayout;
        layout_height = "match_parent";
        layout_margin = "5dp";
        layout_width = "match_parent";
        {
            ScrollView;
            layout_height = "wrap_content";
            padding = "0dp";
            layout_width = "match_parent";
            VerticalScrollBarEnabled = false;
            id = "Runlog";
            background = getShapeBackground(0xFF000000, 30);
            {
                LinearLayout;
                layout_marginTop = "0dp";
                layout_marginBottom = "0dp";
                layout_marginEnd = "2.5dp";
                layout_marginStart = "2.5dp";
                layout_height = "wrap_content";
                layout_width = "match_parent";
                id = "Runlog_list";
                orientation = "vertical";
                padding = "10dp";
            };
        };
    };
}

page5 = {
    LinearLayout,
    layout_width = "fill",
    layout_height = "fill",
    orientation = "vertical",
    {
        LinearLayout; -- Banner
        layout_width = "match_parent";
        layout_height = "60dp";
        gravity = "center";
        background = getBannerBackground();
        {
            ShimmerTextView;
            layout_width = "wrap_content";
            layout_height = "wrap_content";
            text = "ABOUT";
            textSize = "18sp";
            textColor = "#FFFFFF";
            reflectionColor = "#FFFF4500";
            gravity = "center";
        };
    };
    {
        LinearLayout,
        layout_height = "match_parent";
        layout_margin = "5dp";
        layout_width = "match_parent";
        orientation = "vertical",
        {
            ScrollView,
            layout_height = "wrap_content";
            padding = "0dp";
            layout_width = "match_parent";
            VerticalScrollBarEnabled = true;
            background = getShapeBackground(0xFF000000, 30),
            {
                LinearLayout,
                layout_height = "wrap_content";
                orientation = "vertical";
                layout_width = "match_parent";
                padding = "10dp";
                AboutLayout("GAME", "GAME", "GAME2", "SOLO LEVELING"),
                AboutLayout("DZZHACKS0213", "YTB", "DZZHACKS02132", "@DZZHACKS0213"),
                AboutLayout("ZLIHACKS", "YOUTUBE", "ZLIHACKS2", "@WorstMods"),
                ButtonLayout("Exit_Button", "Exit Script"),
            },
        },
    },
}

xfc = {
    LinearLayout;
    layout_height = "fill";
    orientation = "vertical";
    id = "touch";
    layout_width = "350dp";
    background = getShapeBackground(0xFF000000, 30);
    {
        LinearLayout;
        layout_height = "40dp";
        orientation = "horizontal";
        layout_width = "match_parent";
        gravity = "center";
        {
            LinearLayout;
            layout_width = "50dp";
            layout_height = "50dp";
            layout_margin = "5dp";
            gravity = "center";
            {
                CircleImageView;
                layout_width = "40dp";
                layout_height = "40dp";
                id = "control";
            };
        };
        {
            ShimmerTextView;
            layout_width = "wrap_content";
            layout_height = "wrap_content";
            text = "ZLI - DRACO";
            textSize = "16sp";
            id = "UserName";
            reflectionColor = "#FFFF4500";
            textColor = "#FFFFFF";
            gravity = "center";
        };
    };
    {
        LinearLayout;
        layout_height = "wrap_content";
        orientation = "horizontal";
        layout_width = "match_parent";
        background = getShapeBackground(0xFF000000, 20); -- Changed to black
        {
            RelativeLayout;
            layout_width = "match_parent";
            layout_height = "35dp";
            ShimmerLayout2("left_Title", "SLA HACKS", "center|left", "14sp"),
            ShimmerLayout2("center_Title", "By ZLI HACKS", "center|center", "14sp"),
            ShimmerLayout2("right_Title", "| VER: 4.1", "center|right", "14sp"),
        };
    };
    {
        LinearLayout;
        layout_height = "wrap_content";
        orientation = "horizontal";
        layout_width = "match_parent";
        {
            RelativeLayout;
            layout_width = "match_parent";
            layout_height = "25dp";
            {
                ShimmerTextView;
                layout_centerVertical = "true";
                layout_margin = "5dp";
                textSize = "12sp";
                textColor = "#FF4500";
                reflectionColor = "#FFFF4500";
                layout_height = "match_parent";
                layout_width = "wrap_content";
                id = "sub_Title";
                text = "Telegram: t.me/ZLIHACK | Discord: discord.gg/2fwCvxPDzS";
                gravity = "center|center";
                ellipsize = "marquee";
                singleLine = "true";
                focusableInTouchMode = "true";
                focusable = "true";
            };
        };
    };
    {
        LinearLayout;
        layout_height = "wrap_content";
        orientation = "horizontal";
        layout_width = "match_parent";
        gravity = "center";
        {
            LinearLayout;
            layout_width = "wrap_content";
            layout_height = "wrap_content";
            layout_margin = "5dp";
            {
                ShimmerTextView;
                layout_width = "wrap_content";
                layout_height = "35dp";
                id = "Page_Switch";
                text = "Cheats";
                textSize = "14sp";
                reflectionColor = "#FFFF4500";
                textColor = "#FFFFFF";
                gravity = "center";
                background = getShapeBackground(0xFF000000, 20); -- Changed to black
                padding = "10dp";
            };
            {
                ShimmerTextView;
                layout_width = "wrap_content";
                layout_height = "35dp";
                id = "Page_Runlog";
                text = "Logs";
                textSize = "14sp";
                reflectionColor = "#FFFF4500";
                textColor = "#FFFFFF";
                gravity = "center";
                background = getShapeBackground(0xFF000000, 20); -- Changed to black
                padding = "10dp";
            };
            {
                ShimmerTextView;
                layout_width = "wrap_content";
                layout_height = "35dp";
                id = "Page_About";
                text = "About";
                textSize = "14sp";
                reflectionColor = "#FFFF4500";
                textColor = "#FFFFFF";
                gravity = "center";
                background = getShapeBackground(0xFF000000, 20); -- Changed to black
                padding = "10dp";
            };
        };
    };
    {
        LinearLayout;
        layout_height = "match_parent";
        layout_width = "match_parent";
        {
            PageView;
            layout_width = "match_parent";
            id = "page_main";
            layout_height = "match_parent";
            pages = {
                page1,
                page4,
                page5,
            };
        };
    };
}

xfq = {
    LinearLayout;
    layout_height = "fill";
    layout_width = "fill";
    {
        LinearLayout;
        layout_width = "60dp";
        layout_height = "60dp";
        {
            CircleImageView;
            layout_width = "match_parent";
            layout_margin = "0dp";
            layout_height = "match_parent";
            id = "suspended_ball";
        };
    };
}

mainLayoutParams = getLayoutParams()

Gamelogo = loadbitmap("https://i.postimg.cc/HkNf1VHM/bfa40a-KY4-Zn-Zc-Vn-q-Inbzmeh-So-WOIu-Kr-FYD4-Of-Xx2igj-JNeq-Jn0bla-Y-xj-Pk-ACS-y5-Us96.png")
DzzhacksLogo = loadbitmap("https://i.postimg.cc/6q6HvXtw/mini.png")
ZlihackLogo = loadbitmap("https://i.postimg.cc/SNB0Yn2G/zli.jpg")

invoke = function()
    xfq = loadlayout(xfq)
    xfc = loadlayout(xfc)
    suspended_ball.setImageBitmap(ZlihackLogo)
    control.setImageBitmap(ZlihackLogo)
    GAME.setImageBitmap(Gamelogo)
    ZLIHACKS.setImageBitmap(ZlihackLogo)
    DZZHACKS0213.setImageBitmap(DzzhacksLogo)
    banner_logo.setImageBitmap(ZlihackLogo)

    -- Set UserName text with expiration date
    UserName.setText("ZLI - DRACO | Exp: " .. (expiration or "N/A"))

    local state = { isFocusable = false }
    local mainLayoutParams = getLayoutParams()
    local function refreshState()
        mainLayoutParams.flags = state.isFocusable and WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL or WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE
        window.updateViewLayout(xfq, mainLayoutParams)
        window.updateViewLayout(xfc, mainLayoutParams)
    end

    local function showToast(msg, duration)
        if duration then
            toast.error(msg, duration)
        else
            toast.hint(msg)
        end
    end

    local function onControlClick(v)
        showToast("Menu Hidden")
        window.removeView(xfc)
        sparkle_animation(suspended_ball)
        sparkle_startanimation()
        state.isFocusable = false
        window.addView(xfq, mainLayoutParams)
        refreshState()
    end

    local function onControlLongClick(v)
        pcall(function()
            showToast("Cheat Menu Deactivated", 1500)
            HotPoint.show()
            showToast("Exiting Script...")
            local timeMsg = "Script Time: \n" .. os.date("%Y-%m-%d %H:%M:%S")
            showToast(timeMsg .. "\nScript Shutdown Complete")
            window.removeView(xfc)
            Lock.unUi()
        end)
        os.exit()
    end

    suspended_ball.onTouch = function(v, event)
        local action = event.getAction()
        if action == MotionEvent.ACTION_DOWN then
            isMove = false
            RawX = event.getRawX()
            RawY = event.getRawY()
            x = mainLayoutParams.x
            y = mainLayoutParams.y
        elseif action == MotionEvent.ACTION_MOVE then
            isMove = true
            mainLayoutParams.x = x + (event.getRawX() - RawX)
            mainLayoutParams.y = y + (event.getRawY() - RawY)
            window.updateViewLayout(xfq, mainLayoutParams)
        end
    end

    touch.onTouch = function(v, event)
        local action = event.getAction()
        if action == MotionEvent.ACTION_DOWN then
            isMove = false
            RawX = event.getRawX()
            RawY = event.getRawY()
            x = mainLayoutParams.x
            y = mainLayoutParams.y
        elseif action == MotionEvent.ACTION_MOVE then
            isMove = true
            mainLayoutParams.x = x + (event.getRawX() - RawX)
            mainLayoutParams.y = y + (event.getRawY() - RawY)
            window.updateViewLayout(xfc, mainLayoutParams)
        end
    end

    suspended_ball.onClick = function(v)
        window.removeView(xfq)
        state.isFocusable = true
        window.addView(xfc, mainLayoutParams)
        refreshState()
    end
    control.onClick = onControlClick
    control.onLongClick = onControlLongClick

    -- Add close_menu button handler
    close_menu.onClick = onControlClick

    local function page_onClick(page, index)
        page.onClick = function()
            page_main.showPage(index)
        end
    end

    local pages = {
        Page_Switch,
        Page_Runlog,
        Page_About,
    }
    for i, page in ipairs(pages) do
        page_onClick(page, i - 1)
    end

    Exit_Button.onClick = function(v)
        pcall(function()
            showToast("Cheat Mode Deactivated", 1500)
            HotPoint.show()
            showToast("Exiting Script...")
            local timeMsg = "Script Time: \n" .. os.date("%Y-%m-%d %H:%M:%S")
            showToast(timeMsg .. "\nScript Shutdown Complete")
            window.removeView(xfc)
            Lock.unUi()
        end)
        os.exit()
    end

    local function setBackgroundForPages(selectedIndex)
        for i, page in ipairs(pages) do
            local color = (i - 1 == selectedIndex) and 0xFFFF4500 or 0xFF000000 -- Black for unselected
            page.setBackgroundDrawable(getShapeBackground(color, 20))
        end
    end

    page_main.setOnPageChangeListener(PageView.OnPageChangeListener {
        onPageSelected = function(v)
            setBackgroundForPages(v)
        end
    })

    sparkle_animation(suspended_ball)
    sparkle_startanimation()

    local shimmer = Shimmer()
    local shimmerElements = {
        UserName,
        left_Title,
        center_Title,
        right_Title,
        sub_Title,
        Page_Switch,
        Page_Runlog,
        Page_About,
        GAME1,
        GAME2,
        DZZHACKS02131,
        DZZHACKS02132,
        ZLIHACKS1,
        ZLIHACKS2,
        Exit_Button,
        close_menu
    }
    for _, element in ipairs(shimmerElements) do
        shimmer.start(element)
    end

    shimmer.setRepeatCount(-1)
    shimmer.setDuration(1200)
    shimmer.setStartDelay(200)
    shimmer.setDirection(Shimmer.ANIMATION_DIRECTION_LTR)

    local tabs = {
        [1] = {
            text = "Damage Multiplier X2",
            open = function(self)
                Name = self.text
                DAMAGE()
            end,
            close = function(self)
                Name = self.text
                DAMAGE()
            end,
        },
        [2] = {
            text = "Disable Enemy",
            open = function(self)
                Name = self.text
                NPC()
            end,
            close = function(self)
                Name = self.text
                NPC()
            end,
        },
        [3] = {
            text = "Unlimited Skills",
            open = function(self)
                Name = self.text
                Skills()
            end,
            close = function(self)
                Name = self.text
                Skills()
            end,
        },
        [4] = {
            text = "Unlimited Mana",
            open = function(self)
                Name = self.text
                Mana()
            end,
            close = function(self)
                Name = self.text
                Mana()
            end,
        },
        [5] = {
            text = "Fast Attacks",
            open = function(self)
                Name = self.text
                FATK()
            end,
            close = function(self)
                Name = self.text
                FATK()
            end,
        },        
        [6] = {
            text = "Player Speed x2",
            open = function(self)
                Name = self.text
                Spd()
            end,
            close= function(self)
                Name = self.text
                Spd()
            end,
        },
        [7] = {
            text = "Direct Kill (Avoid Online like ranking)",
            open = function(self)
                Name = self.text
                KILL()
            end,
            close = function(self)
                Name = self.text
                KILL()
            end,
        },
    }

    function setUi(arr, func)
        if type(arr) ~= 'table' then
            return error('参数需是table类型')
        end

        local colorValues = {
            reflectionColor = "#FFFF4500",
            textColor = "#FFFFFF",
        }
        for i = 1, #arr do
            local value = arr[i]
            for key, colorDefault in pairs(colorValues) do
                if not value[key] then
                    value[key] = colorDefault
                end
            end

            local isChecked = false
            local trackDrawable, thumbDrawable = iOSwitch(isChecked)
            local fun = {
                LinearLayout;
                orientation = "horizontal";
                layout_width = "match_parent";
                layout_height = "wrap_content";
                padding = "5dp";
                background = getButtonBackground();
                {
                    ShimmerTextView;
                    id = "TabText";
                    text = value.text;
                    textColor = value.textColor;
                    reflectionColor = value.reflectionColor;
                    layout_marginStart = "10dp";
                    layout_marginEnd = "10dp";
                    layout_width = "0dp";
                    layout_weight = 1;
                    layout_gravity = "center_vertical";
                    textSize = "14sp";
                };
                {
                    Switch;
                    id = "switch_" .. i;
                    layout_width = "wrap_content";
                    layout_height = "wrap_content";
                    layout_marginStart = "5dp";
                    layout_marginEnd = "10dp";
                    checked = isChecked;
                    trackDrawable = trackDrawable;
                    thumbDrawable = thumbDrawable;
                    onCheckedChangeListener = function(view, isChecked)
                        local mode = isChecked and "open" or "close"
                        local func = value[mode]
                        runnable = {
                            run = function()
                                pcall(func, value)
                            end,
                        }
                        updateiOSwitch(view, isChecked)
                        log('Cheat Menu Action: ' .. value.text .. ' ' .. (isChecked and 'Activated' or 'Deactivated'), "#FF4500")
                        if isChecked then
                            toast.success("Switched On - " .. value.text .. " is Activating", 1500)
                        else
                            toast.error("Switched Off - " .. value.text .. " is Deactivating ", 1500)
                        end
                        ThreadManager.runOnMainThread(runnable)
                    end;
                };
            }
            fun = loadlayout(fun)
            CheatOptions.addView(fun)
            shimmer.start(TabText)
        end
    end
    setUi(tabs, FuncLayout)
    window.addView(xfq, mainLayoutParams)
end
Lock.Ui(invoke)
