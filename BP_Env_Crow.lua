---@meta

---@class ABP_Env_Crow_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field WildlifeBehaviour UWildlifeBehaviourComponent
---@field StaticEnvironmentNiagara UStaticEnvironmentNiagaraComponent
---@field Sphere USphereComponent
---@field DefaultSceneRoot USceneComponent
---@field Timeline_0_Fly_E4A071044EC4A5DDB08E69B2B90CC5E9 float
---@field Timeline_0__Direction_E4A071044EC4A5DDB08E69B2B90CC5E9 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field ScaredSFX UAkAudioEvent
---@field IdleSFX UAkAudioEvent
ABP_Env_Crow_C = {}

function ABP_Env_Crow_C:TryPlayScaredSound() end
function ABP_Env_Crow_C:Timeline_0__FinishedFunc() end
function ABP_Env_Crow_C:Timeline_0__UpdateFunc() end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function ABP_Env_Crow_C:BndEvt__BP_CrowLifeUp_Sphere_K2Node_ComponentBoundEvent_0_ComponentBeginOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end
function ABP_Env_Crow_C:OnEmissionWeatherStarted() end
function ABP_Env_Crow_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function ABP_Env_Crow_C:ExecuteUbergraph_BP_Env_Crow(EntryPoint) end


