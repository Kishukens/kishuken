---@meta

---@class AJiraBookmarksFlag : AActor
---@field WidgetComponent UWidgetComponent
---@field SceneComponent USceneComponent
AJiraBookmarksFlag = {}



---@class FIssueStatuses
---@field ToDo int32
---@field Reopened int32
---@field Backlog int32
FIssueStatuses = {}



---@class UJiraBookmarksFlagWidget : UUserWidget
---@field IssueID FText
---@field IssuePriority FText
---@field IssueVersion FText
---@field IssueDescription FText
---@field IssueSummary FText
---@field IssueColor FColor
UJiraBookmarksFlagWidget = {}



---@class UJiraBookmarksSettings : UDeveloperSettings
---@field LevelDesignIssueComponent int32
---@field BugIssueType int32
---@field LocationCustomField int32
---@field TeamCustomFieldID int32
---@field JiraBookmarksDefaultTeam FName
---@field IssueStatuses FIssueStatuses
---@field ReopenTransitionID uint32
---@field CloseTransitionID uint32
---@field InvestigationNeededCustomField uint32
---@field InvestigationNeededDefaultValue FString
---@field ExpectedResultCustomField uint32
---@field ExpectedResultDefaultValue FString
UJiraBookmarksSettings = {}



---@class UJiraBookmarksSubsystem : UWorldSubsystem
---@field CurrentUserID FName
---@field UserMail FString
---@field FlagClass UClass
UJiraBookmarksSubsystem = {}



---@class ULevelBookmarksSettings : UObject
---@field PathToRepository FDirectoryPath
---@field SuperUserNames TArray<FString>
---@field JiraBookmarkFlagActor FSoftClassPath
ULevelBookmarksSettings = {}



