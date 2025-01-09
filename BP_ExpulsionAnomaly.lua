---@meta

---@class ABP_ExpulsionAnomaly_C : AExpulsionAnomaly
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Niagara UNiagaraComponent
---@field RotatingMovement URotatingMovementComponent
---@field Timeline_0_FarIdle_1DE6E5CC4A6ABF51FBA511ABB5B74CDE float
---@field Timeline_0_Far_1DE6E5CC4A6ABF51FBA511ABB5B74CDE float
---@field Timeline_0_BaseRefractionIdle_1DE6E5CC4A6ABF51FBA511ABB5B74CDE float
---@field Timeline_0_SpeedAlembic_1DE6E5CC4A6ABF51FBA511ABB5B74CDE float
---@field Timeline_0_NewTrack_1_1DE6E5CC4A6ABF51FBA511ABB5B74CDE float
---@field Timeline_0_NewTrack_0_1DE6E5CC4A6ABF51FBA511ABB5B74CDE float
---@field Timeline_0__Direction_1DE6E5CC4A6ABF51FBA511ABB5B74CDE ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field Timeline_FarIdle_1EA71BC34CCEDEE583A0D0AC49B14668 float
---@field Timeline_Far_1EA71BC34CCEDEE583A0D0AC49B14668 float
---@field Timeline_BaseRefractionIdle_1EA71BC34CCEDEE583A0D0AC49B14668 float
---@field Timeline_SpeedAlembic_1EA71BC34CCEDEE583A0D0AC49B14668 float
---@field Timeline_NewTrack_1_1EA71BC34CCEDEE583A0D0AC49B14668 float
---@field Timeline_NewTrack_0_1EA71BC34CCEDEE583A0D0AC49B14668 float
---@field Timeline__Direction_1EA71BC34CCEDEE583A0D0AC49B14668 ETimelineDirection::Type
---@field Timeline UTimelineComponent
ABP_ExpulsionAnomaly_C = {}

function ABP_ExpulsionAnomaly_C:UserConstructionScript() end
function ABP_ExpulsionAnomaly_C:Timeline__FinishedFunc() end
function ABP_ExpulsionAnomaly_C:Timeline__UpdateFunc() end
function ABP_ExpulsionAnomaly_C:Timeline_0__FinishedFunc() end
function ABP_ExpulsionAnomaly_C:Timeline_0__UpdateFunc() end
function ABP_ExpulsionAnomaly_C:ReceiveBeginPlay() end
---@param LocalPoint FVector
function ABP_ExpulsionAnomaly_C:OnBoltCollided(LocalPoint) end
function ABP_ExpulsionAnomaly_C:OnActivationStateStarted() end
function ABP_ExpulsionAnomaly_C:OnActiveStateStarted() end
function ABP_ExpulsionAnomaly_C:OnIdleStateStarted() end
---@param EntryPoint int32
function ABP_ExpulsionAnomaly_C:ExecuteUbergraph_BP_ExpulsionAnomaly(EntryPoint) end


