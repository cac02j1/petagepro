--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.9) ~  Much Love, Ferib 

]]--

local v0=game.Players.LocalPlayer;local v1=v0.Character or v0.CharacterAdded:Wait() ;local v2=Instance.new("ScreenGui",v0:WaitForChild("PlayerGui"));v2.Name="PetAgeManualGUI";v2.ResetOnSpawn=false;local v5=Instance.new("Frame",v2);v5.Size=UDim2.new(0,140,0,50);v5.Position=UDim2.new(0.5, -70,0.7,0);v5.BackgroundColor3=Color3.fromRGB(30,30,30);v5.Active=true;v5.Draggable=true;Instance.new("UICorner",v5).CornerRadius=UDim.new(0,12);local v12=Instance.new("TextButton",v5);v12.Size=UDim2.new(1, -10,1, -10);v12.Position=UDim2.new(0,5,0,5);v12.Text="đŸŒˆ Pet Age Pro";v12.TextColor3=Color3.new(1,1,1);v12.Font=Enum.Font.GothamBold;v12.TextScaled=true;Instance.new("UICorner",v12).CornerRadius=UDim.new(0,10);spawn(function() while true do for v23=0,1,0.01 do v12.BackgroundColor3=Color3.fromHSV(v23,1,1);wait(0.03);end end end);v12.MouseButton1Click:Connect(function() for v21,v22 in ipairs(v1:GetChildren()) do if v22:IsA("Tool") then if v22:GetAttribute("AgeLocked") then return;end local v25=v22.Name;if v25:find("%[Age%s*%d+%]") then local v26=v25:gsub("%[Age%s*%d+%]","[Age 100]");v22.Name=v26;else v22.Name="Pet Age ProđŸ¤–";end v22:SetAttribute("AgeLocked",true);end end end);
