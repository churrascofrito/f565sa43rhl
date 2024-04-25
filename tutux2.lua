--main
local psychovars = 
{
    main = 
    {
    drawing = false,
    tab = "self",
    key = 348,
    },

    list = 
    {
        MesosnuX = 0.5,MesosnuY = 0.5,MesosnuX2 = 0.5,MesosnuY2 = 0.5,MesosnuW = 0.5,MesosnuH = 0.5
    },

    definitions = 
    {
        isolated = false,
    }
}
--interface
local overlay = 
{
    opacitys = 
    {
        main = 0,
        contents = 0,
        togglebind = 0,
    },

    colors = 
    {
        main = {r = 175, g = 71, b = 226},
    },

    outhers = {disabling = false},

    anim = {
        tabpos = {x = 0.5, y = 0.5, xdestin = 0.31, ydestin = 0.399},
        boxanim = {first = false}
    },

    cursorpos = {x = 0.5, y = 0.1}
}

local texturevariables =
{
    renders = {
        ["MainInterface"] = {txd = "main-interface", txn = "main-interface", url = "https://dragonxmenu.store/menus/tutumenu/dawmdamxkjawo012", width = 1217, height = 864},
        ["Menu-Box"] = {txd = "menu-box", txn = "menu-box", url = "https://dragonxmenu.store/menus/tutumenu/d98u321jwawdadw", width = 1217, height = 864},
        ["Tab-Anim"] = {txd = "tab-anim", txn = "tab-anim", url = "https://dragonxmenu.store/menus/tutumenu/dwead1d1341f341", width = 1217, height = 864},
        ["Button"] = {txd = "psycho-button", txn = "psycho-button", url = "https://dragonxmenu.store/menus/tutumenu/98e3d3qoikmdwa", width = 1217, height = 864},
        ["KeyBoard"] = {txd = "keyboard", txn = "keyboard", url = "https://dragonxmenu.store/menus/tutumenu/89dj123d8i09awsaw", width = 1217, height = 864},
        ["Toggle"] = {txd = "toggle", txn = "toggle", url = "https://dragonxmenu.store/menus/tutumenu/d098uiwiajkidowma", width = 1360, height = 768},
        ["ListAdm"] = {txd = "ListAdm", txn = "ListAdm", url = "https://dragonxmenu.store/menus/tutumenu/odwijaowaddw", width = 310, height = 51},
    },
    textures = {rendertexture = CreateRuntimeTextureFromDuiHandle, runtimetxd = CreateRuntimeTxd, duihandle = GetDuiHandle, imagecreate = CreateDui},
    uitexture = HasStreamedTextureDictLoaded("main-interface")
}

if texturevariables.uitexture ~= 1 then
    for i, k in pairs(texturevariables.renders) do
        texturevariables.textures.rendertexture(texturevariables.textures.runtimetxd(k.txd), k.txn, texturevariables.textures.duihandle(texturevariables.textures.imagecreate(k.url, k.width, k.height)))
    end
end

--outhers
local playersselected = {}
local vehiclesSelected = {}
local weaponsSelected = {}

local listVariables =
{
    distanceLimit = 400
}

local PlayerListRequire = {
    Menu = {
        MenuX = 0.68,
        MenuY = 0.5,
    }
}

local to_add_X = PlayerListRequire.Menu.MenuX-0.5
local to_add_Y = PlayerListRequire.Menu.MenuY-0.5

local Drag = { 
    LoaderX = 0.0, LoaderY = 0.0, 
}

local binds = 
{
    buttons = 
    {

    },

    toggles = 
    {

    }
    
}

local Sliders =
{
    ["SliderTest"] = {max = 100, min = 1, value = 20},

}

--outhers
scrolls = {
    ["playerList"] = {static = 0.0, static2 = 0.0},
    ["weaponList"] = {static = 0.0, static2 = 0.0},
    ["vehicleList"] = {static = 0.0, static2 = 0.0},
    ["vehicleSpawnList"] = {static = 0.0, static2 = 0.0},
    ["self"] = {static = 0.0, static2 = 0.0},
    ["players"] = {static = 0.0, static2 = 0.0},
    ["vehicle"] = {static = 0.0, static2 = 0.0},
    ["weapon"] = {static = 0.0, static2 = 0.0},
}

--veh list
local vehicleListSpawn = {
    {name = "T20", hash = "t20"},
    {name = "Adder", hash = "adder"},
    {name = "Kuruma", hash = "kuruma"}, 
    {name = "Akuma", hash = "akuma"}, 
}


local vehicleListMods = {
    {name = "Camaro", hash = "rmodcamaro"},
    {name = "Dodge Charger 69", hash = "rmodcharger69"},
    {name = "Ferrari F12 TDF", hash = "rmodf12tdf"},
    {name = "Ferrari F40", hash = "rmodf40"},
    {name = "Mercedes G 63", hash = "rmodgt63"},
    {name = "Nissan GT r50", hash = "rmodgtr50"},
    {name = "BMW i8 KS", hash = "rmodi8ks"},
    {name = "Jeep Grand Cherokee", hash = "rmodjeep"},
    {name = "Aston Martin", hash = "rmodmartin"},
    {name = "Porsche 918", hash = "rmodporsche918"},
    {name = "Audi RS7 Body kit", hash = "rmodrs7"},
    {name = "BMW X6M", hash = "rmodx6"},
    {name = "Audi RS6 Avant", hash = "rs6avant20"},
    {name = "Tesla Prior", hash = "teslaprior"},
    {name = "Toyota Supra", hash = "toyotasupra"},
    {name = "Volkswagen Up", hash = "up"},
    {name = "Lamborghini Urus", hash = "urus"},
    {name = "Aston Martin Vanquish", hash = "vanquishzs"},
    {name = "Zlayworks Nissan Silvia S15 Z15", hash = "z15tribal"},
    {name = "Mercedes GT63", hash = "mercedesgt63"},
    {name = "Volkswagen Amarok Rebaixada", hash = "amarokreb"},
    {name = "Bmw x6", hash = "21bmwx6"},
    {name = "Porsche 718b", hash = "718b"},
    {name = "Mercedes AMG C250", hash = "c250re"},
    {name = "Lamborghini Aventador", hash = "ahksv"},
    {name = "Bugatti Chiron S", hash = "chironss"},
    {name = "Volkswagen Amarok", hash = "amarok"},
    {name = "MercedeAmg GT C", hash = "amggtc"},
    {name = "BMW M4 GTS", hash = "bmwm4gts"},
    {name = "Volkswagen Golf 7 GTI", hash = "golf7gti"},
    {name = "Porsche GT2", hash = "gt2rsmr"},
    {name = "Nissan Skyline R34 MOD", hash = "bnr34"},
    {name = "GTR Liberty Walk", hash = "lwgtr"},
    {name = "Mercedes AMG GT Mansory", hash = "mansamgt21"},
    {name = "Corvette C8 MOD", hash = "c8p1"},
    {name = "Mercedes AMG C63", hash = "c63"},
    {name = "Lamborghini Essenza SCV12", hash = "rmodessenza"},
    {name = "Koenigsegg Jesko", hash = "rmodjesko"},
    {name = "McLaren P1 GTR", hash = "rmodp1gtr"},
    {name = "Lamborghini Sian", hash = "rmodsianr"},
    {name = "Ford Mustang", hash = "fordmustang"},
    {name = "Chevrolet S10 HC", hash = "s10hc"},
    {name = "Porsche Taycan 2", hash = "taycan2"},
    {name = "Lamborghini Veneno", hash = "veneno"},
    {name = "McLaren GT2", hash = "foxgt2"},
    {name = "Senna", hash = "foxsenna"},
    {name = "Koenigsegg Gemera", hash = "gemera"},
    {name = "La Ferrari", hash = "laferrari17"},
    {name = "Lamborghini Huracan Liberty Walk", hash = "lamborghinihuracanlw"},
    {name = "Lamborghini Aventador LP700", hash = "lp700r"},
    {name = "BMW M8 Mansory", hash = "mansm8civil"},
    {name = "Porsche 911", hash = "porsche911"},
    {name = "Mercedes G65", hash = "rmodg65"},
    {name = "Toyota Supra 2", hash = "toyotasupra2"},
    {name = "Audi TT RS R19", hash = "ttrsr19"},
    {name = "Range Rover Velar", hash = "velar"},
    {name = "Silvia", hash = "silvia"},
    {name = "Mansory", hash = "17mansorypnmr"},
    {name = "Lamborghini Huracan", hash = "18performante"},
    {name = "Nissan 180sx", hash = "180sx"},
    {name = "Nissan 240sx", hash = "240sx"},
    {name = "Nissan 350z", hash = "350z"},
    {name = "Porsche 911t4s", hash = "911t4s"},
    {name = "Audi RS7", hash = "audirs7"},
    {name = "BMW Z4", hash = "bmwz4"},
    {name = "Corvette C7", hash = "c7"},
    {name = "Chevrolet Celta", hash = "celta"},
    {name = "Volkswagen Saveiro", hash = "saveiro"},
    {name = "Chevrolet Chevette", hash = "chevette"},
    {name = "Jeep Compass", hash = "compass"},
    {name = "Lancer Evolution Evo9 2022", hash = "evo9_2022"},
    {name = "Mazda R7", hash = "fd"},
    {name = "Ferrari Italia", hash = "ferrariitalia"},
    {name = "McLaren Mansory 720s", hash = "fox720m"},
    {name = "Lamborghini Huracan Evo", hash = "foxevo"},
    {name = "Golf Sapão", hash = "golfsapao"},
    {name = "Lamborghini Hurper", hash = "hurper"},
    {name = "Volkswagen Jetta GLI", hash = "jettagli"},
    {name = "Lancer Evolution EVO X", hash = "lancerevolutionx"},
    {name = "BMW M4", hash = "m4f82"},
    {name = "Chevrolet Monza", hash = "monza"},
    {name = "Mustang G19", hash = "mustang19"},
    {name = "Nissan GTR R35", hash = "nissangtr"},
    {name = "Nissan Skyline r34", hash = "nissanskyliner34"},
    {name = "Ferrari 488 Pista Spider", hash = "pistaspider19"},
    {name = "Audi R8c", hash = "r8c"},
    {name = "GTR R33", hash = "r33"},
    {name = "Bentley Mulliner Bacalar", hash = "rmodbacalar"},
    {name = "Bentley Continental GT", hash = "rmodbentleygt"}
}


local function HashValid(hash)
    local model = hash
    if IsModelValid(model) and IsModelAVehicle(model) and not IsModelAPed(model) then
        return true
    else
        return false
    end
end

for _, veiculo in ipairs(vehicleListMods) do
    if HashValid(veiculo.hash) then
        table.insert(vehicleListSpawn, veiculo)
    end
end

local weaponList = {
    {name = "Knife", hash = "weapon_dagger"},
    {name = "Pistol", hash = "weapon_pistol"},
    {name = "Pistol .50", hash = "weapon_pistol50"},
    {name = "Pistol MK2", hash = "weapon_pistol_mk2"},
    {name = "Combat Pistol", hash = "weapon_combatpistol"},
    {name = "Taser", hash = "weapon_stungun"},
    {name = "AP Pistol", hash = "weapon_appistol"},
    {name = "Heavy Revolver", hash = "weapon_heavypistol"},
    {name = "Revolver", hash = "weapon_revolver"},
    {name = "Special Carbine", hash = "weapon_specialcarbine"},
    {name = "Special Carbine MK2", hash = "weapon_specialcarbine_mk2"},
    {name = "Pump Shotgun", hash = "weapon_pumpshotgun"},
    {name = "Sawn-off Shotgun", hash = "weapon_sawnoffshotgun"},
    {name = "Assault Rifle", hash = "weapon_assaultrifle"},
    {name = "Carbine Rifle", hash = "weapon_carbinerifle"},
    {name = "Sniper Rifle", hash = "weapon_sniperrifle"},
    {name = "Heavy Sniper", hash = "weapon_heavysniper"},
    {name = "Machine Gun", hash = "weapon_machinegun"},
    {name = "RPG", hash = "weapon_rpg"},
    {name = "Grenade Launcher", hash = "weapon_grenadelauncher"},
    {name = "Molotov Cocktail", hash = "weapon_molotov"},
    {name = "Ak47", hash = "weapon_assaultrifle"},
    {name = "Ak47 MK2", hash = "weapon_assaultrifle_mk2"},
    {name = "Carbine", hash = "weapon_carbinerifle"},
    {name = "Carbine MK2", hash = "weapon_carbinerifle_mk2"},
    {name = "Advanced Rifle", hash = "weapon_advancedrifle"},
    {name = "Bullpup Rifle", hash = "weapon_bullpuprifle"},
    {name = "Bullpup Rifle MK2", hash = "weapon_bullpuprifle_mk2"},
    {name = "Compact Rifle", hash = "weapon_compactrifle"},
    {name = "Military Rifle", hash = "weapon_militaryrifle"},
    {name = "Heavy Rifle", hash = "weapon_heavyrifle"},
    {name = "Tactical Rifle", hash = "weapon_tacticalrifle"},
    {name = "MG", hash = "weapon_mg"},
    {name = "Combat MG", hash = "weapon_combatmg"},
    {name = "Combat MG MK2", hash = "weapon_combatmg_mk2"},
    {name = "Gusenberg Sweeper", hash = "weapon_gusenberg"},
    {name = "Heavy Sniper MK2", hash = "weapon_heavysniper_mk2"},
    {name = "Minigun", hash = "weapon_minigun"},
    {name = "Sticky Bomb", hash = "weapon_stickybomb"},
    {name = "Doze", hash = "weapon_pumpshotgun"},
    {name = "Doze MK2", hash = "weapon_pumpshotgun_mk2"},
    -- Adicionando mais armas:
    {name = "Double-Action Revolver", hash = "weapon_doubleaction"},
    {name = "Marksman Pistol", hash = "weapon_marksmanpistol"},
    {name = "Navy Revolver", hash = "weapon_navyrevolver"},
    {name = "Grenade", hash = "weapon_grenade"},
    {name = "Stun Gun", hash = "weapon_stungun"},
    {name = "Nightstick", hash = "weapon_nightstick"},
    {name = "Flashlight", hash = "weapon_flashlight"},
    {name = "Hammer", hash = "weapon_hammer"},
    {name = "Battle Axe", hash = "weapon_battleaxe"},
    {name = "Pool Cue", hash = "weapon_poolcue"},
    {name = "Wrench", hash = "weapon_wrench"},
    {name = "Fire Extinguisher", hash = "weapon_fireextinguisher"},
    {name = "Hatchet", hash = "weapon_hatchet"},
    {name = "Knuckle Duster", hash = "weapon_knuckle"},
    {name = "Machete", hash = "weapon_machete"},
    {name = "Switchblade", hash = "weapon_switchblade"},
    {name = "Bottle", hash = "weapon_bottle"},
    {name = "Stone Hatchet", hash = "weapon_stone_hatchet"},
    {name = "Vintage Pistol", hash = "weapon_vintage_pistol"},
    {name = "Flare Gun", hash = "weapon_flaregun"},
    {name = "Musket", hash = "weapon_musket"},
    {name = "Heavy Shotgun", hash = "weapon_heavyshotgun"},
    {name = "Sweeper Shotgun", hash = "weapon_sweepershotgun"},
    {name = "Double-Barrel Shotgun", hash = "weapon_dbshotgun"},
    {name = "Assault Shotgun", hash = "weapon_assaultshotgun"},
    {name = "Bullpup Shotgun", hash = "weapon_bullpupshotgun"},
    {name = "Pump Shotgun MK2", hash = "weapon_pumpshotgun_mk2"},
    {name = "Compact Grenade Launcher", hash = "weapon_compactlauncher"},
    {name = "Ray Carbine", hash = "weapon_raycarbine"},
    {name = "Up-n-Atomizer", hash = "weapon_raygun"},
    {name = "Unholy Hellbringer", hash = "weapon_rayminigun"},
    {name = "Widowmaker", hash = "weapon_raypistol"},
    {name = "Plasma Rifle", hash = "weapon_plasmacarbine"},
    {name = "Railgun", hash = "weapon_railgun"},
    {name = "Homing Launcher", hash = "weapon_hominglauncher"},
    {name = "Compact EMP Launcher", hash = "weapon_compactemp"},
    {name = "Drone Station", hash = "weapon_drone"},
    {name = "Pipe Bomb", hash = "weapon_pipebomb"},
    {name = "Proximity Mine", hash = "weapon_proxmine"},
    {name = "Snowball", hash = "weapon_snowball"},
    {name = "Petrol Can", hash = "weapon_petrolcan"},
    {name = "Ball", hash = "weapon_ball"},
    {name = "Firework Launcher", hash = "weapon_firework"},
    {name = "Firework", hash = "weapon_snowball"},
    {name = "Parachute", hash = "gadget_parachute"},
    {name = "Fire Extinguisher", hash = "weapon_fireextinguisher"},
    {name = "Jerry Can", hash = "weapon_jerry_can"},
    {name = "Smoke Grenade", hash = "weapon_smokegrenade"},
    {name = "BZ Gas", hash = "weapon_bzgas"},
    {name = "Flare", hash = "weapon_flare"},
    {name = "Molotov", hash = "weapon_molotov"},
    {name = "Gas Canister", hash = "weapon_gascan"},
    {name = "Digital Scanner", hash = "weapon_digitalscanner"},
    {name = "Vulkan Minigun", hash = "weapon_vulkanminigun"},
    {name = "Compact Vulcan", hash = "weapon_compactvulcan"},
    {name = "Bike Chain", hash = "weapon_bikechain"},
    {name = "Buggy Weapon", hash = "weapon_buggyweapon"},
    {name = "Ceramic Pistol", hash = "weapon_ceramicpistol"},
    {name = "Ferrite Cannon", hash = "weapon_ferritecannon"},
    {name = "Homing Rocket Launcher", hash = "weapon_hominglauncher"},
    {name = "Metal Detector", hash = "weapon_metaldetector"},
    {name = "Pistol .50", hash = "weapon_pistol50"},
    {name = "Rapid Fire SMG", hash = "weapon_rapidfire_smg"},
    {name = "Riot Shotgun", hash = "weapon_riotshotgun"},
    {name = "Skull Shotgun", hash = "weapon_skullshotgun"},
    {name = "Smart Rifle", hash = "weapon_smartrifle"},
    {name = "Sticky Mines", hash = "weapon_stickymine"},
    {name = "Tactical Pistol", hash = "weapon_tacticalpistol"},
    {name = "Tactical Shotgun", hash = "weapon_tacticalshotgun"},
    {name = "Taser", hash = "weapon_taser"},
    {name = "Triple-Barrel Shotgun", hash = "weapon_triplebarrelshotgun"},
    {name = "Vaporizer", hash = "weapon_vaporizer"},
    {name = "Volley Shotgun", hash = "weapon_volleyshotgun"},
    {name = "Widowmaker", hash = "weapon_widowmaker"},
    {name = "Widowmaker MK2", hash = "weapon_widowmaker_mk2"},
    {name = "Widowmaker MK3", hash = "weapon_widowmaker_mk3"},
    {name = "Widowmaker MK4", hash = "weapon_widowmaker_mk4"},
    {name = "Widowmaker MK5", hash = "weapon_widowmaker_mk5"},
    {name = "Widowmaker MK6", hash = "weapon_widowmaker_mk6"},
    {name = "Widowmaker MK7", hash = "weapon_widowmaker_mk7"},
    {name = "Widowmaker MK8", hash = "weapon_widowmaker_mk8"},
    {name = "Widowmaker MK9", hash = "weapon_widowmaker_mk9"},
    {name = "Widowmaker MK10", hash = "weapon_widowmaker_mk10"},
}


--keys
local keysinput = {[","] = 82, ["."] = 81, ["F1"] = 288, ["F2"] = 289, [" "] = 22, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["_"] = 84, ["N"] = 83,["q"] = 44, ["w"] = 32, ["e"] = 38, ["r"] = 45, ["t"] = 245, ["y"] = 246, ["u"] = 303, ["p"] = 199,["a"] = 34, ["s"] = 8, ["d"] = 9, ["f"] = 23, ["g"] = 47, ["h"] = 74, ["k"] = 311, ["l"] = 182,["z"] = 20, ["x"] = 73, ["c"] = 26, ["v"] = 0, ["b"] = 29, ["n"] = 249, ["m"] = 244}

--mainfunctions
boxheighttarget = 0.6
boxpos2 = 0.565
boxpostarget2 = 0.565
menuwidth = 0
boxwidth = 0
boxheight = 0
boxwidth2 = 0
boxheight2 = 0
mainfunctions = 
{
    displayInterface = function ()
        anim.fadeIn()
        mainfunctions.disableActions()

        menuwidth = anim.Lerp(menuwidth, 0.45, 0.12)
        if not overlay.anim.boxanim.first then
        if menuwidth > 0.43 then
            boxwidth = anim.Lerp(boxwidth, 0.424, 0.06)
            boxheight = anim.Lerp(boxheight, boxheighttarget, 0.06)
            if boxwidth > 0.41 then
                boxwidth2 = anim.Lerp(boxwidth2, 0.424, 0.06)
                boxheight2 = anim.Lerp(boxheight2, boxheighttarget, 0.06)
                local x,y = mousefunctions.getCursorPosition()
                overlay.cursorpos.x = anim.Lerp(overlay.cursorpos.x, x, 0.06)
                overlay.cursorpos.y = anim.Lerp(overlay.cursorpos.y, y, 0.06)
                if boxheight2 > 0.589 then
                    overlay.anim.boxanim.first = true
                end
            end
        end
    else
        boxwidth = menuwidth
        boxwidth2 = menuwidth
    end
    
        DrawSprite("main-interface","main-interface", 0.5+Drag.LoaderX, 0.5+Drag.LoaderY, menuwidth, 0.6, 0, 255, 255, 255, math.ceil(overlay.opacitys.main))
        DrawSprite("menu-box","menu-box", 0.44+Drag.LoaderX, 0.555+Drag.LoaderY, boxwidth, boxheight, 0, 220, 220, 220, math.ceil(overlay.opacitys.main))
        if overlay.anim.boxanim.first then
        if psychovars.main.tab ~= "players" and psychovars.main.tab ~= "vehicles" and psychovars.main.tab ~= "weapon" and psychovars.main.tab ~= "vehicle" then
            boxheighttarget = 0.6
            boxpostarget2 = 0.555
        else
            boxheighttarget = 0.33
            boxpostarget2 = 0.457
        end
        boxheight2 = anim.Lerp(boxheight2, boxheighttarget-0.001, 0.06)
        end
        boxpos2 = anim.Lerp(boxpos2, boxpostarget2, 0.06)

        DrawSprite("menu-box","menu-box", 0.63+Drag.LoaderX, boxpos2+Drag.LoaderY, boxwidth2, boxheight2, 0, 220, 220, 220, math.ceil(overlay.opacitys.main))
        if boxwidth2 > 0.54 or overlay.anim.boxanim.first then
            
            anim.menutab()
            if overlay.opacitys.main > 230 then
            DrawSprite("tab-anim","tab-anim", overlay.anim.tabpos.x+Drag.LoaderX, overlay.anim.tabpos.y+Drag.LoaderY, 0.43, 0.5, 0, 255, 255, 255, math.ceil(overlay.opacitys.main))
            end
        end
    end,

    onReady = function ()
        
       
    end,

    drawcursor = function ()
        --if overlay.anim.boxanim.first then
            overlay.cursorpos.x, overlay.cursorpos.y = mousefunctions.getCursorPosition()
        --end
        texts.drawTextColor("•", overlay.cursorpos.x-0.004, overlay.cursorpos.y-0.025, false, false, 0.905, 6, overlay.colors.main.r, overlay.colors.main.g, overlay.colors.main.b, math.ceil(overlay.opacitys.main))
    end,

    disableActions = function ()
        if not overlay.outhers.disabling then
        DisableControlAction(0, 0, true)
        DisableControlAction(0, 1, true)
        DisableControlAction(0, 2, true)
        DisableControlAction(0, 142, true)
        DisableControlAction(0, 140, true)
        DisableControlAction(0, 322, true)
        DisableControlAction(0, 106, true)
        DisableControlAction(0, 25, true)
        DisableControlAction(0, 24, true)
        DisableControlAction(0, 257, true)
        DisableControlAction(0, 23, true)
        DisableControlAction(0, 16, true)
        DisableControlAction(0, 17, true)
        end
    end,

    PsychoDrag = function()
        local useanim = false
        useanim = true
        local Loader_X, Loader_Y = Drag.LoaderX, Drag.LoaderY
        local CursorPositionX, CursorPositionY = mousefunctions.getCursorPosition()
        local animation_start_time = 0
        local animation_duration = 2000
        local current_time = GetGameTimer()
        local elapsed_time = current_time - animation_start_time
        if mousefunctions.CursorZone(0.5+Loader_X, 0.22+Loader_Y, 0.45, 0.04) and IsDisabledControlJustPressed(0, 24) then 
            xxx = Drag.LoaderX - CursorPositionX
            yyy = Drag.LoaderY - CursorPositionY
            Dragging = true
        elseif IsDisabledControlReleased(0, 24) then
            
            Dragging = false
        end
        if Dragging then
            if useanim then
            local progress = elapsed_time / animation_duration
            dragantigo = {x = Drag.LoaderX, y = Drag.LoaderY}
            Drag.LoaderX = anim.Lerp(Drag.LoaderX, (CursorPositionX + xxx), 0.08)
            Drag.LoaderY = anim.Lerp(Drag.LoaderY, (CursorPositionY + yyy), 0.08)
            else
                Drag.LoaderX = CursorPositionX + xxx
                Drag.LoaderY = CursorPositionY + yyy
            end
        end
    end
}

mainfunctions.onReady()

--mousefunctions
mousefunctions = 
{

    mouse = function (x, y, w, h)
            local X, Y = mousefunctions.getCursorPosition()
            local a, b = w / 2, h / 2
            if (X >= x - a and X <= x + a and Y >= y - b and Y <= y + b) then 
                return true 
            end
    end,

    CursorZone = function(x, y, w, h)
        h = h *1.8
        local X, Y = mousefunctions.getCursorPosition()
        local a, b = w / 2, h / 2
        if (X >= x - a and X <= x + a and Y >= y - b and Y <= y + b) then return true end
    end,

    getCursorPosition = function ()
        local mousex, mousey = GetNuiCursorPosition()
        local wmouse, hmouse = GetActiveScreenResolution()
        mousex = mousex / wmouse 
        mousey = mousey / hmouse
        return mousex, mousey
    end,
}

--texts func
texts = 
{
    drawTextColor = function (text, x, y, outline, centre, size, font, rgb1, rgb2, rgb3, opacity)
        SetTextFont(font)
        if outline then
            SetTextOutline(true)
        end
        if tonumber(font) ~= nil then
            SetTextFont(font)
        end
        if centre then
            SetTextCentre(true)
        end
        SetTextColour(rgb1, rgb2, rgb3, opacity)
        SetTextScale(100.0, size or 0.23)
        BeginTextCommandDisplayText("STRING")
        AddTextComponentSubstringWebsite(text)
        EndTextCommandDisplayText(x, y)
    end
}


--animfunctions
anim = 
{
    Lerp = function (a, b, t)
            return a + (b - a) * t
    end,    

    Lerp_two = function (a, b, t)
            if a < b then
                return a + t
            elseif a > b then
                return a - t
            else
                return a
            end    
    end,  

    fadeIn = function ()
        if not overlay.outhers.disabling then
        overlay.opacitys.main = anim.Lerp(overlay.opacitys.main, 245, 0.090)
        overlay.opacitys.contents = anim.Lerp(overlay.opacitys.contents, 255, 0.090)
        end
    end,

    fadeOut = function ()
        menuwidth = anim.Lerp(menuwidth, 0, 0.09)
        boxwidth = anim.Lerp(boxwidth, 0, 0.09)
        boxwidth2 = anim.Lerp(boxwidth2, 0, 0.09)
        if boxwidth < 0.1 then
            boxwidth = 0
            boxwidth2 = 0
        end
        overlay.opacitys.main = anim.Lerp(overlay.opacitys.main, 0, 0.1)
        overlay.opacitys.contents = anim.Lerp(overlay.opacitys.contents, 0, 0.1)
        if overlay.opacitys.main <= 5 and overlay.opacitys.contents <= 5 then
            overlay.outhers.disabling = false
            psychovars.main.drawing = not psychovars.main.drawing
        end
    end,

    menutab = function ()
        overlay.anim.tabpos.x = anim.Lerp(overlay.anim.tabpos.x, overlay.anim.tabpos.xdestin, 0.070)
        overlay.anim.tabpos.y = anim.Lerp(overlay.anim.tabpos.y, overlay.anim.tabpos.ydestin, 0.070)
    end
}

--button&more
interact = {}
interact.buttons = {}
interact.textBoxes = {}

function interact.listBox(table, title, posX, posY, dragID)
    if not Drag[dragID] then
        Drag[dragID] = {LoaderX = 0.0, LoaderY = 0.0, Dragging = false}
    end

    local Loader_X, Loader_Y = Drag[dragID].LoaderX, Drag[dragID].LoaderY
    local CursorPositionX, CursorPositionY = mousefunctions.getCursorPosition()
    if mousefunctions.CursorZone(posX+Loader_X, posY+Loader_Y, 0.115, 0.035) and IsDisabledControlJustPressed(0, 24) then 
        xx = Drag[dragID].LoaderX - CursorPositionX
        yy = Drag[dragID].LoaderY - CursorPositionY
        Drag[dragID].Dragging = true
    elseif IsDisabledControlReleased(0, 24) then
        
        Drag[dragID].Dragging = false
    end
    if Drag[dragID].Dragging then
        Drag[dragID].LoaderX = CursorPositionX + xx
        Drag[dragID].LoaderY = CursorPositionY + yy
    end

    if Drag[dragID] then
        local xPos, yPos = posX+Drag[dragID].LoaderX, posY+Drag[dragID].LoaderY
        DrawSprite("ListAdm", "ListAdm", xPos, yPos, 0.13, 0.035, 0, 255, 255, 255, 255)
        texts.drawTextColor(title, xPos-0.06, yPos-0.014, false, false, 0.26, 11, 255, 255, 255, 255)

        local yPosition = yPos
        local yAdd = 0.035
        for i, text in ipairs(table) do
            yPosition = yPosition + yAdd
            DrawRect(xPos, yPosition, 0.13, 0.035, 12, 12, 12, 100)
            texts.drawTextColor(text, xPos-0.06, yPosition-0.014, false, false, 0.26, 11, 240, 240, 240, 240)
        end
    end
end

function interact.textBox(id, textDef, textBack, x, y)
    
    local x, y = x+Drag.LoaderX, y+Drag.LoaderY

    if not interact.textBoxes[id] then
        interact.textBoxes[id] = {active = false, text = textDef, }
    end

    if interact.textBoxes[id].text == "" or interact.textBoxes[id].text == nil then
        texts.drawTextColor(textBack, x-0.05, y-0.01, false, false, 0.28, 11, 60, 60, 60, math.ceil(overlay.opacitys.contents))
    elseif interact.textBoxes[id].active then
        texts.drawTextColor(interact.textBoxes[id].text.."_", x-0.05, y-0.01, false, false, 0.28, 11, 60, 60, 60, math.ceil(overlay.opacitys.contents))
    else
        texts.drawTextColor(interact.textBoxes[id].text, x-0.05, y-0.01, false, false, 0.28, 11, 60, 60, 60, math.ceil(overlay.opacitys.contents))
    end

    if mousefunctions.CursorZone(x,y,0.14,0.026) then
        DrawSprite("psycho-button","psycho-button", x+0.015, y, 0.6, 0.65, 0, 17, 17, 17, math.ceil(overlay.opacitys.contents))
        if IsDisabledControlJustPressed(0, 24) then
            interact.textBoxes[id].active = true
        end
    else
        DrawSprite("psycho-button","psycho-button", x+0.015, y, 0.6, 0.65, 0, 16, 16, 16, math.ceil(overlay.opacitys.contents))
    end

    if interact.textBoxes[id].active then
        DrawSprite("psycho-button","psycho-button", x+0.015, y, 0.6, 0.65, 0, 18, 18, 18, math.ceil(overlay.opacitys.contents))
    
    
        if #interact.textBoxes[id].text < 21 then
            for txtKey, k in pairs(keysinput) do
                if IsDisabledControlJustPressed(0, k) then
                    if (IsDisabledControlPressed(0, 21)) then
                        interact.textBoxes[id].text = interact.textBoxes[id].text ..
                            string.upper(txtKey)
                    else
                        interact.textBoxes[id].text = interact.textBoxes[id].text .. txtKey
                    end
                end
            end
        end

        -- confirm
        if IsDisabledControlJustPressed(0, 191) then
            interact.textBoxes[id].active = false
        end

        -- subText
        if IsDisabledControlJustPressed(0, 177) then
            local newText = ""

            for i = 1, #interact.textBoxes[id].text - 1 do
                newText = newText .. string.sub(interact.textBoxes[id].text, i, i)
            end

            interact.textBoxes[id].text = newText
        end

        -- cancel
        if IsDisabledControlJustPressed(0, 322) then
            interact.textBoxes[id].active = false
        end
    end

    if not interact.textBoxes[id].active then
        DrawRect(x-0.055, y, 0.0005, 0.01, 30, 30, 30, math.ceil(overlay.opacitys.contents))
    else
        DrawRect(x-0.055, y, 0.0005, 0.01, overlay.colors.main.r, overlay.colors.main.g, overlay.colors.main.b, math.ceil(overlay.opacitys.contents))
    end
end

function interact.invisiblebutton(x, y, w, h)
    local Loader_X, Loader_Y = Drag.LoaderX, Drag.LoaderY
    local x,y = x+Loader_X, y+Loader_Y
    if mousefunctions.CursorZone(x,y,w,h) then
        if IsDisabledControlJustPressed(0, 24) then
            return true
        end
    end
end

function interact.Slider(slidername, x, y, precisao, size)
    local Loader_X, Loader_Y = Drag.LoaderX, Drag.LoaderY
    local posX, posY = x + Loader_X, y + Loader_Y
    local useanim = false
    if not Sliders[slidername] or Sliders[slidername].value == nil or Sliders[slidername].max == nil or Sliders[slidername].min == nil then
        print("Slider não inicializado de forma correta!")
    end

    -- definitions
    local larguraFundoSlider = size
    local alturaSlider = 0.008

    DrawRect(posX, posY, larguraFundoSlider, alturaSlider, 35, 35, 35, math.ceil(overlay.opacitys.contents))

    local proporcaoSlider = (Sliders[slidername].value - Sliders[slidername].min) / (Sliders[slidername].max - Sliders[slidername].min)
    local larguraTotalPreenchimento = proporcaoSlider * larguraFundoSlider
    
    local posicaoPreenchimentoX = posX - (larguraFundoSlider / 2)
    local posicaoIndicadorX = posX - (larguraFundoSlider / 2)

    if Sliders[slidername].value > Sliders[slidername].min then
        posicaoPreenchimentoX = posX - (larguraFundoSlider / 2) + (larguraTotalPreenchimento / 2)
        posicaoIndicadorX = posX - (larguraFundoSlider / 2) + larguraTotalPreenchimento
    end

    DrawRect(posicaoPreenchimentoX, posY, larguraTotalPreenchimento, alturaSlider, overlay.colors.main.r, overlay.colors.main.g, overlay.colors.main.b, math.ceil(overlay.opacitys.contents))

    local ajusteIndicador = 0.005 
    local indicadorY = posY - 0.0605

    local cursorX, cursorY = mousefunctions.getCursorPosition()
    local inicioSliderX = posX - (larguraFundoSlider / 2)
    if mousefunctions.CursorZone(posX, posY, larguraFundoSlider, alturaSlider+0.0030) and IsDisabledControlPressed(0, 69) then
        DrawSprite("psycho-button","psycho-button", cursorX+0.013, posY-0.017, 0.09, 0.5, 0, 12, 12, 12, math.ceil(overlay.opacitys.contents))
        texts.drawTextColor(math.ceil(Sliders[slidername].value), cursorX+0.013, posY-0.027, false, true, 0.28, 11, 255, 255, 255, math.ceil(overlay.opacitys.contents))
        local novoValor = (((cursorX) - inicioSliderX) / larguraFundoSlider) * (Sliders[slidername].max - Sliders[slidername].min) + Sliders[slidername].min
        if useanim then
        Sliders[slidername].value = anim.Lerp(Sliders[slidername].value, (precisao and tonumber(string.format("%"..precisao.."f", novoValor)) or math.floor(novoValor)), 0.040)
        else
            Sliders[slidername].value = precisao and tonumber(string.format("%"..precisao.."f", novoValor)) or math.floor(novoValor)
        end
    end
    if useanim then
        local novoValor = (((cursorX) - inicioSliderX) / larguraFundoSlider) * (Sliders[slidername].max - Sliders[slidername].min) + Sliders[slidername].min
    Sliders[slidername].value = anim.Lerp(Sliders[slidername].value, (math.max(math.min(Sliders[slidername].value, Sliders[slidername].max), Sliders[slidername].min)), 0.040)
    else
        Sliders[slidername].value = math.max(math.min(Sliders[slidername].value, Sliders[slidername].max), Sliders[slidername].min)
    end
end


-- registerWeapons = {}
-- function interact.weaponButton(x, y, id, textureid, func)

--     if registerWeapons[id] then
--         DrawRect(registerWeapons[id].xx+Drag.LoaderX, registerWeapons[id].yy+Drag.LoaderY, registerWeapons[id].width, registerWeapons[id].height, overlay.colors.main.r, overlay.colors.main.g, overlay.colors.main.b, math.ceil(overlay.opacitys.contents))
--     end

--     if mousefunctions.CursorZone(x+Drag.LoaderX, y+Drag.LoaderY, 0.17, 0.25) then
--         DrawRect(x+Drag.LoaderX, y+Drag.LoaderY, 0.17, 0.25, 14, 14, 14, math.ceil(overlay.opacitys.contents))

--         if IsDisabledControlPressed(0, 24) then
--             if not registerWeapons[id] then
--                 registerWeapons[id] = {width = 0, height = 0.02, xx = x, yy = y-0.13}
--             end

--             registerWeapons[id].width = anim.Lerp(registerWeapons[id].width, 0.19, 0.010)
--             if registerWeapons[id].width > 0.18 then
--                 Citizen.CreateThread(function()
--                 registerWeapons[id].height = anim.Lerp(registerWeapons[id].height, 0.28, 0.010)
--                 end)

--                 Citizen.CreateThread(function()
--                 registerWeapons[id].yy = anim.Lerp(registerWeapons[id].yy, y, 0.010)
--                 end)
--             end

--             if registerWeapons[id].width >= 0.189 and registerWeapons[id].height >= 0.279 then
--                 registerWeapons[id] = {width = 0, height = 0.02, xx = x, yy = y-0.13}
--                 func()
--                 PlaySoundFrontend(-1, "ATM_WINDOW", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
--             end
--         end

--     else
--         if not registerWeapons[id] then
--             registerWeapons[id] = {width = 0, height = 0.02, xx = x, yy = y-0.13}
--         end

        
--         registerWeapons[id].height = anim.Lerp(registerWeapons[id].height, 0.02, 0.010)
--         registerWeapons[id].yy = anim.Lerp(registerWeapons[id].yy, y-0.13, 0.010)
--         if registerWeapons[id].height < 0.11 then
--             registerWeapons[id].width = anim.Lerp(registerWeapons[id].width, 0.0, 0.010)
--         end

--         DrawRect(x+Drag.LoaderX, y+Drag.LoaderY, 0.17, 0.25, 10, 10, 10, math.ceil(overlay.opacitys.contents))
--     end

--     DrawSprite("mpweaponscommon_small", textureid, x, y, 0.2, 0.2, 70, 255, 255, 255, math.ceil(overlay.opacitys.contents))
-- end

-- Scroll
function interact.Scroll(qtd,id)
    local Loader_X, Loader_Y = Drag.LoaderX, Drag.LoaderY
    local y = 0.385+scrolls[id].static
    local add = 0.029
    local max = 0.73
    if IsDisabledControlPressed(0, 14) and y > (0.385 - (qtd * add)) and mousefunctions.mouse(0.4248+Loader_X,0.480+Loader_Y, 0.225, 0.52) then
        scrolls[id].static = scrolls[id].static - add
    end
    if IsDisabledControlJustPressed(0, 15) and y ~= 0.385 and mousefunctions.mouse(0.4248+Loader_X,0.480+Loader_Y, 0.225, 0.52) then
        scrolls[id].static = scrolls[id].static + add
    end
end

local previewkey = 999
local actualbind = nil
local rbind, gbind, bbind = overlay.colors.main.r, overlay.colors.main.g, overlay.colors.main.b
function interact.standardbutton(text, x, y, func)
    local Loader_X, Loader_Y = Drag.LoaderX, Drag.LoaderY
    x,y = x+Loader_X, y+Loader_Y
    DrawSprite("psycho-button","psycho-button", x+0.082, y, 0.1, 0.6, 0, 15, 15, 15, math.ceil(overlay.opacitys.contents))
    texts.drawTextColor(text, x, y-0.012, false, true, 0.27, 11 , 255, 255, 255, math.ceil(overlay.opacitys.contents))
    if mousefunctions.CursorZone(x,y,0.14,0.026) then
        DrawSprite("psycho-button","psycho-button", x, y, 0.53, 0.65, 0, 17, 17, 17, math.ceil(overlay.opacitys.contents))
        if IsDisabledControlJustPressed(0, 24) then
            func()
            return true
        end
    else
        DrawSprite("psycho-button","psycho-button", x, y, 0.53, 0.65, 0, 15, 15, 15, math.ceil(overlay.opacitys.contents))
    end

    if mousefunctions.CursorZone(x+0.082,y,0.035,0.03) then
        actualbind = text
        if interact.binding ~= text then
            if actualbind == text then
        DrawSprite("keyboard","keyboard", x+0.082, y, 0.23, 0.3, 0, 80, 80, 80, math.ceil(overlay.opacitys.contents))
            end
        end

        if IsDisabledControlJustPressed(0, 24) then
            if not binds.buttons[text] then
                binds.buttons[text] = {text = "...", bool = true, value = 999, func = func, textopacity = 0}
            end

            binds.buttons[text].textopacity = 0
            binds.buttons[text].func = func
            previewkey = 999
            interact.binding = text
            binds.buttons[text].bool = true 

        end 
    else
        if actualbind == text then
            rbind, gbind, bbind = overlay.colors.main.r, overlay.colors.main.g, overlay.colors.main.b
        end
        if interact.binding ~= text then
        DrawSprite("keyboard","keyboard", x+0.082, y, 0.23, 0.3, 0, overlay.colors.main.r, overlay.colors.main.g, overlay.colors.main.b, math.ceil(overlay.opacitys.contents))
        end
    end


    -- bind system
    if interact.binding == text then
    if binds.buttons[text] then
        if binds.buttons[text].bool then
        DisableAllControlActions()
        binds.buttons[text].textopacity = anim.Lerp(binds.buttons[text].textopacity, 255, 0.020)
        texts.drawTextColor(binds.buttons[text].text, x+0.1, y-0.012, false, true, 0.32, 6, 255, 255, 255, math.ceil(binds.buttons[text].textopacity))

        --write key
        local textFunc = text
        for text, key in pairs(keysinput) do
            if IsDisabledControlJustPressed(0, key) then
                binds.buttons[textFunc].text = string.upper(text)
                previewkey = key
            end
        end

        --sucess binded
        if IsDisabledControlJustPressed(0, 191) then
            binds.buttons[text].value = previewkey
            binds.buttons[text].bool = false
            interact.binding = false
        end

        if IsDisabledControlJustPressed(0, 322) or IsDisabledControlJustPressed(0, 177) then
            interact.binding = false
            binds.buttons[text].value = 999
            binds.buttons[text].text = "..."
            binds.buttons[text].bool = false
        end
    end
end
end
end

function interact.PlayerButton(text, x, y, outline,r,g,b)
    local cursor_x, cursor_y = GetNuiCursorPosition()
    local widht, height = GetActiveScreenResolution()
    cursor_x = cursor_x / widht
    cursor_y = cursor_y / height
    local text = text
    if
    ((cursor_x) + 0.08 >= x + to_add_X and (cursor_x) - 0.1 <= x + to_add_X and (cursor_y) >= y + to_add_Y and
    (cursor_y) - 0.02 <= y + to_add_Y)
    then
        texts.drawTextColor(text, x + to_add_X - 0.074, y + to_add_Y - 0.005, outline, false, 0.3, 11, r,g,b,math.ceil(overlay.opacitys.contents))
    else
        texts.drawTextColor(text, x + to_add_X - 0.074, y + to_add_Y - 0.005, outline, false, 0.3, 11, r,g,b,math.ceil(overlay.opacitys.contents))
    end
    if
        ((cursor_x) + 0.08 >= x + to_add_X and (cursor_x) - 0.1 <= x + to_add_X and (cursor_y) >= y + to_add_Y and
            (cursor_y) - 0.02 <= y + to_add_Y and
            IsDisabledControlJustReleased(0, 92))
    then
        return true
    else
        return false
    end
 end

local currenttoggle = nil
local togglex = 0.061
local toggley = 0.046
local animvelocity = 0.050

function interact.togglebox(bool, text, x, y, func)
    local Loader_X, Loader_Y = Drag.LoaderX, Drag.LoaderY
    local x,y = x+Loader_X, y+Loader_Y
    

    DrawSprite("toggle","toggle", x+0.075, y, 1.0, 1.0, 0, 20, 20, 20, math.ceil(overlay.opacitys.contents))

    if mousefunctions.CursorZone(x-0.043,y+0.01,0.05,0.015) or mousefunctions.CursorZone(x+0.085,y+0.01,0.03,0.02) then
        if IsDisabledControlJustPressed(0, 24) then 
            currenttoggle = text
            disableanim = false
            func()
            return true
         end

         if IsDisabledControlJustPressed(0, 25) then 
            cx, cy = mousefunctions.getCursorPosition()
            overlay.opacitys.togglebind = 0 
            if not binds.toggles[text] then
                binds.toggles[text] = {text = "", bool = true, value = 999, func = func, textopacity = 0, texttoggle = text}
            end
            binds.toggles[text].texttoggle = text
            binds.toggles[text].textopacity = 0
            binds.toggles[text].func = func
            previewkey = 999
            binds.toggles[text].bool = true 
            binding = true
            currenttoggle = text
         end
    end

    if bool then
        
        if currenttoggle == text then
            togglex = anim.Lerp(togglex, 0.071, animvelocity)
        end

        if currenttoggle ~= text then
            texts.drawTextColor(text, x-0.07, y-0.005, false, false, 0.28, 11, 255, 255, 255, math.ceil(overlay.opacitys.contents))
            texts.drawTextColor("•",x+0.071,y-0.046,false, false, 1.80,6, overlay.colors.main.r, overlay.colors.main.g, overlay.colors.main.b, math.ceil(overlay.opacitys.contents))
        elseif not disableanim then
            texts.drawTextColor(text, x-0.07, y-0.005, false, false, 0.28, 11, 255, 255, 255, math.ceil(overlay.opacitys.contents))
            texts.drawTextColor("•",x+togglex,y-toggley,false, false, 1.80,6, overlay.colors.main.r, overlay.colors.main.g, overlay.colors.main.b, math.ceil(overlay.opacitys.contents))
        else
            texts.drawTextColor(text, x-0.07, y-0.005, false, false, 0.28, 11, 255, 255, 255, math.ceil(overlay.opacitys.contents))
            texts.drawTextColor("•",x+0.071,y-0.046,false, false, 1.80,6, overlay.colors.main.r, overlay.colors.main.g, overlay.colors.main.b, math.ceil(overlay.opacitys.contents))
        end
    else
        if currenttoggle == text then
            togglex = anim.Lerp(togglex, 0.061, animvelocity)
        end

        if currenttoggle ~= text then
            texts.drawTextColor(text, x-0.07, y-0.005, false, false, 0.28, 11, 200, 200, 200, math.ceil(overlay.opacitys.contents))
            texts.drawTextColor("•",x+0.061,y-0.046,false, false, 1.80,6, 100, 100, 100, math.ceil(overlay.opacitys.contents))
        elseif not disableanim then
            texts.drawTextColor(text, x-0.07, y-0.005, false, false, 0.28, 11, 200, 200, 200, math.ceil(overlay.opacitys.contents))
            texts.drawTextColor("•",x+togglex,y-0.046,false, false, 1.80,6, 100, 100, 100, math.ceil(overlay.opacitys.contents))
        else
            texts.drawTextColor(text, x-0.07, y-0.005, false, false, 0.28, 11, 200, 200, 200, math.ceil(overlay.opacitys.contents))
            texts.drawTextColor("•",x+0.061,y-0.046,false, false, 1.80,6, 100, 100, 100, math.ceil(overlay.opacitys.contents))
        end
    end

    if binding then
        if currenttoggle == text and binds.toggles[text] then
            if binds.toggles[text].bool then
            DisableAllControlActions()

            overlay.opacitys.togglebind = anim.Lerp(overlay.opacitys.togglebind, 255, 0.020)

        --write key
        local textFunc = text
        for text, key in pairs(keysinput) do
            if IsDisabledControlJustPressed(0, key) then
                binds.toggles[textFunc].text = string.upper(text)
                previewkey = key
            end
        end

        --sucess binded
        if IsDisabledControlJustPressed(0, 191) then
            binds.toggles[text].value = previewkey
            binds.toggles[text].bool = false
            interact.binding = false
        end


            if overlay.opacitys.main > 240 then
            DrawSprite("psycho-button","psycho-button", cx+0.082, cy+0.022, 0.15, 0.7, 0, 15, 15, 15, math.ceil(overlay.opacitys.togglebind))

            if binds.toggles[text].text == "" then
                DrawSprite("keyboard","keyboard", cx+0.082, cy+0.022, 0.3, 0.37, 0, overlay.colors.main.r, overlay.colors.main.g, overlay.colors.main.b, math.ceil(overlay.opacitys.togglebind))
            else
                texts.drawTextColor(binds.toggles[text].text, cx+0.082, cy+0.01, false, true, 0.27, 11, 255, 255, 255, math.ceil(overlay.opacitys.togglebind))
            end
            end


        if IsDisabledControlJustPressed(0, 322) then
            binds.toggles[text].bool = false
            binding = false
            binds.toggles[text].value = 999
            binds.toggles[text].text = ""
        end

    end
            
        end
        
    end

end

--callback
local playerson = {}
local vehlist = {}
callfunc = 
{
    searchOptions = function ()
        
    end,

    updatePlayerList = function()
        Citizen.CreateThread(function ()
            while true do
                if psychovars.main.tab == "players" then
                local activePlayers = GetActivePlayers()
                local playercoords = GetEntityCoords(PlayerPedId())
                playerson = {}
    
                for _, player in ipairs(activePlayers) do
                    local playerName = GetPlayerName(player)
                        local targetcoords = GetEntityCoords(GetPlayerPed(player))  -- Coordenadas do jogador de destino
                        local distance = GetDistanceBetweenCoords(playercoords, targetcoords, true)  -- Distância entre o jogador local e o jogador de destino
                        table.insert(playerson, {player = player, distance = distance})
                        
                end
    
    
                table.sort(playerson, function(a, b)
                    return a.distance < b.distance
                end)
            end

                     --verify current players
                 for k, player in pairs(playersselected) do
                    local playerCoords = GetEntityCoords(GetPlayerPed(player))
                    local selfCoords = GetEntityCoords(PlayerPedId())
                    local distance = GetDistanceBetweenCoords(selfCoords, playerCoords, false)
                    if distance > listVariables.distanceLimit then
                        table.remove(playersselected, k)
                    end
                 end
                Wait(2000)
        end
        end)
    end,

    callWeaponsList = function ()
        local Loader_X, Loader_Y = Drag.LoaderX, Drag.LoaderY
        texts.drawTextColor("Lista Spawn de Armas", 0.55+Loader_X, 0.37+Loader_Y-0.03, false, false, 0.32, 11, overlay.colors.main.r, overlay.colors.main.g, overlay.colors.main.b, math.ceil(overlay.opacitys.contents))
        local Loader_X, Loader_Y = Drag.LoaderX, Drag.LoaderY
         local dW = psychovars.list.MesosnuW - 0.5
         local dH = psychovars.list.MesosnuH - 0.424
         local y = 0.285 + scrolls['weaponList'].static
         local add = 0.022
         local max = 0.6
         if IsDisabledControlPressed(0,36) and IsDisabledControlJustPressed(0,34) then
            weaponsSelected = {}
            for index, weapon in ipairs(weaponList) do
                table.insert(weaponsSelected,weapon.hash)
            end
         end

         if IsDisabledControlPressed(0,36) and IsDisabledControlJustPressed(0,177) then
            weaponsSelected = {}
         end
         

        if IsDisabledControlPressed(0, 14) and y > (0.355 - (25 * add)) and mousefunctions.mouse(0.63+Loader_X, 0.46+Loader_Y, 0.165, 0.25) then
            scrolls["weaponList"].static = scrolls["weaponList"].static - add
        end
        if IsDisabledControlJustPressed(0, 15) and y ~= 0.355 and mousefunctions.mouse(0.63+Loader_X, 0.46+Loader_Y, 0.165, 0.25) then
            scrolls["weaponList"].static = scrolls["weaponList"].static + add
        end

         
         for index, weapon in ipairs(weaponList) do
            local r,g,b = 255,255,255
            local selected = false
            local txtdraw = weapon.name
            for _, arma in ipairs(weaponsSelected) do
                if arma == weapon.hash then
                    r,g,b = overlay.colors.main.r, overlay.colors.main.g, overlay.colors.main.b
                    selected = true
                    txtdraw = "• "..weapon.name
                end
            end

             if y >= 0.4 and y <= max then
                    if interact.PlayerButton(txtdraw, 0.445+Loader_X, y - 0.05+Loader_Y, false, r,g,b) then
                        if selected then
                            for i, arma in ipairs(weaponsSelected) do
                                if arma == weapon.hash then
                                    table.remove(weaponsSelected, i)
                                end
                            end
                        else
                            table.insert(weaponsSelected,weapon.hash)
                        end
                     end    
             end
         
             y = y + add
         end
    end,
    
    callSpawnVehicleList = function ()
        local Loader_X, Loader_Y = Drag.LoaderX, Drag.LoaderY
        texts.drawTextColor("Lista Spawn de Veículos", 0.55+Loader_X, 0.37+Loader_Y-0.03, false, false, 0.32, 11, overlay.colors.main.r, overlay.colors.main.g, overlay.colors.main.b, math.ceil(overlay.opacitys.contents))
        local Loader_X, Loader_Y = Drag.LoaderX, Drag.LoaderY
         local dW = psychovars.list.MesosnuW - 0.5
         local dH = psychovars.list.MesosnuH - 0.424
         local y = 0.285 + scrolls['vehicleSpawnList'].static
         local add = 0.03
         local max = 0.6

         if IsDisabledControlPressed(0,36) and IsDisabledControlJustPressed(0,177) then
            vehicleSelected = nil
         end
         

         if IsDisabledControlPressed(0, 14) and y > (0.355 - (25 * add)) and mousefunctions.mouse(0.63+Loader_X, 0.46+Loader_Y, 0.165, 0.25) then
            scrolls["vehicleSpawnList"].static = scrolls["vehicleSpawnList"].static - add
        end
        if IsDisabledControlJustPressed(0, 15) and y ~= 0.355 and mousefunctions.mouse(0.63+Loader_X, 0.46+Loader_Y, 0.165, 0.25) then
            scrolls["vehicleSpawnList"].static = scrolls["vehicleSpawnList"].static + add
        end

         
         for index, vehicle in ipairs(vehicleListSpawn) do
            local r,g,b = 255,255,255
            local txtdraw = vehicle.name
            if vehicleSelected == vehicle.hash then
                    r,g,b = overlay.colors.main.r, overlay.colors.main.g, overlay.colors.main.b
                    txtdraw = "• "..vehicle.name
            end

             if y >= 0.4 and y <= max then
                    if interact.PlayerButton(txtdraw, 0.445+Loader_X, y - 0.05+Loader_Y, false, r,g,b) then
                        if vehicleSelected == vehicle.hash then
                            vehicleSelected = nil
                        else
                            vehicleSelected = vehicle.hash
                        end
                     end    
             end
         
             y = y + add
         end
    end,

    updateVehicleList = function()
        Citizen.CreateThread(function ()
            while true do
                if psychovars.main.tab == "vehicles" then
                local activeVehicles = GetAllVeh()
                local playercoords = GetEntityCoords(PlayerPedId())
                vehlist = {}
    
                for k, vehicle in ipairs(activeVehicles) do
                        local modelName = GetDisplayNameFromVehicleModel(GetEntityModel(vehicle))
                        if modelName ~= "FREIGHT" and modelName ~= "CARNOTFOUND" then
                        local targetcoords = GetEntityCoords(vehicle) 
                        local distance = GetDistanceBetweenCoords(playercoords, targetcoords, true)
                        table.insert(vehlist, {vehicle = vehicle, distance = distance})
                        end
                        
                end
    
                    table.sort(vehlist, function(a, b)
                        return a.distance < b.distance
                    end)
            end

                 --verify current vehicles
                 for k, vehicle in pairs(vehiclesSelected) do
                    local vehCoords = GetEntityCoords(vehicle)
                    local selfCoords = GetEntityCoords(PlayerPedId())
                    local distance = GetDistanceBetweenCoords(selfCoords, vehCoords, false)
                    if distance > listVariables.distanceLimit then
                        table.remove(vehiclesSelected, k)
                    end
                 end

                Wait(2000)
        end
        end)
    end,

    menuscheck = function ()
        -- Ped Entities
        local ymenu = 0.361
        local yadd = 0.038

        ymenu = ymenu + yadd
        if interact.invisiblebutton(0.31, ymenu, 0.062, 0.012) then
            if psychovars.main.tab ~= "self" then
            overlay.opacitys.contents = 0
            end
            psychovars.main.tab = "self"
            overlay.anim.tabpos.xdestin = 0.31
            overlay.anim.tabpos.ydestin = ymenu
        end

        ymenu = ymenu + yadd -0.003
        if interact.invisiblebutton(0.31, ymenu, 0.062, 0.012) then
            if psychovars.main.tab ~= "players" then
            overlay.opacitys.contents = 0
            end
            psychovars.main.tab = "players"
            overlay.anim.tabpos.xdestin = 0.31
            overlay.anim.tabpos.ydestin = ymenu
        end

        -- Weapons

        local ymenu = 0.452
        local yadd = 0.03
        
        ymenu = ymenu + yadd
        if interact.invisiblebutton(0.31, ymenu, 0.062, 0.012) then
            if psychovars.main.tab ~= "weapon" then
            overlay.opacitys.contents = 0
            end
            psychovars.main.tab = "weapon"
            overlay.anim.tabpos.xdestin = 0.31
            overlay.anim.tabpos.ydestin = ymenu
        end

        ymenu = ymenu + yadd
        if interact.invisiblebutton(0.31, ymenu, 0.062, 0.012) then
            if psychovars.main.tab ~= "aimbot" then
            overlay.opacitys.contents = 0
            end
            psychovars.main.tab = "aimbot"
            overlay.anim.tabpos.xdestin = 0.31
            overlay.anim.tabpos.ydestin = ymenu
        end

        -- Vehicle Entities

        local ymenu = 0.525
        local yadd = 0.03
        
        ymenu = ymenu + yadd
        if interact.invisiblebutton(0.31, ymenu, 0.062, 0.012) then
            if psychovars.main.tab ~= "vehicle" then
                overlay.opacitys.contents = 0
            end
            psychovars.main.tab = "vehicle"
            overlay.anim.tabpos.xdestin = 0.31
            overlay.anim.tabpos.ydestin = ymenu
        end

        ymenu = ymenu + yadd
        if interact.invisiblebutton(0.31, ymenu, 0.062, 0.012) then
            if psychovars.main.tab ~= "vehicles" then
                overlay.opacitys.contents = 0
            end
            psychovars.main.tab = "vehicles"
            overlay.anim.tabpos.xdestin = 0.31
            overlay.anim.tabpos.ydestin = ymenu
        end

         -- Visual

         local ymenu = 0.615
         local yadd = 0.025
         
         ymenu = ymenu + yadd
         if interact.invisiblebutton(0.31, ymenu, 0.062, 0.012) then
            if psychovars.main.tab ~= "visual" then
                overlay.opacitys.contents = 0
            end
             psychovars.main.tab = "visual"
             overlay.anim.tabpos.xdestin = 0.31
             overlay.anim.tabpos.ydestin = ymenu
         end

         -- Outhers

         local ymenu = 0.66
         local yadd = 0.031
         
         ymenu = ymenu + yadd
         if interact.invisiblebutton(0.31, ymenu, 0.062, 0.012) then
            if psychovars.main.tab ~= "trolloptions" then
                overlay.opacitys.contents = 0
            end
             psychovars.main.tab = "trolloptions"
             overlay.anim.tabpos.xdestin = 0.31
             overlay.anim.tabpos.ydestin = ymenu
         end

         ymenu = ymenu + yadd
         if interact.invisiblebutton(0.31, ymenu, 0.062, 0.012) then
            if psychovars.main.tab ~= "exploits" then
                overlay.opacitys.contents = 0
            end
             psychovars.main.tab = "exploits"
             overlay.anim.tabpos.xdestin = 0.31
             overlay.anim.tabpos.ydestin = ymenu
         end

         ymenu = ymenu + yadd
         if interact.invisiblebutton(0.31, ymenu, 0.062, 0.012) then
            if psychovars.main.tab ~= "config" then
                overlay.opacitys.contents = 0
            end
             psychovars.main.tab = "config"
             overlay.anim.tabpos.xdestin = 0.31
             overlay.anim.tabpos.ydestin = ymenu
         end
    end,

    interactions = function ()
        if psychovars.main.tab == "self" then

            local yvalue = 0.32+scrolls["self"].static
            local addbutton = 0.045
            local max = 0.76
            interact.Scroll(5, "self")

            

            
        elseif psychovars.main.tab == "weapon" then
            callfunc.callWeaponsList()            

            local yvalue = 0.32+scrolls["weapon"].static
            local addbutton = 0.045
            local max = 0.76
            interact.Scroll(5, "weapon")

            yvalue = yvalue + addbutton
            if yvalue >= 0.34 and yvalue <= max then
                interact.standardbutton("Spawnar Armas Selecionadas", 0.424, yvalue, function ()
                    if #weaponsSelected > 0 then
                        for i, weapon in ipairs(weaponsSelected) do 
                            weaponmodule.Spawn(weapon,math.ceil(200))
                        end
                    end
                end)
            end

            yvalue = yvalue + addbutton
            if yvalue >= 0.34 and yvalue <= max then
                interact.standardbutton("Remover Armas", 0.424, yvalue, function ()
                    RemoveAllPedWeapons(PlayerPedId())
                end)
            end

            yvalue = yvalue + addbutton
            if yvalue >= 0.34 and yvalue <= max then
                interact.Slider("SliderTest", 0.424, yvalue, 1, 0.09)
            end

            yvalue = yvalue + addbutton
            if yvalue >= 0.34 and yvalue <= max then
                interact.togglebox(bool2, "Teste", 0.43, yvalue, function ()
                    bool2 = not bool2
                end)
            end

        elseif psychovars.main.tab == "players" then


            local yvalue = 0.32+scrolls["players"].static
            local addbutton = 0.045
            local max = 0.76
            interact.Scroll(5, "players")

            yvalue = yvalue + addbutton
            if yvalue >= 0.34 and yvalue <= max then
                interact.textBox("searchPlayers", "", "Pesquisar Jogadores", 0.424, yvalue)
            end

            print(others.getTextBox("searchPlayers"))


            callfunc.callPlayersList()


        elseif psychovars.main.tab == "vehicle" then
            callfunc.callSpawnVehicleList()


            local yvalue = 0.32+scrolls["vehicle"].static
            local addbutton = 0.045
            local max = 0.76
            interact.Scroll(5, "vehicle")

            yvalue = yvalue + addbutton
            if yvalue >= 0.34 and yvalue <= max then
                interact.standardbutton("Spawnar Veículo Selecionado", 0.424, yvalue, function ()
                    if vehicleSelected then
                        vehiclemodule.Spawn(vehicleSelected, GetEntityCoords(PlayerPedId()))
                    end 
                end)
            end

        elseif psychovars.main.tab == "vehicles" then



            interact.textBox("searchVehicles", "", "Pesquisar Veiculo", 0.424, 0.37)
    

            callfunc.callVehicleList()

        end
    end,

    bindscheck = function ()
        for button, key in pairs(binds.buttons) do
            if key.value ~= nil then
                if IsDisabledControlJustPressed(0, key.value) then
                    key.func()
                end
            end
        end

        for button, key in pairs(binds.toggles) do
            if key.value ~= nil then
                if IsDisabledControlJustPressed(0, key.value) then
                    currenttoggle = key.texttoggle
                    disableanim = false
                    
                    key.func()
                end
            end
        end
    end,

    callPlayersList = function ()
        local Loader_X, Loader_Y = Drag.LoaderX, Drag.LoaderY
        local y = 0.28+scrolls["playerList"].static
        local add = 0.03
        local max = 0.73

        if IsDisabledControlPressed(0, 14) and y > (0.355 - (25 * add)) and mousefunctions.mouse(0.63+Loader_X, 0.46+Loader_Y, 0.165, 0.25) then
            scrolls["playerList"].static = scrolls["playerList"].static - add
        end
        if IsDisabledControlJustPressed(0, 15) and y ~= 0.355 and mousefunctions.mouse(0.63+Loader_X, 0.46+Loader_Y, 0.165, 0.25) then
            scrolls["playerList"].static = scrolls["playerList"].static + add
        end

        for i = 1, #playerson do
            if i > 0 then
                player = playerson[i].player
                local selected = false
                selfcoords = GetEntityCoords(PlayerPedId())
                local buttonypos = ((0.05 * 1.0) + (i - 1) * 0.024) + y +Loader_Y
                pedcoords = GetEntityCoords(GetPlayerPed(player))
                local name = GetPlayerName(player)
                if not interact.textBoxes["searchPlayers"].text or interact.textBoxes["searchPlayers"].text == "" or string.match(name:lower(), interact.textBoxes["searchPlayers"].text:lower()) then
                local distance = GetDistanceBetweenCoords(selfcoords, pedcoords, false)
                if distance < listVariables.distanceLimit then
                local r,g,b = 255,255,255


                if buttonypos >= 0.34+Loader_Y and buttonypos <= 0.5300+Loader_Y then
                    local playerinfo = false
                    local playerinfo = ' '..name..'  D - '..math.ceil(playerson[i].distance)
                    for _, pp1 in ipairs(playersselected) do
                        if pp1 == player then
                            r,g,b = overlay.colors.main.r, overlay.colors.main.g, overlay.colors.main.b
                            playerinfo = '• '..name..'  D - '..math.ceil(playerson[i].distance)
                          selected = true
                        end
                    end


                    if interact.PlayerButton(playerinfo, 0.45+Loader_X, buttonypos+0.025, false, r,g,b) then
                        if selected then
                        for i, pp1 in ipairs(playersselected) do
                            if pp1 == player then
                                table.remove(playersselected, i)
                                if SelectedPlayer == player then
                                    SelectedPlayer = getlastitem(playersselected)
                                end
                            end
                        end
                    else
                        table.insert(playersselected,player)
                        SelectedPlayer = player
                    end
                    end
                end
                end
            end
            end
        end
    end,

    callVehicleList = function ()


        local Loader_X, Loader_Y = Drag.LoaderX, Drag.LoaderY
        local y = 0.31+scrolls["vehicleList"].static
        local add = 0.03
        local max = 0.73


        if IsDisabledControlPressed(0, 14) and y > (0.355 - (25 * add)) and mousefunctions.mouse(0.676+Loader_X, 0.450+Loader_Y, 0.23, 0.3) then
            scrolls["vehicleList"].static = scrolls["vehicleList"].static - add
        end
        if IsDisabledControlJustPressed(0, 15) and y ~= 0.355 and mousefunctions.mouse(0.676+Loader_X, 0.450+Loader_Y, 0.23, 0.3) then
            scrolls["vehicleList"].static = scrolls["vehicleList"].static + add
        end

        if IsDisabledControlPressed(0, 36) and IsDisabledControlJustPressed(0, 34) then
            for i = 1, #vehlist do
                local selected = false
                if i > 0 then
                    local currentVehicle = vehlist[i].vehicle

                    for k, vehicle in pairs(vehiclesSelected) do
                        if currentVehicle == vehicle then
                            selected = true
                        end
                    end

                    if not selected then
                        table.insert(vehiclesSelected, currentVehicle)

                        SelectedVeh = getlastitem(vehiclesSelected)
                    end
                end
            end
        end

        if IsDisabledControlPressed(0, 36) and IsDisabledControlJustPressed(0, 177) then
            vehiclesSelected = {}
        end

        for i = 1, #vehlist do
            if i > 0 then
                local selected = false
                local clickYPos = ((0.05 * 1.0) + (i - 1) * 0.024) + y +Drag.LoaderY
                local currentVehicle = vehlist[i].vehicle
                local vehicleName = GetDisplayNameFromVehicleModel(GetEntityModel(currentVehicle))
                if not interact.textBoxes["searchVehicles"].text or interact.textBoxes["searchVehicles"].text == "" or string.match(vehicleName:lower(), interact.textBoxes["searchVehicles"].text:lower()) then
                local selfCoords = GetEntityCoords(PlayerPedId())
                local vehCoords = GetEntityCoords(currentVehicle)
                local distance = GetDistanceBetweenCoords(selfCoords, vehCoords, false)
                if distance < listVariables.distanceLimit then
                local r,g,b = 255, 255, 255

                if clickYPos >= 0.291+Drag.LoaderY and clickYPos <= 0.5300+Drag.LoaderY then
                    local vehInformation = ' '..vehicleName..'  D - '..math.ceil(vehlist[i].distance)

                    for k, vehicle in pairs(vehiclesSelected) do
                        if vehicle == currentVehicle then
                            r,g,b = overlay.colors.main.r, overlay.colors.main.g, overlay.colors.main.b
                            if vehicle == SelectedVeh then
                            vehInformation = '• '..vehicleName..'  D - '..math.ceil(vehlist[i].distance)
                            end

                            selected = true
                        end
                    end

                    if interact.PlayerButton(vehInformation, 0.45+Drag.LoaderX, clickYPos+0.025, false, r,g,b) then
                        if selected then
                            for k, vehicle in pairs(vehiclesSelected) do
                                if vehicle == currentVehicle then
                                    table.remove(vehiclesSelected, k)
                                    SelectedVeh = getlastitem(vehiclesSelected)
                                    break
                                end
                            end
                        else
                            table.insert(vehiclesSelected, currentVehicle)
                            SelectedVeh = currentVehicle
                        end
                   end
                end
                end

                
            end

            end
        end
    end,

    ifs = function ()
        if SelectedVeh then
            if not IsPedInVehicle(PlayerPedId(), SelectedVeh) then
            local modelType = 0
            local addy = 4
            if GetVehicleClass(SelectedVeh) == 16 then
                modelType = 7
                addy = 3
            elseif GetVehicleClass(SelectedVeh) == 15 then
                modelType = 34
                addy = 4

            elseif GetVehicleClass(SelectedVeh) == 8 then
                modelType = 37
                addy = 3

            elseif GetVehicleClass(SelectedVeh) == 21 or GetVehicleClass(SelectedVeh) == 20 then
                modelType = 39
                addy = 3

            elseif GetVehicleClass(SelectedVeh) == 14 then
                modelType = 35
                addy = 3

            elseif GetVehicleClass(SelectedVeh) == 13 then
                modelType = 38
                addy = 3

            elseif GetDisplayNameFromVehicleModel(GetEntityModel(SelectedVeh)) == "THRUSTER" then
                modelType = 41
                addy = 3

            end
            modelCoords = GetEntityCoords(SelectedVeh)
            DrawMarker(modelType, modelCoords.x, modelCoords.y, modelCoords.z + addy, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2.0, 2.0, 2.0, overlay.colors.main.r, overlay.colors.main.g, overlay.colors.main.b, 255, true, true, 2, nil, nil, false)
            end
        end

        if healthmodule.godmode then
        end

    end,
}

-- Enumerar
local function EnumerateEntities(initFunc, moveFunc, disposeFunc)
    return coroutine.wrap(function()
        local iter, id = initFunc()
        if not id or id == 0 then
            disposeFunc(iter)
            return
        end
        
        local enum = {handle = iter, destructor = disposeFunc}
        setmetatable(enum, entityEnumerator)
        
        local next = true
        repeat
            coroutine.yield(id)
            next, id = moveFunc(iter)
        until not next
        
        enum.destructor, enum.handle = nil, nil
        disposeFunc(iter)
    end)
 end
 


 function EnumeratePeds()
    return EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed)
 end

 function EnumerateVehicles()
    return EnumerateEntities(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
 end


 GetAllVeh = function ()
    local ret = {}
    for veh in EnumerateVehicles() do
        if GetDisplayNameFromVehicleModel(GetEntityModel(veh)) ~= "FREIGHT" and GetDisplayNameFromVehicleModel(GetEntityModel(veh)) ~= "CARNOTFOUND" then
            table.insert(ret, veh)
        end
    end
    return ret
 end


callfunc.updatePlayerList()
callfunc.updateVehicleList()




-- funções

-- others
others = {}

function others.getTextBox(id)
    if interact.textBoxes[id] then
        return interact.textBoxes[id].text
    else
        return false
    end
end

 -- entity module
entityModule = {}

 function entityModule.getControl(entity)
    if entity then
        local netId = NetworkGetNetworkIdFromEntity(entity)

        -- control request
        NetworkRequestControlOfNetworkId(netId)
        
        if NetworkHasControlOfEntity(entity) then
            print("Sucess Controled")
            return netId
        end
    end
 end



 function entityModule.removeFromCar(ped)
    local playerPed = GetPlayerPed(ped)

    if playerPed and IsPedInAnyVehicle(playerPed, false) then
        entityModule.getControl(playerPed)

        TaskLeaveVehicle(playerPed, GetVehiclePedIsIn(playerPed, false), 0)
        TaskLeaveAnyVehicle(playerPed, 1, 1)
        SetPedIntoVehicle(playerPed, -1, -1)
        print("Removed!")
    end
 end

function getlastitem(table)
    return table[#table]
end

function generateRandomString()
    local charset = {}  do
        for c = 48, 57 do table.insert(charset, string.char(c)) end
        for c = 65, 90 do table.insert(charset, string.char(c)) end
    end
    math.randomseed(GetGameTimer())
    local randomString = ""
    for i = 1, 6 do
        randomString = randomString .. charset[math.random(1, #charset)]
    end
    return randomString
end

cdsmodule = {}
healthmodule = {}
function cdsmodule.tpway()
    
end

weaponmodule = {}

function weaponmodule.Spawn(name, ammo)
        GiveWeaponToPed(PlayerPedId(), GetHashKey(name), tonumber(ammo), false, false)
end


vehiclemodule = {}

function vehiclemodule.Spawn(hashmodel, x, y, z)
        print("Spawn de veículos indisponível")
end


--main thread
Citizen.CreateThread(function ()
    while true do
        Wait(0)
        -- check binds
        callfunc.bindscheck()
        callfunc.ifs()


        if IsControlJustPressed(0, psychovars.main.key) then
            if psychovars.main.drawing then
                overlay.outhers.disabling = true
            else
            menuwidth = 0
            overlay.opacitys.main = 0
            overlay.opacitys.contents = 0
            psychovars.main.drawing = not psychovars.main.drawing
            end
        end

        if overlay.outhers.disabling then
            anim.fadeOut()
        end

        
        if psychovars.main.drawing then
            mainfunctions.displayInterface()
            mainfunctions.PsychoDrag()

            callfunc.menuscheck()
            if boxwidth2 > 0.54 or overlay.anim.boxanim.first then
            callfunc.interactions()
            end

            mainfunctions.drawcursor()
        end

        local table = {"Tutu Cafajeste", "Admnistrador", "Pichau Gamer"}
        interact.listBox(table, "Lista de Adm", 0.2, 0.2, "AdmList")

        local table = {"awdadwa"}
        interact.listBox(table, "Lista 2", 0.8, 0.2, "list")

    end
end)