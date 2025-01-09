---@enum EModioEnabledFilterType
EModioEnabledFilterType = {
    None = 0,
    Enabled = 1,
    Disabled = 2,
    EModioEnabledFilterType_MAX = 3,
}

---@enum EModioInstalledFilterType
EModioInstalledFilterType = {
    None = 0,
    CurrentUser = 1,
    AnotherUser = 2,
    EModioInstalledFilterType_MAX = 3,
}

---@enum EModioManualSortType
EModioManualSortType = {
    AToZ = 0,
    ZToA = 1,
    SizeOnDisk = 2,
    RecentlyUpdated = 3,
    EModioManualSortType_MAX = 4,
}

---@enum EModioUIAsyncOperationWidgetState
EModioUIAsyncOperationWidgetState = {
    Success = 0,
    Error = 1,
    InProgress = 2,
    EModioUIAsyncOperationWidgetState_MAX = 3,
}

---@enum EModioUIMediaDownloadEventType
EModioUIMediaDownloadEventType = {
    ModGalleryImages = 0,
    ModCreatorAvatarImage = 1,
    ModLogo = 2,
    EModioUIMediaDownloadEventType_MAX = 3,
}

---@enum EModioUIModInfoEventType
EModioUIModInfoEventType = {
    ListAllMods = 0,
    GetModInfo = 1,
    EModioUIModInfoEventType_MAX = 2,
}

