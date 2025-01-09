---@meta

---@class FRawInputDeviceAxisProperties
---@field bEnabled boolean
---@field Key FKey
---@field bInverted boolean
---@field bGamepadStick boolean
---@field Offset float
FRawInputDeviceAxisProperties = {}



---@class FRawInputDeviceButtonProperties
---@field bEnabled boolean
---@field Key FKey
FRawInputDeviceButtonProperties = {}



---@class FRawInputDeviceConfiguration
---@field VendorID FString
---@field ProductID FString
---@field AxisProperties TArray<FRawInputDeviceAxisProperties>
---@field ButtonProperties TArray<FRawInputDeviceButtonProperties>
FRawInputDeviceConfiguration = {}



---@class FRegisteredDeviceInfo
---@field Handle int32
---@field VendorID int32
---@field ProductID int32
---@field DeviceName FString
FRegisteredDeviceInfo = {}



---@class URawInputFunctionLibrary : UBlueprintFunctionLibrary
URawInputFunctionLibrary = {}

---@return TArray<FRegisteredDeviceInfo>
function URawInputFunctionLibrary:GetRegisteredDevices() end


---@class URawInputSettings : UDeveloperSettings
---@field DeviceConfigurations TArray<FRawInputDeviceConfiguration>
---@field bRegisterDefaultDevice boolean
URawInputSettings = {}



