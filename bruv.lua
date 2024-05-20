--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88 
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER
]=]

getgenv().identityexecutor = function()
	return "Sakata X FE Bypass"
end

getgenv().printidentity = function()
	print('Current identity is', 9e9)
end

-- Instances: 6 | Scripts: 1 | Modules: 0
local G2L = {};

-- StarterGui.ScreenGui
G2L["1"] = Instance.new("ScreenGui", game:GetService("CoreGui"));
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

-- StarterGui.ScreenGui.Frame
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2"]["Size"] = UDim2.new(0, 587, 0, 317);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Position"] = UDim2.new(0.16194626688957214, 0, 0.19799499213695526, 0);

-- StarterGui.ScreenGui.Frame.TextBox
G2L["3"] = Instance.new("TextBox", G2L["2"]);
G2L["3"]["CursorPosition"] = -1;
G2L["3"]["BorderSizePixel"] = 0;
G2L["3"]["TextSize"] = 14;
G2L["3"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["3"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 51);
G2L["3"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3"]["Size"] = UDim2.new(0, 587, 0, 245);
G2L["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3"]["Text"] = [[]];
G2L["3"]["Position"] = UDim2.new(0, 0, 0.06940063089132309, 0);

-- StarterGui.ScreenGui.Frame.execute
G2L["4"] = Instance.new("TextButton", G2L["2"]);
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["4"]["TextSize"] = 14;
G2L["4"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["4"]["Name"] = [[execute]];
G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["Text"] = [[excyte]];
G2L["4"]["Position"] = UDim2.new(0, 0, 0.8422712683677673, 0);

-- StarterGui.ScreenGui.Frame.clear
G2L["5"] = Instance.new("TextButton", G2L["2"]);
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["5"]["TextSize"] = 14;
G2L["5"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["5"]["Name"] = [[clear]];
G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5"]["Text"] = [[cler]];
G2L["5"]["Position"] = UDim2.new(0.6592844724655151, 0, 0.8422712683677673, 0);

-- StarterGui.ScreenGui.Frame.Dragify
G2L["6"] = Instance.new("LocalScript", G2L["2"]);
G2L["6"]["Name"] = [[Dragify]];

G2L["4"].MouseButton1Up:Connect(function()
	local succ, err = pcall(function()
		loadstring(G2L["3"].Text)()
	end)
	
	if not succ then
		warn(err)
	end
end)

G2L["5"].MouseButton1Click:Connect(function()
	G2L["3"].Text = ""
end)

-- StarterGui.ScreenGui.Frame.Dragify
local function C_6()
local script = G2L["6"];
	local UIS = game:GetService("UserInputService")
	function dragify(Frame)
		dragToggle = nil
		dragSpeed = 0.15
		dragInput = nil
		dragStart = nil
		dragPos = nil
		function updateInput(input)
			Delta = input.Position - dragStart
			Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
			game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.15), {Position = Position}):Play()
		end
		Frame.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
				dragToggle = true
				dragStart = input.Position
				startPos = Frame.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragToggle = false
					end
				end)
			end
		end)
		Frame.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)
		game:GetService("UserInputService").InputChanged:Connect(function(input)
			if input == dragInput and dragToggle then
				updateInput(input)
			end
		end)
	end
	dragify(script.Parent)
	
end;
task.spawn(C_6);

return G2L["1"], require;
