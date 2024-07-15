
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("Daw Hub | Small menu", "RJTheme3")

local Tab = Window:NewTab("Главная страница")

local Section = Tab:NewSection("Main")

-- Кнопка ESP
Section:NewButton("Включить ESP игроков", "Включает подсветку игроков на сервере.", function()
    while wait(0.5) do
        for i, childrik in ipairs(workspace:GetDescendants()) do
            if childrik:FindFirstChild("Humanoid") then
                if not childrik:FindFirstChild("EspBox") then
                    if childrik ~= game.Players.LocalPlayer.Character then
                        local esp = Instance.new("BoxHandleAdornment",childrik)
                        esp.Adornee = childrik
                        esp.ZIndex = 0
                        esp.Size = Vector3.new(4, 5, 1)
                        esp.Transparency = 0.7
                        esp.Color3 = Color3.fromRGB(147,112,219)
                        esp.AlwaysOnTop = true
                        esp.Name = "EspBox"
                    end
                end
            end
        end
    end
end)

-- Кнопка Контр Делит
Section:NewButton("Включить Контр Делит", "Включает комбинацию Ctrl + LCM которая удаляет объекты.)", function()
    local Plr = game:GetService("Players").LocalPlayer
local Mouse = Plr:GetMouse()
 
Mouse.Button1Down:connect(function()
if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then return end
if not Mouse.Target then return end
Mouse.Target:Destroy()
end)
end)

-- Сила прыжка
Section:NewSlider("Силы прыжка", "Изменяет Силу прыжка игрока.", 300, 10, function(s) -- 300 (Максимальное значение) | 10 (Минимальное значение)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

-- Cкорость
Section:NewSlider("Скорость", "Изменяет скорорость игрока.", 165, 10, function(s) -- 165 (Максимальное значение) | 10 (Минимальное значение)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

local Tab = Window:NewTab("Hub")

-- Подсекция
local Section = Tab:NewSection("Scripts")

-- Infiniteyield
Section:NewLabel("Админ панель | Infiniteyield")

-- Кнопка Infiniteyield
Section:NewButton("Infiniteyield", "Открывает панель Infiniteyield.", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end)

-- Sinret
Section:NewLabel("Sinret Hub | Sinret")

-- Кнопка sinret
Section:NewButton("Sinret Hub", "Открывает панель Sinret.", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/sinret/rbxscript.com-scripts-reuploads-/main/univ6", true))()
end)

-- Daw AIM Bot
Section:NewLabel("Daw AIM Bot| AIM Bot")

-- Кнопка Daw AIM Bot
Section:NewButton("Daw AIM Bot", "Открывает панель Daw AIM Bot.", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/Daw666/Daw666/main/Daw666717243124.lua'),true))()
end)

-- Dex
Section:NewLabel("Dex| Dex")

-- Кнопка Dex
Section:NewButton("Dex", "Открывает панель Dex.", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/DannyH3103/scripts/main/Hydrogen_DEXV4"))()
end)

-- ACS
Section:NewLabel("ACS| ACS")

-- Кнопка Crash ACS
Section:NewButton("Daw ACS", "Открывает панель Daw ACS.", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/Daw666/D/main/Daw421421412412'),true))()
end)

-- SkyHub
Section:NewLabel("SkyHub| SkyHub")

-- Кнопка SkyHub
Section:NewButton("SkyHub", "Открывает панель SkyHub.", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub/main/SkyHub.txt"))() 
end)
