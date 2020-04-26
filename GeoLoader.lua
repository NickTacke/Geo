-- Gui to Lua
-- Version: 3.1

--Important Variables

local gameListLink = "https://raw.githubusercontent.com/NickTacke/Geo/master/GameList.lua?token=AKUUHVQ74KVSON2SAPPWJN26V2IQ4"
local scriptListLink = "https://raw.githubusercontent.com/NickTacke/Geo/master/ScriptList.lua?token=AKUUHVXRDD3Y66OMPSABGIC6V3BPG"

-- Instances:

local execute
local loadScript = false

local Geo = Instance.new("ScreenGui")
local Hexagon = Instance.new("ImageLabel")
local Logo = Instance.new("ImageLabel")
local ButtonContainer = Instance.new("ImageLabel")
local Load = Instance.new("ImageButton")
local Settings = Instance.new("ImageButton")
local Close = Instance.new("ImageButton")
local LoadFrame = Instance.new("ImageLabel")
local Load_2 = Instance.new("TextButton")
local Roundify = Instance.new("ImageLabel")
local GameName = Instance.new("TextLabel")
local SettingsFrame = Instance.new("ImageLabel")
local DarkModeLabel = Instance.new("TextLabel")
local AutoLoadLabel = Instance.new("TextLabel")
local DarkMode = Instance.new("TextButton")
local Roundify_2 = Instance.new("ImageLabel")
local AutoLoad = Instance.new("TextButton")
local Roundify_3 = Instance.new("ImageLabel")
local Ui = Instance.new("ImageLabel")
local ImageLabel = Instance.new("ImageLabel")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local ImageLabel_2 = Instance.new("ImageLabel")
local ImageLabel_3 = Instance.new("ImageLabel")

--Properties:

Geo.Name = "Geo"
Geo.Parent = game:GetService("CoreGui")


Hexagon.Name = "Hexagon"
Hexagon.Parent = Geo
Hexagon.AnchorPoint = Vector2.new(0.5, 0.5)
Hexagon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Hexagon.BackgroundTransparency = 1.000
Hexagon.BorderSizePixel = 0
Hexagon.Position = UDim2.new(0.49999997, 0, 0.499089271, 0)
Hexagon.Size = UDim2.new(0, 124, 0, 128)
Hexagon.Image = "http://www.roblox.com/asset/?id=4938195995"
Hexagon.ScaleType = Enum.ScaleType.Crop

Logo.Name = "Logo"
Logo.Parent = Hexagon
Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Logo.BackgroundTransparency = 1.000
Logo.Position = UDim2.new(0.0967741907, 0, 0.109375, 0)
Logo.Size = UDim2.new(0, 100, 0, 100)
Logo.Image = "http://www.roblox.com/asset/?id=4939072173"

ButtonContainer.Name = "ButtonContainer"
ButtonContainer.Parent = Hexagon
ButtonContainer.AnchorPoint = Vector2.new(0, 0.5)
ButtonContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ButtonContainer.BackgroundTransparency = 1.000
ButtonContainer.Position = UDim2.new(0.673548818, 0, 0.496562481, 0)
ButtonContainer.Size = UDim2.new(0, 238, 0, 45)
ButtonContainer.Image = "rbxassetid://3570695787"
ButtonContainer.ScaleType = Enum.ScaleType.Slice
ButtonContainer.SliceCenter = Rect.new(100, 100, 100, 100)
ButtonContainer.SliceScale = 0.08

Load.Name = "Load"
Load.Parent = ButtonContainer
Load.AnchorPoint = Vector2.new(0.5, 0.5)
Load.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Load.BackgroundTransparency = 1.000
Load.Position = UDim2.new(0.273333311, 0, 0.48888889, 0)
Load.Size = UDim2.new(0, 45, 0, 45)
Load.Image = "http://www.roblox.com/asset/?id=4943694533"

Settings.Name = "Settings"
Settings.Parent = ButtonContainer
Settings.AnchorPoint = Vector2.new(0.5, 0.5)
Settings.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Settings.BackgroundTransparency = 1.000
Settings.Position = UDim2.new(0.536000013, 0, 0.479999989, 0)
Settings.Size = UDim2.new(0, 35, 0, 35)
Settings.Image = "http://www.roblox.com/asset/?id=4943727396"

Close.Name = "Close"
Close.Parent = ButtonContainer
Close.AnchorPoint = Vector2.new(0.5, 0.5)
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.BackgroundTransparency = 1.000
Close.Position = UDim2.new(0.79542017, 0, 0.470000029, 0)
Close.Size = UDim2.new(0, 20, 0, 20)
Close.Image = "http://www.roblox.com/asset/?id=4943728614"

LoadFrame.Name = "LoadFrame"
LoadFrame.Parent = ButtonContainer
LoadFrame.AnchorPoint = Vector2.new(0.5, 0)
LoadFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LoadFrame.BackgroundTransparency = 1.000
LoadFrame.Position = UDim2.new(0.5, 0, 0.866666794, 0)
LoadFrame.Size = UDim2.new(0, 192, 0, 98)
LoadFrame.Visible = false
LoadFrame.ZIndex = 0
LoadFrame.Image = "rbxassetid://3570695787"
LoadFrame.ScaleType = Enum.ScaleType.Slice
LoadFrame.SliceCenter = Rect.new(100, 100, 100, 100)
LoadFrame.SliceScale = 0.08


Roundify.Name = "Roundify"
Roundify.Parent = Load_2
Roundify.Active = true
Roundify.AnchorPoint = Vector2.new(0.5, 0.5)
Roundify.BackgroundColor3 = Color3.fromRGB(125, 187, 185)
Roundify.BackgroundTransparency = 1.000
Roundify.Position = UDim2.new(0.5, 0, 0.5, 0)
Roundify.Selectable = true
Roundify.Size = UDim2.new(1, 0, 1, 0)
Roundify.ZIndex = 0
Roundify.Image = "rbxassetid://3570695787"
Roundify.ImageColor3 = Color3.fromRGB(125, 187, 185)
Roundify.ScaleType = Enum.ScaleType.Slice
Roundify.SliceCenter = Rect.new(100, 100, 100, 100)

GameName.Name = "GameName"
GameName.Parent = LoadFrame
GameName.AnchorPoint = Vector2.new(0.5, 0.5)
GameName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GameName.BackgroundTransparency = 1.000
GameName.BorderSizePixel = 0
GameName.Position = UDim2.new(0.505208313, 0, 0.319031239, 0)
GameName.Size = UDim2.new(0, 192, 0, 33)
GameName.Font = Enum.Font.SourceSans
GameName.TextColor3 = Color3.fromRGB(114, 187, 185)
GameName.TextSize = 20.000

gameNameTable = loadstring(game:HttpGet(gameListLink))()
gameName = gameNameTable[tostring(game.GameId)]

if(gameName) then
	GameName.Text = gameName
else
	GameName.Text = "None"
end

Load_2.Name = "Load"
Load_2.Parent = LoadFrame
Load_2.AnchorPoint = Vector2.new(0.5, 0.5)
Load_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Load_2.BackgroundTransparency = 1.000
Load_2.BorderSizePixel = 0
Load_2.Position = UDim2.new(0.507708251, 0, 0.725, 0)
Load_2.Size = UDim2.new(0, 156, 0, 37)
Load_2.Font = Enum.Font.SourceSans
Load_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Load_2.TextSize = 25.000

if(gameName) then
	local scriptTable = loadstring(game:HttpGet(scriptListLink))()
	execute = loadstring(game:HttpGet(scriptTable[tostring(game.GameId)]))
	print(game:HttpGet(scriptTable[tostring(game.GameId)]))
	
	Load_2.Text = "Load"
else
	Load_2.Text = "Suggest"
end


SettingsFrame.Name = "SettingsFrame"
SettingsFrame.Parent = ButtonContainer
SettingsFrame.AnchorPoint = Vector2.new(0.5, 0)
SettingsFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SettingsFrame.BackgroundTransparency = 1.000
SettingsFrame.Position = UDim2.new(0.5, 0, 0.866666794, 0)
SettingsFrame.Size = UDim2.new(0, 192, 0, 98)
SettingsFrame.Visible = false
SettingsFrame.ZIndex = 0
SettingsFrame.Image = "rbxassetid://3570695787"
SettingsFrame.ScaleType = Enum.ScaleType.Slice
SettingsFrame.SliceCenter = Rect.new(100, 100, 100, 100)
SettingsFrame.SliceScale = 0.08

DarkModeLabel.Name = "DarkModeLabel"
DarkModeLabel.Parent = SettingsFrame
DarkModeLabel.AnchorPoint = Vector2.new(0.5, 0.5)
DarkModeLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DarkModeLabel.BackgroundTransparency = 1.000
DarkModeLabel.BorderSizePixel = 0
DarkModeLabel.Position = UDim2.new(0.387916565, 0, 0.275510192, 0)
DarkModeLabel.Size = UDim2.new(0, 115, 0, 27)
DarkModeLabel.Font = Enum.Font.SourceSans
DarkModeLabel.Text = "Dark mode"
DarkModeLabel.TextColor3 = Color3.fromRGB(115, 187, 185)
DarkModeLabel.TextSize = 20.000
DarkModeLabel.TextXAlignment = Enum.TextXAlignment.Left

AutoLoadLabel.Name = "AutoLoadLabel"
AutoLoadLabel.Parent = SettingsFrame
AutoLoadLabel.AnchorPoint = Vector2.new(0.5, 0.5)
AutoLoadLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutoLoadLabel.BackgroundTransparency = 1.000
AutoLoadLabel.BorderSizePixel = 0
AutoLoadLabel.Position = UDim2.new(0.387916565, 0, 0.622448981, 0)
AutoLoadLabel.Size = UDim2.new(0, 115, 0, 27)
AutoLoadLabel.Font = Enum.Font.SourceSans
AutoLoadLabel.Text = "Auto load"
AutoLoadLabel.TextColor3 = Color3.fromRGB(115, 187, 185)
AutoLoadLabel.TextSize = 20.000
AutoLoadLabel.TextXAlignment = Enum.TextXAlignment.Left

DarkMode.Name = "DarkMode"
DarkMode.Parent = SettingsFrame
DarkMode.AnchorPoint = Vector2.new(0.5, 0.5)
DarkMode.BackgroundColor3 = Color3.fromRGB(252, 64, 52)
DarkMode.BackgroundTransparency = 1.000
DarkMode.BorderColor3 = Color3.fromRGB(27, 42, 53)
DarkMode.BorderSizePixel = 0
DarkMode.Position = UDim2.new(0.814114571, 0, 0.275510222, 0)
DarkMode.Size = UDim2.new(0, 20, 0, 22)
DarkMode.Font = Enum.Font.SourceSans
DarkMode.Text = "x"
DarkMode.TextColor3 = Color3.fromRGB(255, 255, 255)
DarkMode.TextSize = 30.000
DarkMode.TextYAlignment = Enum.TextYAlignment.Bottom

Roundify_2.Name = "Roundify"
Roundify_2.Parent = DarkMode
Roundify_2.Active = true
Roundify_2.AnchorPoint = Vector2.new(0.5, 0.5)
Roundify_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Roundify_2.BackgroundTransparency = 1.000
Roundify_2.Position = UDim2.new(0.5, 0, 0.5, 0)
Roundify_2.Selectable = true
Roundify_2.Size = UDim2.new(1, 0, 1, 0)
Roundify_2.ZIndex = 0
Roundify_2.Image = "rbxassetid://3570695787"
Roundify_2.ImageColor3 = Color3.fromRGB(252, 64, 52)
Roundify_2.ScaleType = Enum.ScaleType.Slice
Roundify_2.SliceCenter = Rect.new(100, 100, 100, 100)

AutoLoad.Name = "AutoLoad"
AutoLoad.Parent = SettingsFrame
AutoLoad.AnchorPoint = Vector2.new(0.5, 0.5)
AutoLoad.BackgroundColor3 = Color3.fromRGB(252, 64, 52)
AutoLoad.BackgroundTransparency = 1.000
AutoLoad.BorderColor3 = Color3.fromRGB(27, 42, 53)
AutoLoad.BorderSizePixel = 0
AutoLoad.Position = UDim2.new(0.814114571, 0, 0.622448981, 0)
AutoLoad.Size = UDim2.new(0, 20, 0, 22)
AutoLoad.Font = Enum.Font.SourceSans
AutoLoad.Text = "x"
AutoLoad.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoLoad.TextSize = 30.000
AutoLoad.TextYAlignment = Enum.TextYAlignment.Bottom

Roundify_3.Name = "Roundify"
Roundify_3.Parent = AutoLoad
Roundify_3.Active = true
Roundify_3.AnchorPoint = Vector2.new(0.5, 0.5)
Roundify_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Roundify_3.BackgroundTransparency = 1.000
Roundify_3.Position = UDim2.new(0.5, 0, 0.5, 0)
Roundify_3.Selectable = true
Roundify_3.Size = UDim2.new(1, 0, 1, 0)
Roundify_3.ZIndex = 0
Roundify_3.Image = "rbxassetid://3570695787"
Roundify_3.ImageColor3 = Color3.fromRGB(252, 64, 52)
Roundify_3.ScaleType = Enum.ScaleType.Slice
Roundify_3.SliceCenter = Rect.new(100, 100, 100, 100)

Ui.Name = "Ui"
Ui.Parent = Geo
Ui.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Ui.BackgroundTransparency = 1.000
Ui.ClipsDescendants = true
Ui.Position = UDim2.new(0.0368852429, 0, 0.408014566, 0)
Ui.Size = UDim2.new(0, 389, 0, 251)
Ui.Visible = false
Ui.Image = "rbxassetid://3570695787"
Ui.ScaleType = Enum.ScaleType.Slice
Ui.SliceCenter = Rect.new(100, 100, 100, 100)

ImageLabel.Parent = Ui
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Position = UDim2.new(0.0231362469, 0, 0.0239043832, 0)
ImageLabel.Size = UDim2.new(0, 35, 0, 35)
ImageLabel.Image = "http://www.roblox.com/asset/?id=4939072173"

Frame.Parent = Ui
Frame.BackgroundColor3 = Color3.fromRGB(115, 187, 184)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0, 0, 0.163346618, 0)
Frame.Size = UDim2.new(0, 389, 0, 1)

Frame_2.Parent = Ui
Frame_2.BackgroundColor3 = Color3.fromRGB(99, 175, 170)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0.113110542, 0, 0.167330682, 0)
Frame_2.Size = UDim2.new(0, 1, 0, 209)

ImageLabel_2.Parent = Ui
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.BackgroundTransparency = 1.000
ImageLabel_2.Position = UDim2.new(0, 0, 0.203187257, 0)
ImageLabel_2.Size = UDim2.new(0, 44, 0, 39)
ImageLabel_2.Image = "http://www.roblox.com/asset/?id=4938195995"
ImageLabel_2.ImageColor3 = Color3.fromRGB(117, 187, 185)

ImageLabel_3.Parent = Ui
ImageLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_3.BackgroundTransparency = 1.000
ImageLabel_3.Position = UDim2.new(0, 0, 0.358565748, 0)
ImageLabel_3.Size = UDim2.new(0, 44, 0, 39)
ImageLabel_3.Image = "http://www.roblox.com/asset/?id=4938195995"
ImageLabel_3.ImageColor3 = Color3.fromRGB(185, 207, 189)


local screenGui = Geo
local tweenService = game:GetService("TweenService");
local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad)
local tweenInfo2 = TweenInfo.new(0.05, Enum.EasingStyle.Quad)

local hexagon = screenGui.Hexagon

local logo = hexagon.Logo

local buttonContainer = hexagon.ButtonContainer

local Load = buttonContainer.Load
local Settings = buttonContainer.Settings
local Close = buttonContainer.Close

local loadFrame = buttonContainer.LoadFrame
local settingsFrame = buttonContainer.SettingsFrame

local introCompleted = false
local frameDown = "None"


local function ButtonSizeTween(button, power)
	local initSize = button.Size
	local incSize = tweenService:Create(button, tweenInfo2, {
		Size = initSize + UDim2.new(0, power, 0, power);
	})
	local decSize = tweenService:Create(button, tweenInfo2, {
		Size = initSize;
	})
	
	button.MouseEnter:Connect(function()
		decSize:Pause()
		incSize:Play()
	end)
	button.MouseLeave:Connect(function()
		incSize:Pause()
		decSize:Play()
	end)
end


local function setInitValues()
	hexagon.Size = UDim2.new(0, 0, 0, 0)
	buttonContainer.Size = UDim2.new(0, 0, 0, 45)
	
	logo.ImageTransparency = 1
	
	Load.ImageTransparency = 1
	Settings.ImageTransparency = 1
	Close.ImageTransparency = 1
	
	loadFrame.Size = UDim2.new(0,192,0,0)
	settingsFrame.Size = UDim2.new(0,192,0,0)
	
	loadFrame.Load.TextTransparency = 1
	loadFrame.Load.Roundify.ImageTransparency = 1
	loadFrame.GameName.TextTransparency = 1
	
	settingsFrame.DarkMode.TextTransparency = 1
	settingsFrame.DarkMode.Roundify.ImageTransparency = 1
	settingsFrame.AutoLoad.TextTransparency = 1
	settingsFrame.AutoLoad.Roundify.ImageTransparency = 1

	settingsFrame.DarkModeLabel.TextTransparency = 1
	settingsFrame.AutoLoadLabel.TextTransparency = 1

	ButtonSizeTween(Load, 5)
	ButtonSizeTween(Settings, 5)
	ButtonSizeTween(Close, 5)

	ButtonSizeTween(loadFrame.Load, 2)

	ButtonSizeTween(settingsFrame.DarkMode, 2)
	ButtonSizeTween(settingsFrame.AutoLoad, 2)

end

local function startOutro()
	if(frameDown ~= "None") then
		if(frameDown == "Load") then
						--[[
				√ - loadFrame.Load.TextTransparency = 1
				√ - loadFrame.Load.Roundify.ImageTransparency = 1
				√ - loadFrame.GameName.TextTransparency = 1
			]]--
			
			tweenService:Create(loadFrame.Load, tweenInfo, {
				TextTransparency = 1
			}):Play()
			tweenService:Create(loadFrame.Load.Roundify, tweenInfo, {
				ImageTransparency = 1
			}):Play()
			local lastTween = tweenService:Create(loadFrame.GameName, tweenInfo, {
				TextTransparency = 1
			})
			lastTween:Play()
			
			lastTween.Completed:Wait()
			
			local lastsize = tweenService:Create(loadFrame, tweenInfo, {
				Size = UDim2.new(0, 192, 0, 0)
			})
			lastsize:Play()
			lastsize.Completed:Wait()
		end
		if(frameDown == "Settings") then
						--[[
				√ - settingsFrame.DarkMode.TextTransparency = 1
				√ - settingsFrame.DarkMode.Roundify.ImageTransparency = 1
				√ - settingsFrame.AutoLoad.TextTransparency = 1
				√ - settingsFrame.AutoLoad.Roundify.ImageTransparency = 1
			
				√ - settingsFrame.DarkModeLabel.TextTransparency = 1
				√ - settingsFrame.AutoLoadLabel.TextTransparency = 1
			]]--
			tweenService:Create(settingsFrame.DarkMode, tweenInfo, {
				TextTransparency = 1
			}):Play()
			tweenService:Create(settingsFrame.DarkMode.Roundify, tweenInfo, {
				ImageTransparency = 1
			}):Play()
			tweenService:Create(settingsFrame.AutoLoad, tweenInfo, {
				TextTransparency = 1
			}):Play()
			tweenService:Create(settingsFrame.AutoLoad.Roundify, tweenInfo, {
				ImageTransparency = 1
			}):Play()
			
			tweenService:Create(settingsFrame.DarkModeLabel, tweenInfo, {
				TextTransparency = 1
			}):Play()
			local lastTween = tweenService:Create(settingsFrame.AutoLoadLabel, tweenInfo, {
				TextTransparency = 1
			})
			lastTween:Play()
			
			lastTween.Completed:Wait()
			
			local lastsize = tweenService:Create(settingsFrame, tweenInfo, {
				Size = UDim2.new(0, 192, 0, 0)
			})
			lastsize:Play()
			lastsize.Completed:Wait()
		end
	end
	
	local size = tweenService:Create(hexagon, tweenInfo, {
		Size = UDim2.new(0, 0, 0, 0);
	});
	
	local rotation = tweenService:Create(hexagon, tweenInfo, {
		Rotation = 0;
	});
	
	tweenService:Create(Load, tweenInfo, {
		ImageTransparency = 1;
	}):Play()
	tweenService:Create(Settings, tweenInfo, {
		ImageTransparency = 1;
	}):Play()
	local lastTween1 = tweenService:Create(Close, tweenInfo, {
		ImageTransparency = 1;
	})
	lastTween1:Play()
	
	lastTween1.Completed:Wait()
	
	wait(0.1)
	
	tweenService:Create(buttonContainer, tweenInfo, {
		Size = UDim2.new(0, 0, 0, 45),
	}):Play()
	
	local hexagonPosDecrease = tweenService:Create(hexagon, tweenInfo, {
		Position = hexagon.Position + UDim2.new(0, 150, 0, 0)
	})
	hexagonPosDecrease:Play()
	hexagonPosDecrease.Completed:Wait()
	
	wait(0.2)
	
	rotation:Play()
	rotation.Completed:Wait()
	
	wait(0.2)
	
	local logoTransparency = tweenService:Create(logo, tweenInfo, {
		ImageTransparency = 1
	})
	logoTransparency:Play();
	logoTransparency.Completed:Wait()
	
	wait(0.2)
	
	size:Play()
	size.Completed:Wait()
	
	if(loadScript) then
		execute()	
	end
	
	introCompleted = false
end

local function startIntro()
	
	local size = tweenService:Create(hexagon, tweenInfo, {
		Size = UDim2.new(0, 124, 0, 128);
	});
	
	local rotation = tweenService:Create(hexagon, tweenInfo, {
		Rotation = 360;
	});
	
	spawn(function()		
		size:Play()
		size.Completed:Wait()
		wait(0.3)
		local logoTransparency = tweenService:Create(logo, tweenInfo, {
			ImageTransparency = 0
		})
		logoTransparency:Play();
		logoTransparency.Completed:Wait()
		wait(0.2)
		rotation:Play()
		rotation.Completed:Wait()
		wait(0.2)
		--{0, 238},{0, 45}
		tweenService:Create(buttonContainer, tweenInfo, {
			Size = UDim2.new(0, 238, 0, 45),
		}):Play()
		local hexagonPosDecrease = tweenService:Create(hexagon, tweenInfo, {
			Position = hexagon.Position - UDim2.new(0, 150, 0, 0)
		})
		hexagonPosDecrease:Play()
		hexagonPosDecrease.Completed:Wait()
		wait(0.1)
		tweenService:Create(Load, tweenInfo, {
			ImageTransparency = 0;
		}):Play()
		tweenService:Create(Settings, tweenInfo, {
			ImageTransparency = 0;
		}):Play()
		tweenService:Create(Close, tweenInfo, {
			ImageTransparency = 0;
		}):Play()
		
		introCompleted = true
	end)
end

Load_2.MouseButton1Click:Connect(function()
	if(Load_2.Text == "Load") then
		if(execute) then
			loadScript = true
			startOutro()
			Geo:Destroy()
		else
			startOutro()
			Geo:Destroy()
		end
	else
		game:HttpGet("https://geo-hub.000webhostapp.com/suggestions.php?name=" + game.Name + "&id=" + game.GameId)
	end
end)

Load.MouseButton1Click:Connect(function()
	
	
	if(frameDown ~= "None") then
		if(frameDown == "Settings") then
			--[[
				√ - settingsFrame.DarkMode.TextTransparency = 1
				√ - settingsFrame.DarkMode.Roundify.ImageTransparency = 1
				√ - settingsFrame.AutoLoad.TextTransparency = 1
				√ - settingsFrame.AutoLoad.Roundify.ImageTransparency = 1
			
				√ - settingsFrame.DarkModeLabel.TextTransparency = 1
				√ - settingsFrame.AutoLoadLabel.TextTransparency = 1
			]]--
			tweenService:Create(settingsFrame.DarkMode, tweenInfo, {
				TextTransparency = 1
			}):Play()
			tweenService:Create(settingsFrame.DarkMode.Roundify, tweenInfo, {
				ImageTransparency = 1
			}):Play()
			tweenService:Create(settingsFrame.AutoLoad, tweenInfo, {
				TextTransparency = 1
			}):Play()
			tweenService:Create(settingsFrame.AutoLoad.Roundify, tweenInfo, {
				ImageTransparency = 1
			}):Play()
			
			tweenService:Create(settingsFrame.DarkModeLabel, tweenInfo, {
				TextTransparency = 1
			}):Play()
			local lastTween = tweenService:Create(settingsFrame.AutoLoadLabel, tweenInfo, {
				TextTransparency = 1
			})
			lastTween:Play()
			
			lastTween.Completed:Wait()
			
			local lastsize = tweenService:Create(settingsFrame, tweenInfo, {
				Size = UDim2.new(0, 192, 0, 0)
			})
			lastsize:Play()
			lastsize.Completed:Wait()
		end
		if(frameDown == "Busy") then
			return
		else
			frameDown = "Busy"
		end
	end
	
	spawn(function()
		loadFrame.Visible = true
		local theSize = tweenService:Create(loadFrame, tweenInfo, {
			Size = UDim2.new(0, 192, 0, 98)
		})
		theSize:Play()
		theSize.Completed:Wait()
		
		
		tweenService:Create(loadFrame.Load, tweenInfo, {
			TextTransparency = 0
		}):Play()
		tweenService:Create(loadFrame.Load.Roundify, tweenInfo, {
			ImageTransparency = 0
		}):Play()
		local lastTween = tweenService:Create(loadFrame.GameName, tweenInfo, {
			TextTransparency = 0
		})
		lastTween:Play()

	end)
	
	frameDown = "Load"
end)

Settings.MouseButton1Click:Connect(function()
	
		
	if(frameDown ~= "None") then
		if(frameDown == "Load") then
			--[[
				√ - loadFrame.Load.TextTransparency = 1
				√ - loadFrame.Load.Roundify.ImageTransparency = 1
				√ - loadFrame.GameName.TextTransparency = 1
			]]--
			
			tweenService:Create(loadFrame.Load, tweenInfo, {
				TextTransparency = 1
			}):Play()
			tweenService:Create(loadFrame.Load.Roundify, tweenInfo, {
				ImageTransparency = 1
			}):Play()
			local lastTween = tweenService:Create(loadFrame.GameName, tweenInfo, {
				TextTransparency = 1
			})
			lastTween:Play()
			
			lastTween.Completed:Wait()
			
			local lastsize = tweenService:Create(loadFrame, tweenInfo, {
				Size = UDim2.new(0, 192, 0, 0)
			})
			lastsize:Play()
			lastsize.Completed:Wait()
		end
		if(frameDown == "Busy") then
			return
		else
			frameDown = "Busy"
		end
	end
	
	spawn(function()
		settingsFrame.Visible = true
		local theSize = tweenService:Create(settingsFrame, tweenInfo, {
			Size = UDim2.new(0, 192, 0, 98)
		})
		theSize:Play()
		theSize.Completed:Wait()

		tweenService:Create(settingsFrame.DarkMode, tweenInfo, {
			TextTransparency = 0
		}):Play()
		tweenService:Create(settingsFrame.DarkMode.Roundify, tweenInfo, {
			ImageTransparency = 0
		}):Play()
		tweenService:Create(settingsFrame.AutoLoad, tweenInfo, {
			TextTransparency = 0
		}):Play()
		tweenService:Create(settingsFrame.AutoLoad.Roundify, tweenInfo, {
			ImageTransparency = 0
		}):Play()
		
		tweenService:Create(settingsFrame.DarkModeLabel, tweenInfo, {
			TextTransparency = 0
		}):Play()
		local lastTween = tweenService:Create(settingsFrame.AutoLoadLabel, tweenInfo, {
			TextTransparency = 0
		})
		lastTween:Play()
		
		print("End")
			
	end)
	
	frameDown = "Settings"
end)

Close.MouseButton1Click:Connect(function()
	startOutro()
	screenGui:Destroy()
end)

setInitValues()
wait(1)
startIntro()
