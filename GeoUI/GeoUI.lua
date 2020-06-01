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

            local MainText = Instance.new("TextLabel", Compartment)
            MainText.Text = Text
            MainText.Position = UDim2.new(0, 8, 0, 0)
            MainText.Size = UDim2.new(0, 80, 0, 30)
            MainText.BackgroundTransparency = 1
            MainText.TextXAlignment = Enum.TextXAlignment.Left
            MainText.TextColor3 = Color3.fromRGB(114, 187, 185)

            local CheckBox = Instance.new("TextButton", Compartment)
            CheckBox.Size = UDim2.new(0, 15, 0, 15)
            CheckBox.Position = UDim2.new(0, 140 - (CheckBox.Size.X.Offset + 10), 0, 30 - (CheckBox.Size.Y.Offset + 7.5))
            CheckBox.BackgroundTransparency = 1
            CheckBox.ZIndex = 2
            CheckBox.TextColor3 = Color3.fromRGB(255,255,255)
            local CheckBoxRoundify = Instance.new("ImageLabel", Compartment)
            CheckBoxRoundify.Size = UDim2.new(0, 15, 0, 15)
            CheckBoxRoundify.Position = UDim2.new(0, 140 - (CheckBox.Size.X.Offset + 10), 0, 30 - (CheckBox.Size.Y.Offset + 7.5))
            CheckBoxRoundify.Image = "rbxassetid://3570695787"
            CheckBoxRoundify.ScaleType = "Slice"
            CheckBoxRoundify.SliceCenter = Rect.new(100,100,100,100)
            CheckBoxRoundify.SliceScale = 0.04
            CheckBoxRoundify.ImageColor3 = Color3.fromRGB(252, 64, 52)
            CheckBoxRoundify.BackgroundTransparency = 1
            CheckBoxRoundify.ZIndex = 1

            if(IToggle.Value == false) then
                CheckBox.Text = "x"
                CheckBoxRoundify.BackgroundColor3 = Color3.fromRGB(252, 64, 52)
            else
                CheckBox.Text = "\226\156\147"
                CheckBoxRoundify.BackgroundColor3 = Color3.fromRGB(82, 255, 133)
            end

            CheckBox.MouseButton1Click:Connect(function()
                if(IToggle.Value == false) then

                    CheckBox.Text = "\226\156\147"
                    local EnableTween = tweenService:Create(CheckBoxRoundify, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {
                        ImageColor3 = Color3.fromRGB(82, 255, 133)
                    })
                    EnableTween:Play()

                    Callback(true)

                    EnableTween.Completed:Wait()

                    IToggle.Value = true

                else

                    CheckBox.Text = "x"
                    local DisableTween = tweenService:Create(CheckBoxRoundify, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {
                        ImageColor3 = Color3.fromRGB(252, 64, 52)
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

return GeoUI
