

local GeoUI = {}

local tweenService = game:GetService("TweenService")


GeoUI.Themes = {}

GeoUI.Themes.Light = {}

GeoUI.Themes.Dark = {}

function GeoUI:Init()
   
    local Main = {}
    Main.Windows = {}
    Main.Utils = {}
    
    Main.Windows.Count = 0
    
    function Main.Utils:DestroyUI()
        for i, v in pairs(game:GetService("CoreGui"):GetChildren()) do
            if(v.Name == "Geo") then
                v:Destroy() 
            end
        end
    end
    
    Main.Utils:DestroyUI()
    
    local GeoGui = Instance.new("ScreenGui", game:GetService("CoreGui"))
    GeoGui.Name = "Geo"
   
    function Main.Windows:Create(Title)

        local IWindow = {}
        IWindow.Elements = 0

        Main.Windows.Count = Main.Windows.Count + 1

        local Window = Instance.new("ImageLabel", GeoGui)
        Window.Size = UDim2.new(0, 140, 0, 30)
        if(Main.Windows.Count ~= 1) then
            Window.Position = UDim2.new(0, (100 * Main.Windows.Count) + (Main.Windows.Count * Window.Size.X.Offset) - Window.Size.X.Offset, 0, 350)
        else
            Window.Position = UDim2.new(0, (100 * Main.Windows.Count), 0, 350)
        end
        Window.BackgroundTransparency = 1
        Window.BorderSizePixel = 0
        Window.Image = "rbxassetid://3570695787"
        Window.ScaleType = "Slice"
        Window.SliceCenter = Rect.new(100,100,100,100)
        Window.SliceScale = 0.02

        local TitleLabel = Instance.new("TextLabel", Window)
        TitleLabel.Text = Title
        TitleLabel.Size = UDim2.new(0, 140, 0, 30)
        TitleLabel.BackgroundTransparency = 1
        TitleLabel.TextColor3 = Color3.fromRGB(114, 187, 185)

        local DividerLine = Instance.new("Frame", Window)
        DividerLine.BorderSizePixel = 0
        DividerLine.Size = UDim2.new(0, 125, 0, 1)
        DividerLine.Position = UDim2.new(0, 7.5, 0, 25)
        DividerLine.BackgroundColor3 = Color3.fromRGB(114, 187, 185)
       

        function IWindow:Toggle(Text, Callback, Default)

            local IToggle = {}

            IToggle.Checkmark = "\226\156\147"

            if(Default == nil) then
                Default = false
            end

            if(Callback == nil) then
                warn("Callback == nil -> true, Please fill in a callback for the toggle")
                Callback = function() end
            end

            IToggle.Value = Default

            IWindow.Elements = IWindow.Elements + 1

            local Compartment = Instance.new("Frame", Window)
            Compartment.Size = UDim2.new(0, 140, 0, 30)
            Compartment.Position = UDim2.new(0, 0, 0, IWindow.Elements * 30)
            Compartment.BackgroundTransparency = 1
            Compartment.BorderSizePixel = 0

            
            local CheckBox = Instance.new("TextButton", Compartment)
            CheckBox.Size = UDim2.new(0, 120, 0, 26)
            CheckBox.Position = UDim2.new(0, 10, 0, 2)
            CheckBox.BorderSizePixel = 0
            CheckBox.BackgroundTransparency = 1
            CheckBox.Text = ""
            CheckBox.TextColor3 = Color3.fromRGB(255,255,255)
            CheckBox.ZIndex = 2

            local CheckBoxText = Instance.new("TextLabel", CheckBox)
            CheckBoxText.Size = UDim2.new(0, 80, 0, 16)
            CheckBoxText.Position = UDim2.new(0, 6, 0, 5)
            CheckBoxText.Text = Text
            CheckBoxText.ZIndex = 2
            CheckBoxText.TextXAlignment = "Left"
            CheckBoxText.BackgroundTransparency = 1
            CheckBoxText.TextColor3 = Color3.fromRGB(255,255,255)

            local CheckBoxStatus = Instance.new("TextLabel", CheckBox)
            CheckBoxStatus.ZIndex = 2
            CheckBoxStatus.Size = UDim2.new(0, 15, 0, 15)
            CheckBoxStatus.Position = UDim2.new(0, 100, 0, 5)
        
            if(Default) then
                CheckBoxStatus.Text = IToggle.Checkmark
            else
                CheckBoxStatus.Text = "x"
            end

            CheckBoxStatus.TextColor3 = Color3.fromRGB(255,255,255)
            CheckBoxStatus.BackgroundTransparency = 1
            CheckBoxStatus.TextSize = 12

            local CheckBoxRoundify = Instance.new("ImageLabel", Compartment)
            CheckBoxRoundify.Size = UDim2.new(0, 120, 0, 26)
            CheckBoxRoundify.Position = UDim2.new(0, 10, 0, 2)
            CheckBoxRoundify.Image = "rbxassetid://3570695787"
            CheckBoxRoundify.ScaleType = "Slice"
            CheckBoxRoundify.SliceCenter = Rect.new(100,100,100,100)
            CheckBoxRoundify.SliceScale = 0.02
            CheckBoxRoundify.BackgroundTransparency = 1
            if(Default) then
                CheckBoxRoundify.ImageColor3 = Color3.fromRGB(53, 184, 112)
            else
                CheckBoxRoundify.ImageColor3 = Color3.fromRGB(180, 64, 52)
            end


            CheckBox.MouseButton1Click:Connect(function()
                if(IToggle.Value == false) then

                    CheckBoxStatus.Text = IToggle.Checkmark

                    local EnableTween = tweenService:Create(CheckBoxRoundify, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {
                        ImageColor3 = Color3.fromRGB(53, 184, 112)
                    })
                    EnableTween:Play()

                    Callback(true)

                    EnableTween.Completed:Wait()

                    IToggle.Value = true

                else

                    CheckBoxStatus.Text = "x"

                    local DisableTween = tweenService:Create(CheckBoxRoundify, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {
                        ImageColor3 = Color3.fromRGB(180, 64, 52)
                    })
                    DisableTween:Play()

                    Callback(false)

                    DisableTween.Completed:Wait()

                    IToggle.Value = false

                end
            end)

            if(IWindow.Elements == 1) then
                Window.Size = UDim2.new(0, Window.Size.X.Offset, 0, Window.Size.Y.Offset + 35)
            else
                Window.Size = UDim2.new(0, Window.Size.X.Offset, 0, Window.Size.Y.Offset + 30)
            end

            return IToggle

        end


        function IWindow:Button(Text, Callback)

            local IButton = {}

            if(Callback == nil) then
                print("Callback == nil -> The button with text: " .. Text .. " has no callback.")
            end

            IWindow.Elements = IWindow.Elements + 1

            local Compartment = Instance.new("Frame", Window)
            Compartment.Size = UDim2.new(0, 140, 0, 30)
            Compartment.Position = UDim2.new(0, 0, 0, IWindow.Elements * 30)
            Compartment.BackgroundTransparency = 1
            Compartment.BorderSizePixel = 0

            local MainButton = Instance.new("TextButton", Compartment)
            MainButton.Size = UDim2.new(0, 120, 0, 26)
            MainButton.Position = UDim2.new(0, 10, 0, 2)
            MainButton.BorderSizePixel = 0
            MainButton.BackgroundTransparency = 1
            MainButton.Text = Text
            MainButton.TextColor3 = Color3.fromRGB(255,255,255)
            MainButton.ZIndex = 2

            local MainButtonRoundify = Instance.new("ImageLabel", Compartment)
            MainButtonRoundify.Size = UDim2.new(0, 120, 0, 26)
            MainButtonRoundify.Position = UDim2.new(0, 10, 0, 2)
            MainButtonRoundify.Image = "rbxassetid://3570695787"
            MainButtonRoundify.ScaleType = "Slice"
            MainButtonRoundify.SliceCenter = Rect.new(100,100,100,100)
            MainButtonRoundify.SliceScale = 0.02
            MainButtonRoundify.BackgroundTransparency = 1
            MainButtonRoundify.ImageColor3 = Color3.fromRGB(114, 187, 185)

            MainButton.MouseButton1Click:Connect(function()
                Callback()
            end)

            if(IWindow.Elements == 1) then
                Window.Size = UDim2.new(0, Window.Size.X.Offset, 0, Window.Size.Y.Offset + 35)
            else
                Window.Size = UDim2.new(0, Window.Size.X.Offset, 0, Window.Size.Y.Offset + 30)
            end


            return IButton

        end


        return IWindow;
    end
    
    return Main
end

return GeoUI;
