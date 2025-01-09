---@meta

---@class FDisclaimerData
---@field BackgroundBrush USlateBrushAsset
---@field HealthFooterLineBrushPath USlateBrushAsset
---@field HealthFooterImageBrushPath USlateBrushAsset
---@field HealthHeaderLineBrushPath USlateBrushAsset
---@field HealthTitleFont USlateWidgetStyleAsset
---@field HealthTitle2Font USlateWidgetStyleAsset
---@field HealthDescFont USlateWidgetStyleAsset
---@field HealthDesc2Font USlateWidgetStyleAsset
---@field TitleSID FString
---@field Title2SID FString
---@field ContentSID FString
---@field Content2SID FString
---@field CustomDisclaimerType ECustomDisclaimerType
FDisclaimerData = {}



---@class FScreenData
---@field MaxShowTime float
---@field MinShowTime float
---@field bIsSkippable boolean
---@field Image FSoftObjectPath
FScreenData = {}



---@class FScreenOrder
---@field ScreenType ESplashScreenType
---@field ScreenOrderID int32
---@field bIsSkippable boolean
---@field Image FSoftObjectPath
FScreenOrder = {}



---@class UDisclaimerWidget : UWidget
UDisclaimerWidget = {}


---@class UGSCLoadingScreenSettings : UDeveloperSettings
---@field ScreenDataList TArray<FScreenData>
---@field ScreenOrder TArray<FScreenOrder>
---@field DisclaimerScreens TArray<FDisclaimerData>
---@field CurrentDisclaimerID int32
---@field FadeInDuration float
---@field FadeOutDuration float
---@field MinShowTime float
---@field Arrow FSoftObjectPath
---@field Background FSoftObjectPath
---@field LoadingScreenIndicatorBackgroundSize FVector2D
---@field LoadArrowPadding FMargin
---@field LoadArrowRotation FVector2D
UGSCLoadingScreenSettings = {}



---@class UGSCLoadingScreenSettingsWrapper : UObject
---@field Settings UGSCLoadingScreenSettings
UGSCLoadingScreenSettingsWrapper = {}



