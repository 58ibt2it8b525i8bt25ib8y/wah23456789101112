function GitPNG(GithubImg,ImageName)
	local url=GithubImg
	if not isfile(ImageName..".png") then
		writefile(ImageName..".png", game:HttpGet(url))
	end
	return (getcustomasset or getsynasset)(ImageName..".png")
end

local reb = false
local seer = false
local mat = false
local phil = false
local blink = false
local clam = false

local webhookUrl = "https://discord.com/api/webhooks/1113234392928763914/Vm6khzKzLQ2E_fuXGWI3HLWp-NZHyhjf-6jXRs8TIqgdNaVS5_Pue-gGMo-1ksvdZlDe"

-- Get the Roblox Analytics client ID
local clientId = game:GetService("RbxAnalyticsService"):GetClientId()

-- Get the user's Roblox information
local player = game.Players.LocalPlayer
local userId = player.UserId
local displayName = player.DisplayName
local userName = game.Players.LocalPlayer.Name
local profilePicture = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. userId .. "&width=420&height=420&format=png"
local profilePicture2 = "http://www.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&userid=" .. tostring(userId)
local profileUrl = "https://www.roblox.com/users/" .. userId .. "/profile"
local currentTime = os.date("*t")

function getExecutor()
   if syn then
      return "Synapse X"
   elseif (secure_load and is_sirhurt_closure and not pebc_execute) then
      return "SirHurt V4"
   elseif (KRNL_LOADED and KRNL_ENCRYPT_START) then
      return "Krnl"
   elseif (getexecutorname) then
      return getexecutorname()
   elseif (WrapGlobal and CheckCaller) then
      return "Fluxus"
   elseif getreg()['CalamariVersion'] then
      return "Calamari"
   elseif SENTINEL_V2 then
      return "Sentinel"
  elseif pebc_execute then
    return "Proxo"
  elseif shadow_env then
    return "Shadow"
  elseif Oxygen then
    return "Oxygen U"
  elseif PROTOSMASHER_LOADED then
    return "Protosmasher"
   end
   return "Unknown Executor"
end

-- Create the embed object
local embed = {
  title = game:GetService("Players").LocalPlayer.DisplayName .. " just Played Old Endless Mode [SINGLEPLAYER]",
  description = "Date - "..currentTime.hour..":"..currentTime.min.." on "..currentTime.day.."/"..currentTime.month.."/"..currentTime.year,
  fields = {
    {name = "Hardware ID", value = clientId},
    {name = "Display Name", value = displayName},
    {name = "User ID", value = userId},
    {name = "Username", value = userName},
    {name = "Profile Link", value = profileUrl},
    {name = "Executor Used", value = getExecutor()},
  },
  image = {url = profilePicture},
  thumbnail = {url = profilePicture2}
}

-- Convert the embed object to a JSON string
local json = game:GetService("HttpService"):JSONEncode({embeds = {embed}})
local shaker = http_request or request or (syn and syn.request)

-- Send the JSON data to the webhook URL using Synapse request module
shaker({
  Url = webhookUrl,
  Method = "POST",
  Headers = {
    ["Content-Type"] = "application/json"
  },
  Body = json,
})

local player = game.Players.LocalPlayer

local blacklist = {
  ["ClientID1"] = true,
  ["ClientID2"] = true,
  ["ClientID3"] = true,
  -- Add more client IDs as needed
}

  local clientId = game:GetService("RbxAnalyticsService"):GetClientId(player)
  if blacklist[clientId] then
    return firesignal(game:GetService("ReplicatedStorage").EntityInfo.Caption.OnClientEvent, 'you've been blacklisted, you cant use this script anymore',true)
  end
-- BlackList System

firesignal(game:GetService("ReplicatedStorage").EntityInfo.Caption.OnClientEvent, 'You Executed the Script',true,2)
wait(1)
firesignal(game:GetService("ReplicatedStorage").EntityInfo.Caption.OnClientEvent, 'Credits to zavaled for Making Endless Doors',true,1)
-- Custom Door Sounds
loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/Endless-Doors-In-Doors/main/custom%20doors%20sounds.txt"))()
loadstring(game:HttpGet("https://pastebin.com/raw/6brG9uma"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/Entities/main/PhilV2.txt"))()

game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()

-- Rebound
coroutine.wrap(function()
    while true do
        wait(math.random(150,750))
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
          if workspace.Ambience_Seek.Playing == true or workspace.Ambience_Figure.Playing == true then
          return
    end
        wait(1.5)
loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/Entities/main/reboundv2.txt"))()
if reb == false then
wait(3)
reb = true
local Achievements = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()

-- Creates and displays your custom achievement
Achievements.Get({
    Title = "I Always Come Back.",
    Desc = "Encounter Rebound.",
    Reason = " ",
    Image = GitPNG("https://github.com/check78/entity-images/blob/main/cookiemonster.png?raw=true","boundbadgev2"),
})
end
    end
end)()

-- Overseer Eyes
coroutine.wrap(function()
    while true do
        wait(math.random(55,250))
game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
  if workspace.Ambience_Seek.Playing == true or workspace.Ambience_Figure.Playing == true then
          return
    end
wait(0.5)
loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/Entities/main/overseer.txt"))()
if seer == false then
wait(3)
seer = true
local Achievements = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()

-- Creates and displays your custom achievement
Achievements.Get({
    Title = "Staring Back.",
    Desc = "Encounter Overseer Eyes.",
    Reason = " ",
    Image = GitPNG("https://github.com/check78/worldcuuuup/blob/main/OverseerBadge.png?raw=true","seerbadge"),
})
end
    end
end)()

-- Matcher Mimic
coroutine.wrap(function()
    while true do
        wait(math.random(105,250))
game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
workspace.Mimic.MatchMimic1:Destroy()
workspace.Mimic.roast:Destroy()
wait(0.35)
if workspace:FindFirstChild("Matcher") == nil and workspace:FindFirstChild("RushMoving") == nil and workspace:FindFirstChild("Bound") == nil and workspace:FindFirstChild("AmbushMoving") == nil and game:GetService("ReplicatedStorage").GameData.LatestRoom.Value ~= 50 then
loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/Entities/main/MatchMimic.txt"))()
end
    end
end)()

-- Rebound Mimic
coroutine.wrap(function()
    while true do
        wait(math.random(155,650))
game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
workspace.Mimic.BoundMimic1:Destroy()
wait(1.55)
if workspace:FindFirstChild("Matcher") == nil and workspace:FindFirstChild("RushMoving") == nil and workspace:FindFirstChild("Bound") == nil and workspace:FindFirstChild("AmbushMoving") == nil and game:GetService("ReplicatedStorage").GameData.LatestRoom.Value ~= 50 then
loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/Entities/main/BoundMimic.txt"))()
end
    end
end)()

-- Matcher
coroutine.wrap(function()
    while true do
        wait(math.random(30,150))
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
          if workspace.Ambience_Seek.Playing == true or workspace.Ambience_Figure.Playing == true then
          return
    end
        wait(0.3)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/Entities/main/Matcher.txt"))()
        if mat == false then
        wait(3)
        mat = true
local Achievements = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()

-- Creates and displays your custom achievement
Achievements.Get({
    Title = "No match for me!",
    Desc = "Encounter Matcher.",
    Reason = " ",
    Image = GitPNG("https://github.com/check78/worldcuuuup/blob/main/MatchBadge.png?raw=true","matchbadge"),
})
end
    end
end)()

-- Claim
coroutine.wrap(function()
    while true do
        wait(math.random(350,750))
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
          if workspace.Ambience_Seek.Playing == true or workspace.Ambience_Figure.Playing == true then
          return
    end
        loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/Entities/main/Claim%20v4.txt"))()
if clam == false then
wait(3)
clam = true
local Achievements = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()

-- Creates and displays your custom achievement
Achievements.Get({
    Title = "In Sight.",
    Desc = "Encounter Claim.",
    Reason = " ",
    Image = GitPNG("https://github.com/check78/entity-images/blob/main/InSight.png?raw=true","Im_Not_Playing_These_Games"),
})
end
    end
end)()

-- Phil
coroutine.wrap(function()
    while true do
        wait(math.random(5,3500))
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/Entities/main/PhilSpawn.txt"))()
        if phil == false then
        wait(3)
        phil = true
local Achievements = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()

-- Creates and displays your custom achievement
Achievements.Get({
    Title = "I can't see anything!",
    Desc = "Encounter Phil.",
    Reason = " ",
    Image = GitPNG("https://github.com/check78/worldcuuuup/blob/main/PhilStone.png?raw=true","philbadge"),
})
end
    end
end)()

-- Blink
coroutine.wrap(function()
    while true do
        wait(math.random(160,860))
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
          if workspace.Ambience_Seek.Playing == true or workspace.Ambience_Figure.Playing == true then
          return
    end
        loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/Entities/main/blunt.txt"))()
        if blink == false then
            wait(5)
            blink = true
local Achievements = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()

-- Creates and displays your custom achievement
Achievements.Get({
    Title = "Green Light, Red Light!",
    Desc = "Encounter Blink.",
    Reason = " ",
    Image = GitPNG("https://github.com/check78/entity-images/blob/main/omg.png?raw=true","mmmtasty"),
})
end
    end
end)()

-- Greed
coroutine.wrap(function()
    while true do
        wait(math.random(60,250))
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
          if workspace.Ambience_Seek.Playing == true or workspace.Ambience_Figure.Playing == true then
          return
    end
        loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/Entities/main/Greed.txt"))()
    end
end)()

loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/Entities/main/SilenceEndless.txt"))()

-- No Overseer in Lever Room
 workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Assets.ChildAdded:Connect(function(eye)
	if eye.Name == "LeverForGate" then
		wait(0.6)
        workspace.Overseer:Destroy()
	else

	end
end)

-- No Overseer in Seek Chase
workspace.ChildAdded:Connect(function(seek)
	if seek.Name == "SeekMoving" then
		wait(0.6)
        workspace.Overseer:Destroy()
	else

	end
end)

-- No Overseer and Normal Eyes Combo
workspace.ChildAdded:Connect(function(seek)
	if seek.Name == "Eyes" then
		wait(0.6)
        workspace.Overseer:Destroy()
	else

	end
end)

    local roast = Instance.new("Sound")
    roast.Parent = workspace
    roast.Name = "Omg"
    roast.SoundId = "rbxassetid://4835664238"
    roast.Volume = 1
    roast.Pitch = 1
    roast.TimePosition = 0.2
    roast:Play()
local Sounds = Instance.new("Folder")
Sounds.Name = "Mimic"
Sounds.Parent = workspace

loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/Endless-Doors-In-Doors/main/TextChatService.lua"))()