getgenv().Minecraft = {
    Enabled = false -- Ustaw na true, jeśli chcesz włączyć
}

-- Konfiguracja skyboxa
local skyboxAssets = {
    SkyboxBk = "rbxassetid://1876545003",
    SkyboxDn = "rbxassetid://1876544331",
    SkyboxFt = "rbxassetid://1876542941",
    SkyboxLf = "rbxassetid://1876543392",
    SkyboxRt = "rbxassetid://1876543764",
    SkyboxUp = "rbxassetid://1876544642"
}

-- Pobranie serwisu Lighting i zapisanie oryginalnego skyboxa
local lighting = game:GetService("Lighting")
local originalSkybox = nil
for _, child in pairs(lighting:GetChildren()) do
    if child:IsA("Sky") then
        originalSkybox = child:Clone()
        break
    end
end

-- Funkcja do zmiany skyboxa
local function changeSkybox()
    -- Usuń obecny skybox
    for _, child in pairs(lighting:GetChildren()) do
        if child:IsA("Sky") then
            child:Destroy()
        end
    end

    if getgenv().Minecraft.Enabled then
        -- Tworzenie nowego skyboxa
        local newSky = Instance.new("Sky")
        newSky.Name = "CustomSkybox"
        newSky.SkyboxBk = skyboxAssets.SkyboxBk
        newSky.SkyboxDn = skyboxAssets.SkyboxDn
        newSky.SkyboxFt = skyboxAssets.SkyboxFt
        newSky.SkyboxLf = skyboxAssets.SkyboxLf
        newSky.SkyboxRt = skyboxAssets.SkyboxRt
        newSky.SkyboxUp = skyboxAssets.SkyboxUp
        newSky.Parent = lighting
    elseif originalSkybox then
        -- Przywróć oryginalny skybox po wyłączeniu
        local restoredSkybox = originalSkybox:Clone()
        restoredSkybox.Parent = lighting
    end
end

-- Monitorowanie zmian w Enabled i aktualizacja skyboxa
task.spawn(function()
    local lastState = getgenv().Minecraft.Enabled
    while task.wait(1) do -- Sprawdza co sekundę
        if getgenv().Minecraft.Enabled ~= lastState then
            lastState = getgenv().Minecraft.Enabled
            changeSkybox()
        end
    end
end)

-- GUI - Przycisk do zmiany skyboxa
SkyboxesSection:AddToggle("Minecraft", getgenv().Minecraft.Enabled, function(value)
    getgenv().Minecraft.Enabled = value -- Poprawiona nazwa zmiennej
    changeSkybox() -- Natychmiastowa aktualizacja skyboxa po zmianie
end)

getgenv().Purple = {
    Enabled = false -- Ustaw na true, jeśli chcesz włączyć
}

-- Konfiguracja skyboxa

local skyboxAssets = {
    SkyboxBk = "http://www.roblox.com/asset/?id=14543264135", -- Replace with your SkyboxBk asset ID
    SkyboxDn = "http://www.roblox.com/asset/?id=14543358958", -- Replace with your SkyboxDn asset ID
    SkyboxFt = "http://www.roblox.com/asset/?id=14543257810", -- Replace with your SkyboxFt asset ID
    SkyboxLf = "http://www.roblox.com/asset/?id=14543275895", -- Replace with your SkyboxLf asset ID
    SkyboxRt = "http://www.roblox.com/asset/?id=14543280890", -- Replace with your SkyboxRt asset ID
    SkyboxUp = "http://www.roblox.com/asset/?id=14543371676"  -- Replace with your SkyboxUp asset ID
}

-- Pobranie serwisu Lighting i zapisanie oryginalnego skyboxa
local lighting = game:GetService("Lighting")
local originalSkybox = nil
for _, child in pairs(lighting:GetChildren()) do
    if child:IsA("Sky") then
        originalSkybox = child:Clone()
        break
    end
end

-- Funkcja do zmiany skyboxa
local function changeSkybox()
    -- Usuń obecny skybox
    for _, child in pairs(lighting:GetChildren()) do
        if child:IsA("Sky") then
            child:Destroy()
        end
    end

    if getgenv().Purple.Enabled then
        -- Tworzenie nowego skyboxa
        local newSky = Instance.new("Sky")
        newSky.Name = "CustomSkybox"
        newSky.SkyboxBk = skyboxAssets.SkyboxBk
        newSky.SkyboxDn = skyboxAssets.SkyboxDn
        newSky.SkyboxFt = skyboxAssets.SkyboxFt
        newSky.SkyboxLf = skyboxAssets.SkyboxLf
        newSky.SkyboxRt = skyboxAssets.SkyboxRt
        newSky.SkyboxUp = skyboxAssets.SkyboxUp
        newSky.Parent = lighting
    elseif originalSkybox then
        -- Przywróć oryginalny skybox po wyłączeniu
        local restoredSkybox = originalSkybox:Clone()
        restoredSkybox.Parent = lighting
    end
end

-- Monitorowanie zmian w Enabled i aktualizacja skyboxa
task.spawn(function()
    local lastState = getgenv().Purple.Enabled
    while task.wait(1) do -- Sprawdza co sekundę
        if getgenv().Purple.Enabled ~= lastState then
            lastState = getgenv().Purple.Enabled
            changeSkybox()
        end
    end
end)

-- GUI - Przycisk do zmiany skyboxa
SkyboxesSection:AddToggle("Purple", getgenv().Purple.Enabled, function(value)
    getgenv().Purple.Enabled = value -- Poprawiona nazwa zmiennej
    changeSkybox() -- Natychmiastowa aktualizacja skyboxa po zmianie
end)

getgenv().DarkBlue = {
    Enabled = false -- Ustaw na true, jeśli chcesz włączyć
}

-- Konfiguracja skyboxa

local skyboxAssets = {
    SkyboxBk = "rbxassetid://393845394", -- Replace with your SkyboxBk asset ID
    SkyboxDn = "rbxassetid://393845204", -- Replace with your SkyboxDn asset ID
    SkyboxFt = "rbxassetid://393845629", -- Replace with your SkyboxFt asset ID
    SkyboxLf = "rbxassetid://393845750", -- Replace with your SkyboxLf asset ID
    SkyboxRt = "rbxassetid://393845533", -- Replace with your SkyboxRt asset ID
    SkyboxUp = "rbxassetid://393845287"  -- Replace with your SkyboxUp asset ID
}

-- Pobranie serwisu Lighting i zapisanie oryginalnego skyboxa
local lighting = game:GetService("Lighting")
local originalSkybox = nil
for _, child in pairs(lighting:GetChildren()) do
    if child:IsA("Sky") then
        originalSkybox = child:Clone()
        break
    end
end

-- Funkcja do zmiany skyboxa
local function changeSkybox()
    -- Usuń obecny skybox
    for _, child in pairs(lighting:GetChildren()) do
        if child:IsA("Sky") then
            child:Destroy()
        end
    end

    if getgenv().DarkBlue.Enabled then
        -- Tworzenie nowego skyboxa
        local newSky = Instance.new("Sky")
        newSky.Name = "CustomSkybox"
        newSky.SkyboxBk = skyboxAssets.SkyboxBk
        newSky.SkyboxDn = skyboxAssets.SkyboxDn
        newSky.SkyboxFt = skyboxAssets.SkyboxFt
        newSky.SkyboxLf = skyboxAssets.SkyboxLf
        newSky.SkyboxRt = skyboxAssets.SkyboxRt
        newSky.SkyboxUp = skyboxAssets.SkyboxUp
        newSky.Parent = lighting
    elseif originalSkybox then
        -- Przywróć oryginalny skybox po wyłączeniu
        local restoredSkybox = originalSkybox:Clone()
        restoredSkybox.Parent = lighting
    end
end

-- Monitorowanie zmian w Enabled i aktualizacja skyboxa
task.spawn(function()
    local lastState = getgenv().DarkBlue.Enabled
    while task.wait(1) do -- Sprawdza co sekundę
        if getgenv().DarkBlue.Enabled ~= lastState then
            lastState = getgenv().DarkBlue.Enabled
            changeSkybox()
        end
    end
end)

-- GUI - Przycisk do zmiany skyboxa
SkyboxesSection:AddToggle("Dark Blue", getgenv().DarkBlue.Enabled, function(value)
    getgenv().DarkBlue.Enabled = value -- Poprawiona nazwa zmiennej
    changeSkybox() -- Natychmiastowa aktualizacja skyboxa po zmianie
end)

getgenv().DarkGreen = {
    Enabled = false -- Ustaw na true, jeśli chcesz włączyć
}

-- Konfiguracja skyboxa

local skyboxAssets = {
    SkyboxBk = "rbxassetid://566611187", -- Replace with your SkyboxBk asset ID
    SkyboxDn = "rbxassetid://566613198", -- Replace with your SkyboxDn asset ID
    SkyboxFt = "rbxassetid://566611142", -- Replace with your SkyboxFt asset ID
    SkyboxLf = "rbxassetid://566611266", -- Replace with your SkyboxLf asset ID
    SkyboxRt = "rbxassetid://566611300", -- Replace with your SkyboxRt asset ID
    SkyboxUp = "rbxassetid://566611218"  -- Replace with your SkyboxUp asset ID
}

-- Pobranie serwisu Lighting i zapisanie oryginalnego skyboxa
local lighting = game:GetService("Lighting")
local originalSkybox = nil
for _, child in pairs(lighting:GetChildren()) do
    if child:IsA("Sky") then
        originalSkybox = child:Clone()
        break
    end
end

-- Funkcja do zmiany skyboxa
local function changeSkybox()
    -- Usuń obecny skybox
    for _, child in pairs(lighting:GetChildren()) do
        if child:IsA("Sky") then
            child:Destroy()
        end
    end

    if getgenv().DarkGreen.Enabled then
        -- Tworzenie nowego skyboxa
        local newSky = Instance.new("Sky")
        newSky.Name = "CustomSkybox"
        newSky.SkyboxBk = skyboxAssets.SkyboxBk
        newSky.SkyboxDn = skyboxAssets.SkyboxDn
        newSky.SkyboxFt = skyboxAssets.SkyboxFt
        newSky.SkyboxLf = skyboxAssets.SkyboxLf
        newSky.SkyboxRt = skyboxAssets.SkyboxRt
        newSky.SkyboxUp = skyboxAssets.SkyboxUp
        newSky.Parent = lighting
    elseif originalSkybox then
        -- Przywróć oryginalny skybox po wyłączeniu
        local restoredSkybox = originalSkybox:Clone()
        restoredSkybox.Parent = lighting
    end
end

-- Monitorowanie zmian w Enabled i aktualizacja skyboxa
task.spawn(function()
    local lastState = getgenv().DarkGreen.Enabled
    while task.wait(1) do -- Sprawdza co sekundę
        if getgenv().DarkGreen.Enabled ~= lastState then
            lastState = getgenv().DarkGreen.Enabled
            changeSkybox()
        end
    end
end)

-- GUI - Przycisk do zmiany skyboxa
SkyboxesSection:AddToggle("Dark Green", getgenv().DarkGreen.Enabled, function(value)
    getgenv().DarkGreen.Enabled = value -- Poprawiona nazwa zmiennej
    changeSkybox() -- Natychmiastowa aktualizacja skyboxa po zmianie
end)

getgenv().Red = {
    Enabled = false -- Ustaw na true, jeśli chcesz włączyć
}

-- Konfiguracja skyboxa

local skyboxAssets = {
    SkyboxBk = "rbxassetid://15832429892", -- Replace with your SkyboxBk asset ID
    SkyboxDn = "rbxassetid://15832430998", -- Replace with your SkyboxDn asset ID
    SkyboxFt = "rbxassetid://15832430210", -- Replace with your SkyboxFt asset ID
    SkyboxLf = "rbxassetid://15832430671", -- Replace with your SkyboxLf asset ID
    SkyboxRt = "rbxassetid://15832431198", -- Replace with your SkyboxRt asset ID
    SkyboxUp = "rbxassetid://15832429401"  -- Replace with your SkyboxUp asset ID
}

-- Pobranie serwisu Lighting i zapisanie oryginalnego skyboxa
local lighting = game:GetService("Lighting")
local originalSkybox = nil
for _, child in pairs(lighting:GetChildren()) do
    if child:IsA("Sky") then
        originalSkybox = child:Clone()
        break
    end
end

-- Funkcja do zmiany skyboxa
local function changeSkybox()
    -- Usuń obecny skybox
    for _, child in pairs(lighting:GetChildren()) do
        if child:IsA("Sky") then
            child:Destroy()
        end
    end

    if getgenv().Red.Enabled then
        -- Tworzenie nowego skyboxa
        local newSky = Instance.new("Sky")
        newSky.Name = "CustomSkybox"
        newSky.SkyboxBk = skyboxAssets.SkyboxBk
        newSky.SkyboxDn = skyboxAssets.SkyboxDn
        newSky.SkyboxFt = skyboxAssets.SkyboxFt
        newSky.SkyboxLf = skyboxAssets.SkyboxLf
        newSky.SkyboxRt = skyboxAssets.SkyboxRt
        newSky.SkyboxUp = skyboxAssets.SkyboxUp
        newSky.Parent = lighting
    elseif originalSkybox then
        -- Przywróć oryginalny skybox po wyłączeniu
        local restoredSkybox = originalSkybox:Clone()
        restoredSkybox.Parent = lighting
    end
end

-- Monitorowanie zmian w Enabled i aktualizacja skyboxa
task.spawn(function()
    local lastState = getgenv().Red.Enabled
    while task.wait(1) do -- Sprawdza co sekundę
        if getgenv().Red.Enabled ~= lastState then
            lastState = getgenv().Red.Enabled
            changeSkybox()
        end
    end
end)

-- GUI - Przycisk do zmiany skyboxa
SkyboxesSection:AddToggle("Red", getgenv().Red.Enabled, function(value)
    getgenv().Red.Enabled = value -- Poprawiona nazwa zmiennej
    changeSkybox() -- Natychmiastowa aktualizacja skyboxa po zmianie
end)

getgenv().Pink = {
    Enabled = false -- Ustaw na true, jeśli chcesz włączyć
}

-- Konfiguracja skyboxa

local skyboxAssets = {
    SkyboxBk = "rbxassetid://12635309703", -- Replace with your SkyboxBk asset ID
    SkyboxDn = "rbxassetid://12635311686", -- Replace with your SkyboxDn asset ID
    SkyboxFt = "rbxassetid://12635312870", -- Replace with your SkyboxFt asset ID
    SkyboxLf = "rbxassetid://12635313718", -- Replace with your SkyboxLf asset ID
    SkyboxRt = "rbxassetid://12635315817", -- Replace with your SkyboxRt asset ID
    SkyboxUp = "rbxassetid://12635316856"  -- Replace with your SkyboxUp asset ID
}

-- Pobranie serwisu Lighting i zapisanie oryginalnego skyboxa
local lighting = game:GetService("Lighting")
local originalSkybox = nil
for _, child in pairs(lighting:GetChildren()) do
    if child:IsA("Sky") then
        originalSkybox = child:Clone()
        break
    end
end

-- Funkcja do zmiany skyboxa
local function changeSkybox()
    -- Usuń obecny skybox
    for _, child in pairs(lighting:GetChildren()) do
        if child:IsA("Sky") then
            child:Destroy()
        end
    end

    if getgenv().Pink.Enabled then
        -- Tworzenie nowego skyboxa
        local newSky = Instance.new("Sky")
        newSky.Name = "CustomSkybox"
        newSky.SkyboxBk = skyboxAssets.SkyboxBk
        newSky.SkyboxDn = skyboxAssets.SkyboxDn
        newSky.SkyboxFt = skyboxAssets.SkyboxFt
        newSky.SkyboxLf = skyboxAssets.SkyboxLf
        newSky.SkyboxRt = skyboxAssets.SkyboxRt
        newSky.SkyboxUp = skyboxAssets.SkyboxUp
        newSky.Parent = lighting
    elseif originalSkybox then
        -- Przywróć oryginalny skybox po wyłączeniu
        local restoredSkybox = originalSkybox:Clone()
        restoredSkybox.Parent = lighting
    end
end

-- Monitorowanie zmian w Enabled i aktualizacja skyboxa
task.spawn(function()
    local lastState = getgenv().Pink.Enabled
    while task.wait(1) do -- Sprawdza co sekundę
        if getgenv().Pink.Enabled ~= lastState then
            lastState = getgenv().Pink.Enabled
            changeSkybox()
        end
    end
end)

-- GUI - Przycisk do zmiany skyboxa
SkyboxesSection:AddToggle("Pink", getgenv().Pink.Enabled, function(value)
    getgenv().Pink.Enabled = value -- Poprawiona nazwa zmiennej
    changeSkybox() -- Natychmiastowa aktualizacja skyboxa po zmianie
end)

getgenv().Yellow = {
    Enabled = false -- Ustaw na true, jeśli chcesz włączyć
}

-- Konfiguracja skyboxa

local skyboxAssets = {
    SkyboxBk = "http://www.roblox.com/asset/?id=15670828196", -- Replace with your SkyboxBk asset ID
    SkyboxDn = "http://www.roblox.com/asset/?id=15670829373", -- Replace with your SkyboxDn asset ID
    SkyboxFt = "http://www.roblox.com/asset/?id=15670830476", -- Replace with your SkyboxFt asset ID
    SkyboxLf = "http://www.roblox.com/asset/?id=15670831662", -- Replace with your SkyboxLf asset ID
    SkyboxRt = "http://www.roblox.com/asset/?id=15670833256", -- Replace with your SkyboxRt asset ID
    SkyboxUp = "http://www.roblox.com/asset/?id=15670834206"  -- Replace with your SkyboxUp asset ID
}

-- Pobranie serwisu Lighting i zapisanie oryginalnego skyboxa
local lighting = game:GetService("Lighting")
local originalSkybox = nil
for _, child in pairs(lighting:GetChildren()) do
    if child:IsA("Sky") then
        originalSkybox = child:Clone()
        break
    end
end

-- Funkcja do zmiany skyboxa
local function changeSkybox()
    -- Usuń obecny skybox
    for _, child in pairs(lighting:GetChildren()) do
        if child:IsA("Sky") then
            child:Destroy()
        end
    end

    if getgenv().Yellow.Enabled then
        -- Tworzenie nowego skyboxa
        local newSky = Instance.new("Sky")
        newSky.Name = "CustomSkybox"
        newSky.SkyboxBk = skyboxAssets.SkyboxBk
        newSky.SkyboxDn = skyboxAssets.SkyboxDn
        newSky.SkyboxFt = skyboxAssets.SkyboxFt
        newSky.SkyboxLf = skyboxAssets.SkyboxLf
        newSky.SkyboxRt = skyboxAssets.SkyboxRt
        newSky.SkyboxUp = skyboxAssets.SkyboxUp
        newSky.Parent = lighting
    elseif originalSkybox then
        -- Przywróć oryginalny skybox po wyłączeniu
        local restoredSkybox = originalSkybox:Clone()
        restoredSkybox.Parent = lighting
    end
end

-- Monitorowanie zmian w Enabled i aktualizacja skyboxa
task.spawn(function()
    local lastState = getgenv().Yellow.Enabled
    while task.wait(1) do -- Sprawdza co sekundę
        if getgenv().Yellow.Enabled ~= lastState then
            lastState = getgenv().Yellow.Enabled
            changeSkybox()
        end
    end
end)

-- GUI - Przycisk do zmiany skyboxa
SkyboxesSection:AddToggle("Yellow", getgenv().Yellow.Enabled, function(value)
    getgenv().Yellow.Enabled = value -- Poprawiona nazwa zmiennej
    changeSkybox() -- Natychmiastowa aktualizacja skyboxa po zmianie
end)

getgenv().Orange = {
    Enabled = false -- Ustaw na true, jeśli chcesz włączyć
}

-- Konfiguracja skyboxa

local skyboxAssets = {
    SkyboxBk = "http://www.roblox.com/asset/?id=150939022", -- Replace with your SkyboxBk asset ID
    SkyboxDn = "http://www.roblox.com/asset/?id=150939038", -- Replace with your SkyboxDn asset ID
    SkyboxFt = "http://www.roblox.com/asset/?id=150939047", -- Replace with your SkyboxFt asset ID
    SkyboxLf = "http://www.roblox.com/asset/?id=150939056", -- Replace with your SkyboxLf asset ID
    SkyboxRt = "http://www.roblox.com/asset/?id=150939063", -- Replace with your SkyboxRt asset ID
    SkyboxUp = "http://www.roblox.com/asset/?id=150939082"  -- Replace with your SkyboxUp asset ID
}

-- Pobranie serwisu Lighting i zapisanie oryginalnego skyboxa
local lighting = game:GetService("Lighting")
local originalSkybox = nil
for _, child in pairs(lighting:GetChildren()) do
    if child:IsA("Sky") then
        originalSkybox = child:Clone()
        break
    end
end

-- Funkcja do zmiany skyboxa
local function changeSkybox()
    -- Usuń obecny skybox
    for _, child in pairs(lighting:GetChildren()) do
        if child:IsA("Sky") then
            child:Destroy()
        end
    end

    if getgenv().Orange.Enabled then
        -- Tworzenie nowego skyboxa
        local newSky = Instance.new("Sky")
        newSky.Name = "CustomSkybox"
        newSky.SkyboxBk = skyboxAssets.SkyboxBk
        newSky.SkyboxDn = skyboxAssets.SkyboxDn
        newSky.SkyboxFt = skyboxAssets.SkyboxFt
        newSky.SkyboxLf = skyboxAssets.SkyboxLf
        newSky.SkyboxRt = skyboxAssets.SkyboxRt
        newSky.SkyboxUp = skyboxAssets.SkyboxUp
        newSky.Parent = lighting
    elseif originalSkybox then
        -- Przywróć oryginalny skybox po wyłączeniu
        local restoredSkybox = originalSkybox:Clone()
        restoredSkybox.Parent = lighting
    end
end

-- Monitorowanie zmian w Enabled i aktualizacja skyboxa
task.spawn(function()
    local lastState = getgenv().Orange.Enabled
    while task.wait(1) do -- Sprawdza co sekundę
        if getgenv().Orange.Enabled ~= lastState then
            lastState = getgenv().Orange.Enabled
            changeSkybox()
        end
    end
end)

-- GUI - Przycisk do zmiany skyboxa
SkyboxesSection:AddToggle("Orange", getgenv().Orange.Enabled, function(value)
    getgenv().Orange.Enabled = value -- Poprawiona nazwa zmiennej
    changeSkybox() -- Natychmiastowa aktualizacja skyboxa po zmianie
end)

getgenv().Green = {
    Enabled = false -- Ustaw na true, jeśli chcesz włączyć
}

-- Konfiguracja skyboxa

local skyboxAssets = {
    SkyboxBk = "rbxassetid://11941775243", -- Replace with your SkyboxBk asset ID
    SkyboxDn = "rbxassetid://11941774975", -- Replace with your SkyboxDn asset ID
    SkyboxFt = "rbxassetid://11941774655", -- Replace with your SkyboxFt asset ID
    SkyboxLf = "rbxassetid://11941774369", -- Replace with your SkyboxLf asset ID
    SkyboxRt = "rbxassetid://11941774042", -- Replace with your SkyboxRt asset ID
    SkyboxUp = "rbxassetid://11941773718"  -- Replace with your SkyboxUp asset ID
}

-- Pobranie serwisu Lighting i zapisanie oryginalnego skyboxa
local lighting = game:GetService("Lighting")
local originalSkybox = nil
for _, child in pairs(lighting:GetChildren()) do
    if child:IsA("Sky") then
        originalSkybox = child:Clone()
        break
    end
end

-- Funkcja do zmiany skyboxa
local function changeSkybox()
    -- Usuń obecny skybox
    for _, child in pairs(lighting:GetChildren()) do
        if child:IsA("Sky") then
            child:Destroy()
        end
    end

    if getgenv().Green.Enabled then
        -- Tworzenie nowego skyboxa
        local newSky = Instance.new("Sky")
        newSky.Name = "CustomSkybox"
        newSky.SkyboxBk = skyboxAssets.SkyboxBk
        newSky.SkyboxDn = skyboxAssets.SkyboxDn
        newSky.SkyboxFt = skyboxAssets.SkyboxFt
        newSky.SkyboxLf = skyboxAssets.SkyboxLf
        newSky.SkyboxRt = skyboxAssets.SkyboxRt
        newSky.SkyboxUp = skyboxAssets.SkyboxUp
        newSky.Parent = lighting
    elseif originalSkybox then
        -- Przywróć oryginalny skybox po wyłączeniu
        local restoredSkybox = originalSkybox:Clone()
        restoredSkybox.Parent = lighting
    end
end

-- Monitorowanie zmian w Enabled i aktualizacja skyboxa
task.spawn(function()
    local lastState = getgenv().Green.Enabled
    while task.wait(1) do -- Sprawdza co sekundę
        if getgenv().Green.Enabled ~= lastState then
            lastState = getgenv().Green.Enabled
            changeSkybox()
        end
    end
end)

SkyboxesSection:AddToggle("Green", getgenv().Green.Enabled, function(value)
    getgenv().Green.Enabled = value -- Poprawiona nazwa zmiennej
    changeSkybox() -- Natychmiastowa aktualizacja skyboxa po zmianie
end)
