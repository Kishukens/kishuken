---@meta

---@class FFlyCorridorTracePoint
---@field Location FVector
---@field Time float
FFlyCorridorTracePoint = {}



---@class UAnimMetaData_FlyCorridor : UAnimMetaData
---@field FlyCorridorAnimPoints TArray<FFlyCorridorTracePoint>
---@field AnimHitPoint FFlyCorridorTracePoint
---@field DistanceCurve FFloatCurve
---@field bDoScaleZ boolean
---@field EndLocation FVector
UAnimMetaData_FlyCorridor = {}



---@class UAnimNotifyState_Fly : UAnimNotifyState_MotionWarping
---@field TrackBoneName FName
---@field RootBoneName FName
UAnimNotifyState_Fly = {}



---@class UAnimNotify_FlyHitPoint : UAnimNotify
UAnimNotify_FlyHitPoint = {}


---@class UFlyCorridorDebugComponent : UDebugDrawComponent
---@field CorridorFindingTime float
UFlyCorridorDebugComponent = {}

function UFlyCorridorDebugComponent:ShowPassedPath() end
---@param AnimMontage UAnimMontage
---@param StartLocation FVector
---@param EndLocation FVector
---@param DrawTime float
---@param ZScale double
function UFlyCorridorDebugComponent:ShowCorridor(AnimMontage, StartLocation, EndLocation, DrawTime, ZScale) end
function UFlyCorridorDebugComponent:HidePassedPath() end
function UFlyCorridorDebugComponent:HideCorridor() end


