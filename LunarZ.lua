local LunarZLoader = loadstring(game:HttpGet("https://raw.githubusercontent.com/x2-Neptune/SlayerzUI/main/BetaLibrary.script"))()
local Name = "LunarZ Hub"
local Description = "LunarZ Creator by Hirimii, T..., x2Nepture, Flontium, Teru"
local Image = "rbxassetid://15782111043"
local Color = Color3.fromRGB(201, 73, 255)
local Window = LunarZLoader:Window(Name,Description,Image,Color)
local A = Window:Tab("About")
local B = Window:Tab("Main Farm")
local C = Window:Tab("Setting")
local D = Window:Tab("Item Quest")
local E = Window:Tab("PVP")
local F = Window:Tab("Race Upgrade")
local G = Window:Tab("Devil Fruits")
local H = Window:Tab("Sea Event")
local I = Window:Tab("miscellaneous")
function CheckSea()
    local a = game.PlaceId
    if a == 2753915549 then
        Main = true
    elseif a == 4442272183 then
        Dressrosa = true
    elseif a == 7449423635 then
        Zou = true
    else
        game.Players.LocalPlayer:Kick("Not Supported Game This")
    end
end
CheckSea()
function TeleportSea(sea)
    if sea == 1 then
        if not game.PlaceId == 2753915549 then
            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("TravelMain")
        end
    elseif sea == 2 then
        if not game.PlaceId == 4442272183 then
            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("TravelDressrosa")
        end
    elseif sea == 3 then
        if not game.PlaceId == 7449423635 then
            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("TravelZou")
        end
    end
end
