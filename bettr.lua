setscriptable(game:GetService("Workspace"), "SignalBehavior", true)
setscriptable(game:GetService("Workspace"), "InterpolationThrottling", true)
setscriptable(game:GetService("Workspace"), "ClientAnimatorThrottling", true)
setscriptable(game:GetService("Workspace"), "MeshPartHeadsAndAccessories", true)
setscriptable(game:GetService("Workspace"), "PhysicsSteppingMethod", true)
setscriptable(game:GetService("Workspace").Terrain, "WaterTransparency", true)
setscriptable(game:GetService("Workspace").Terrain, "Decoration", true)
setscriptable(game:GetService("Lighting"), "Technology", true)
setscriptable(game:GetService("Lighting"), "EnvironmentDiffuseScale", true)
setscriptable(game:GetService("Lighting"), "EnvironmentSpecularScale", true)
setscriptable(game:GetService("Lighting"), "GlobalShadows", true)


local table_insert
do -- Globals
table_insert = table.insert
end
local _gethiddenproperty
local _sethiddenproperty
do -- Implementations
_gethiddenproperty = gethiddenproperty or gethiddenprop or get_hidden_property or get_hidden_prop or getpropvalue or function(_Instance, _string, ...)
local v_boolean_indexSucceeded, v_any_propValue = pcall(function()
return _Instance[_string]
end)
return v_boolean_indexSucceeded and v_any_propValue
end
_sethiddenproperty = sethiddenproperty or sethiddenprop or set_hidden_property or set_hidden_prop or setpropvalue or function(_Instance, _string, _any, ...)
local v_boolean_newIndexSucceeded, v_string_error = pcall(function()
_Instance[_string] = _any
end)
if not v_boolean_newIndexSucceeded then
local v_number_stackLevel = 2
error(v_string_error, v_number_stackLevel)
end
end
end
local GetService
local GetDescendants
local IsA
do -- Methods
GetService = game.GetService
GetDescendants = game.GetDescendants
IsA = game.IsA
end
local Lighting
local NetworkSettings, RenderSettings, GameSettings
local UserGameSettings
do -- Services
Lighting = GetService(game, "Lighting")
NetworkSettings, RenderSettings, GameSettings = (function(...)
local v_Instance_globalSettings = settings(...)
return GetService(v_Instance_globalSettings, "NetworkSettings"), GetService(v_Instance_globalSettings, "RenderSettings"), GetService(v_Instance_globalSettings, "GameSettings")
end)()
UserGameSettings = GetService(UserSettings(...), "UserGameSettings")
end
local Properties
do -- Locals
Properties = {
QualityLevel = {
RenderSettings,
Enum.QualityLevel.Level01
},
MeshPartDetailLevel = {
RenderSettings,
Enum.MeshPartDetailLevel.Level01
},
EagerBulkExecution = {
RenderSettings,
false
}, -- Rendering budget limit
SavedQualityLevel = {
UserGameSettings,
Enum.SavedQualitySetting.QualityLevel1
},
Technology = {
Lighting,
Enum.Technology.Legacy
},
EnvironmentDiffuseScale = {
Lighting,
0
},
EnvironmentSpecularScale = {
Lighting,
0
},
PhysicsSteppingMethod = {
workspace,
Enum.PhysicsSteppingMethod.Default
},
SignalBehavior = {
workspace,
Enum.SignalBehavior.Deferred
},
MeshPartHeadsAndAccessories = {
workspace,
Enum.MeshPartHeadsAndAccessories.Enabled
},
ClientAnimatorThrottling = {
workspace,
Enum.ClientAnimatorThrottlingMode.Enabled
},
InterpolationThrottling = {
workspace,
Enum.InterpolationThrottlingMode.Enabled
},
GlobalShadows = {
Lighting,
false
}, -- Shadows on
Decoration = {
workspace.Terrain,
false
}, -- Grass on
WaterTransparency = {
workspace.Terrain,
0
}, -- Transparent water
IncomingReplicationLag = {
NetworkSettings,
-1000
}, -- lagn't
HasEverUsedVR = {
UserGameSettings,
true
} -- funni
}
end
local EnumItem_ModelLevelOfDetail_Disabled
do -- EnumItems
EnumItem_ModelLevelOfDetail_Disabled = Enum.ModelLevelOfDetail.Disabled
end
do -- Source
do -- Change Properties
for v_string_propName, v_table_propData in next, Properties do
local v_Instance_propHolder = v_table_propData[1]
local v_any_propValue = v_table_propData[2]
_sethiddenproperty(v_Instance_propHolder, v_string_propName, v_any_propValue)
end
end
do -- MeshParts with their DoubleSided property
local v_table_meshParts = (function(...)
local v_table_meshParts = {}
for v_number_index, v_Instance_instance in ipairs(GetDescendants(game)) do
if IsA(v_Instance_instance, "MeshPart") and _gethiddenproperty(v_Instance_instance, "DoubleSided") == true then
table_insert(v_table_meshParts, v_Instance_instance)
end
end
return v_table_meshParts
end)()
for v_number_index, v_MeshPart_instance in ipairs(v_table_meshParts) do
_sethiddenproperty(v_MeshPart_instance, "DoubleSided", false)
end
end
do -- Models with their LevelOfDetail property
local v_table_models = (function(...)
local v_table_models = {}
for v_number_index, v_Instance_instance in ipairs(GetDescendants(game)) do
if IsA(v_Instance_instance, "Model") and _gethiddenproperty(v_Instance_instance, "LevelOfDetail") ~= EnumItem_ModelLevelOfDetail_Disabled then
table_insert(v_table_models, v_Instance_instance)
end
end
return v_table_models
end)()
for v_number_index, v_Model_instance in ipairs(v_table_models) do
_sethiddenproperty(v_Model_instance, "LevelOfDetail", EnumItem_ModelLevelOfDetail_Disabled)
end
end
end
