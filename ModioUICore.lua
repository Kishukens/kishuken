---@meta

---@class FModioModCategoryParams
---@field CategoryName FText
---@field Tags TArray<FString>
---@field ExcludedTags TArray<FString>
---@field Direction EModioSortDirection
---@field SortField EModioSortFieldType
---@field Count int64
---@field SearchKeywords FString
---@field InstalledField EModioInstalledFilterType
---@field EnabledFilter EModioEnabledFilterType
---@field ManualSortField EModioManualSortType
FModioModCategoryParams = {}



---@class FModioNotificationParams
---@field ErrorCode FModioErrorCode
---@field NotificationContextObject UObject
---@field Duration float
FModioNotificationParams = {}



---@class IModioExtendedModInfoUIDetails : IInterface
IModioExtendedModInfoUIDetails = {}

---@return boolean
function IModioExtendedModInfoUIDetails:IsModSubscribed() end
---@return boolean
function IModioExtendedModInfoUIDetails:IsModInstalled() end
---@return boolean
function IModioExtendedModInfoUIDetails:IsModInQueue() end
---@return boolean
function IModioExtendedModInfoUIDetails:IsModExtracting() end
---@return boolean
function IModioExtendedModInfoUIDetails:IsModEnabled() end
---@return boolean
function IModioExtendedModInfoUIDetails:IsModDownloading() end
---@return boolean
function IModioExtendedModInfoUIDetails:HasModErrors() end


---@class IModioModBrowserInterface : IInterface
IModioModBrowserInterface = {}

function IModioModBrowserInterface:ShowUserAuth() end
---@param FilterParams FModioModCategoryParams
function IModioModBrowserInterface:ShowSearchResults(FilterParams) end
---@param DialogDataSource UObject
function IModioModBrowserInterface:ShowReportMod(DialogDataSource) end
---@param DialogDataSource UObject
function IModioModBrowserInterface:ShowModUnsubscribeDialog(DialogDataSource) end
---@param DialogDataSource UObject
function IModioModBrowserInterface:ShowDialog(DialogDataSource) end
---@param ID FModioModID
function IModioModBrowserInterface:ShowDetailsForMod(ID) end
---@param Provider EModioAuthenticationProvider
function IModioModBrowserInterface:RequestExternalAuthentication(Provider) end
function IModioModBrowserInterface:LogOut() end
---@return boolean
function IModioModBrowserInterface:IsDownloadDrawerOpen() end
---@return boolean
function IModioModBrowserInterface:GetIsCollectionModDisableUIEnabled() end


---@class IModioModInfoUIDetails : IInterface
IModioModInfoUIDetails = {}

---@return FModioModID
function IModioModInfoUIDetails:GetModID() end
---@return FModioModInfo
function IModioModInfoUIDetails:GetFullModInfo() end


---@class IModioUIAsyncHandlerWidget : IInterface
IModioUIAsyncHandlerWidget = {}

---@param Widget TScriptInterface<IModioUIAsyncOperationWidget>
function IModioUIAsyncHandlerWidget:LinkAsyncOperationWidget(Widget) end
---@return EModioUIAsyncOperationWidgetState
function IModioUIAsyncHandlerWidget:GetAsyncOperationState() end


---@class IModioUIAsyncOperationWidget : IInterface
IModioUIAsyncOperationWidget = {}

---@param Delegate FSetOperationStateDelegateDelegate
function IModioUIAsyncOperationWidget:SetOperationStateDelegate(Delegate) end
function IModioUIAsyncOperationWidget:RequestOperationRetry() end
---@param NewState EModioUIAsyncOperationWidgetState
function IModioUIAsyncOperationWidget:NotifyOperationState(NewState) end


---@class IModioUIAsyncRetryWidget : IInterface
IModioUIAsyncRetryWidget = {}

---@param Delegate FSetRetryRequestedDelegateDelegate
function IModioUIAsyncRetryWidget:SetRetryRequestedDelegate(Delegate) end


---@class IModioUIAuthenticationChangedReceiver : IInterface
IModioUIAuthenticationChangedReceiver = {}

---@param User FModioOptionalUser
function IModioUIAuthenticationChangedReceiver:OnAuthenticationChanged(User) end


---@class IModioUIMediaDownloadCompletedReceiver : IInterface
IModioUIMediaDownloadCompletedReceiver = {}

---@param ModId FModioModID
---@param ec FModioErrorCode
---@param Image FModioOptionalImage
---@param LogoSize EModioLogoSize
function IModioUIMediaDownloadCompletedReceiver:OnModLogoDownloadCompleted(ModId, ec, Image, LogoSize) end
---@param ModId FModioModID
---@param ec FModioErrorCode
---@param ImageIndex int32
---@param Image FModioOptionalImage
function IModioUIMediaDownloadCompletedReceiver:OnModGalleryImageDownloadCompleted(ModId, ec, ImageIndex, Image) end
---@param ModId FModioModID
---@param ec FModioErrorCode
---@param Image FModioOptionalImage
function IModioUIMediaDownloadCompletedReceiver:OnModCreatorAvatarDownloadCompleted(ModId, ec, Image) end


---@class IModioUIModEnableWidget : IInterface
IModioUIModEnableWidget = {}

---@param ModId FModioModID
---@param bNewSubscriptionState boolean
function IModioUIModEnableWidget:OnModEnabledStateChanged(ModId, bNewSubscriptionState) end
---@param ModId FModioModID
---@param bNewSubscriptionState boolean
function IModioUIModEnableWidget:ModEnabledStateChangedHandler(ModId, bNewSubscriptionState) end


---@class IModioUIModInfoReceiver : IInterface
IModioUIModInfoReceiver = {}

---@param ModId FModioModID
---@param ec FModioErrorCode
---@param Info FModioOptionalModInfo
function IModioUIModInfoReceiver:OnModInfoRequestCompleted(ModId, ec, Info) end
---@param RequestIdentifier FString
---@param ec FModioErrorCode
---@param List FModioOptionalModInfoList
function IModioUIModInfoReceiver:OnListAllModsRequestCompleted(RequestIdentifier, ec, List) end


---@class IModioUIModManagementEventReceiver : IInterface
IModioUIModManagementEventReceiver = {}

---@param Event FModioModManagementEvent
function IModioUIModManagementEventReceiver:OnModManagementEvent(Event) end


---@class IModioUINotification : IInterface
IModioUINotification = {}

---@param InDelegate FSetNotificationExpireHandlerInDelegate
function IModioUINotification:SetNotificationExpireHandler(InDelegate) end
---@return UWidget
function IModioUINotification:GetAsWidget() end
function IModioUINotification:Display() end
---@param Title FText
---@param message FText
---@param bIsError boolean
function IModioUINotification:ConfigureManual(Title, message, bIsError) end
---@param Params FModioNotificationParams
function IModioUINotification:Configure(Params) end


---@class IModioUINotificationController : IInterface
IModioUINotificationController = {}

---@param ControllerWidget TScriptInterface<IModioUINotificationController>
function IModioUINotificationController:RegisterUserWidget(ControllerWidget) end
---@param Notification TScriptInterface<IModioUINotification>
function IModioUINotificationController:HandleDisplayNotificationWidget(Notification) end
---@param Params FModioNotificationParams
function IModioUINotificationController:HandleDisplayNotificationParams(Params) end
---@param Title FText
---@param message FText
---@param bIsError boolean
function IModioUINotificationController:HandleDisplayManual(Title, message, bIsError) end
---@param Params FModioNotificationParams
function IModioUINotificationController:DisplayNotificationParams(Params) end
---@param Title FText
---@param message FText
---@param bIsError boolean
function IModioUINotificationController:DisplayNotificationManual(Title, message, bIsError) end
---@param Notification TScriptInterface<IModioUINotification>
function IModioUINotificationController:DisplayNotification(Notification) end


---@class IModioUISubscriptionsChangedReceiver : IInterface
IModioUISubscriptionsChangedReceiver = {}

---@param ModId FModioModID
---@param bNewSubscriptionState boolean
function IModioUISubscriptionsChangedReceiver:OnSubscriptionsChanged(ModId, bNewSubscriptionState) end


---@class IModioUIUserAvatarDownloadCompletedReceiver : IInterface
IModioUIUserAvatarDownloadCompletedReceiver = {}

---@param ec FModioErrorCode
---@param Image FModioOptionalImage
function IModioUIUserAvatarDownloadCompletedReceiver:OnUserAvatarDownloadCompleted(ec, Image) end


---@class IModioUIUserChangedReceiver : IInterface
IModioUIUserChangedReceiver = {}

---@param NewUser FModioOptionalUser
function IModioUIUserChangedReceiver:OnUserChanged(NewUser) end


---@class UModioFeaturedCategoryParams : UObject
---@field CategoryName FText
---@field Tags TArray<FString>
---@field ExcludedTags TArray<FString>
---@field Direction EModioSortDirection
---@field SortField EModioSortFieldType
---@field Count int64
UModioFeaturedCategoryParams = {}



---@class UModioFilterParamsUI : UObject
---@field Underlying FModioFilterParams
UModioFilterParamsUI = {}



---@class UModioModCategoryParamsUI : UObject
---@field Underlying FModioModCategoryParams
UModioModCategoryParamsUI = {}



---@class UModioModCollectionEntryUI : UObject
---@field Underlying FModioModCollectionEntry
---@field bCachedSubscriptionStatus boolean
UModioModCollectionEntryUI = {}



---@class UModioModInfoUI : UObject
---@field Underlying FModioModInfo
UModioModInfoUI = {}



---@class UModioNotificationParamsLibrary : UBlueprintFunctionLibrary
UModioNotificationParamsLibrary = {}

---@param NotificationParams FModioNotificationParams
---@param Name FString
---@param Text FText
---@return FModioNotificationParams
function UModioNotificationParamsLibrary:SetTextArg(NotificationParams, Name, Text) end
---@param NotificationParams FModioNotificationParams
---@param Name FString
---@param Value FString
---@return FModioNotificationParams
function UModioNotificationParamsLibrary:SetStringArg(NotificationParams, Name, Value) end
---@param NotificationParams FModioNotificationParams
---@param Name FString
---@param Value int32
---@return FModioNotificationParams
function UModioNotificationParamsLibrary:SetIntegerArg(NotificationParams, Name, Value) end
---@param NotificationParams FModioNotificationParams
---@param Name FString
---@param Value float
---@return FModioNotificationParams
function UModioNotificationParamsLibrary:SetFloatArg(NotificationParams, Name, Value) end
---@param StatusCode FModioErrorCode
---@param ModInfo TScriptInterface<IModioModInfoUIDetails>
---@return FModioNotificationParams
function UModioNotificationParamsLibrary:CreateUnsubscriptionNotification(StatusCode, ModInfo) end
---@param StatusCode FModioErrorCode
---@param ModInfo TScriptInterface<IModioModInfoUIDetails>
---@return FModioNotificationParams
function UModioNotificationParamsLibrary:CreateUninstallNotification(StatusCode, ModInfo) end
---@param StatusCode FModioErrorCode
---@param ModInfo TScriptInterface<IModioModInfoUIDetails>
---@return FModioNotificationParams
function UModioNotificationParamsLibrary:CreateSubscriptionNotification(StatusCode, ModInfo) end
---@param StatusCode FModioErrorCode
---@param ModInfo TScriptInterface<IModioModInfoUIDetails>
---@return FModioNotificationParams
function UModioNotificationParamsLibrary:CreateRatingNotification(StatusCode, ModInfo) end
---@param StatusCode FModioErrorCode
---@param TitleText FText
---@param SuccessText FText
---@param ErrorText FText
---@return FModioNotificationParams
function UModioNotificationParamsLibrary:CreateNotificationParams(StatusCode, TitleText, SuccessText, ErrorText) end
---@param StatusCode FModioErrorCode
---@param ModInfo TScriptInterface<IModioModInfoUIDetails>
---@return FModioNotificationParams
function UModioNotificationParamsLibrary:CreateInstallationNotification(StatusCode, ModInfo) end
---@param NotificationParams FModioNotificationParams
---@param Name FName
---@param Text FText
---@return FModioNotificationParams
function UModioNotificationParamsLibrary:AddFormatText(NotificationParams, Name, Text) end


---@class UModioReportInfoUI : UObject
---@field ReportData FModioReportParams
---@field ModInfo UObject
UModioReportInfoUI = {}



---@class UModioTagInfoUI : UObject
---@field Underlying FModioModTagInfo
UModioTagInfoUI = {}



---@class UModioTagOptionsUI : UObject
---@field Underlying FModioModTagOptions
UModioTagOptionsUI = {}

---@return TArray<UModioTagInfoUI>
function UModioTagOptionsUI:GetTagCategoriesForUI() end


---@class UModioUIAsyncLoader : UWidget
---@field CurrentState EModioUIAsyncOperationWidgetState
---@field NamedWidgets TMap<FName, UWidget>
UModioUIAsyncLoader = {}

function UModioUIAsyncLoader:Retry() end
function UModioUIAsyncLoader:OnRetryRequested() end
---@param NewState EModioUIAsyncOperationWidgetState
function UModioUIAsyncLoader:NativeHandleAsyncOperationStateChange(NewState) end


---@class UModioUISubsystem : UEngineSubsystem
---@field ModBrowserInstance UUserWidget
---@field OnModEnabledChanged FModioUISubsystemOnModEnabledChanged
---@field GetModEnabledDelegate FModioUISubsystemGetModEnabledDelegate
UModioUISubsystem = {}

---@param ErrorCode FModioErrorCode
---@param ID FModioModID
function UModioUISubsystem:UnsubscribeHandler(ErrorCode, ID) end
---@param ErrorCode FModioErrorCode
---@param ID FModioModID
function UModioUISubsystem:UninstallHandler(ErrorCode, ID) end
---@param ErrorCode FModioErrorCode
---@param ID FModioModID
function UModioUISubsystem:SubscriptionHandler(ErrorCode, ID) end
---@param SearchParameters FModioModCategoryParams
---@return boolean
function UModioUISubsystem:ShowSearchResults(SearchParameters) end
---@param MenuClass TSubclassOf<UUserWidget>
---@param Controller APlayerController
---@param OnModBrowserCloseRequestedDelegate FShowModBrowserUIForPlayerOnModBrowserCloseRequestedDelegate
---@return UUserWidget
function UModioUISubsystem:ShowModBrowserUIForPlayer(MenuClass, Controller, OnModBrowserCloseRequestedDelegate) end
---@param DialogDataSource UObject
function UModioUISubsystem:ShowDialog(DialogDataSource) end
---@param ID FModioModID
function UModioUISubsystem:ShowDetailsForMod(ID) end
function UModioUISubsystem:RequestUserAvatar() end
---@param ID FModioModID
function UModioUISubsystem:RequestSubscriptionForModID(ID) end
---@param ID FModioModID
function UModioUISubsystem:RequestRemoveSubscriptionForModID(ID) end
---@param IDs TArray<FModioModID>
function UModioUISubsystem:RequestModInfoForModIDs(IDs) end
---@param ID FModioModID
---@param bNewEnabledState boolean
---@return boolean
function UModioUISubsystem:RequestModEnabledState(ID, bNewEnabledState) end
---@param ID FModioModID
---@param LogoSize EModioLogoSize
function UModioUISubsystem:RequestLogoDownloadForModID(ID, LogoSize) end
---@param Params FModioFilterParams
---@param RequestIdentifier FString
function UModioUISubsystem:RequestListAllMods(Params, RequestIdentifier) end
---@param ID FModioModID
---@param Index int32
---@param ImageSize EModioGallerySize
function UModioUISubsystem:RequestGalleryImageDownloadForModID(ID, Index, ImageSize) end
---@param Provider EModioAuthenticationProvider
function UModioUISubsystem:RequestExternalAuthentication(Provider) end
---@param Code FModioEmailAuthCode
function UModioUISubsystem:RequestEmailAuthentication(Code) end
---@param ID FModioModID
---@return boolean
function UModioUISubsystem:QueryIsModEnabled(ID) end
function UModioUISubsystem:HideModBrowserUI() end
---@return boolean
function UModioUISubsystem:GetIsCollectionModDisableUIEnabled() end
---@return float
function UModioUISubsystem:GetCurrentDPIScaleValue() end
---@param Input FText
---@return FText
function UModioUISubsystem:FormatText(Input) end
function UModioUISubsystem:ExecuteOnModBrowserCloseRequestedDelegate() end
---@param Params FModioNotificationParams
function UModioUISubsystem:DisplayNotificationParams(Params) end
---@param Title FText
---@param message FText
---@param bIsError boolean
function UModioUISubsystem:DisplayNotificationManual(Title, message, bIsError) end
---@param Notification TScriptInterface<IModioUINotification>
function UModioUISubsystem:DisplayNotification(Notification) end
---@param ErrorCode FModioErrorCode
function UModioUISubsystem:DisplayErrorDialog(ErrorCode) end
function UModioUISubsystem:CloseModBrowserUI() end


