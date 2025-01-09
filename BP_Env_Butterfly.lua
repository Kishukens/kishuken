---@meta

---@class ABP_Env_Butterfly_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field WildlifeBehaviour UWildlifeBehaviourComponent
---@field StaticEnvironmentNiagara UStaticEnvironmentNiagaraComponent
---@field Ak UAkComponent
---@field Sphere USphereComponent
---@field DefaultSceneRoot USceneComponent
---@field Timeline_0_Fly_6BE8B8A14D29AE8DECB92F8F98F90E59 float
---@field Timeline_0__Direction_6BE8B8A14D29AE8DECB92F8F98F90E59 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
ABP_Env_Butterfly_C = {}

function ABP_Env_Butterfly_C:Timeline_0__FinishedFunc() end
function ABP_Env_Butterfly_C:Timeline_0__UpdateFunc() end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function ABP_Env_Butterfly_C:BndEvt__BP_CrowLifeUp_Sphere_K2Node_ComponentBoundEvent_0_ComponentBeginOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end
function ABP_Env_Butterfly_C:OnEmissionWeatherStarted() end
---@param EntryPoint int32
function ABP_Env_Butterfly_C:ExecuteUbergraph_BP_Env_Butterfly(EntryPoint) end


