---@meta

---@class ABP_Env_Bat_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field WildlifeBehaviour UWildlifeBehaviourComponent
---@field StaticEnvironmentNiagara UStaticEnvironmentNiagaraComponent
---@field Sphere USphereComponent
---@field DefaultSceneRoot USceneComponent
---@field ScaredSFX UAkAudioEvent
---@field IdleSFX UAkAudioEvent
ABP_Env_Bat_C = {}

function ABP_Env_Bat_C:TryPlayScaredSound() end
function ABP_Env_Bat_C:ReceiveBeginPlay() end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function ABP_Env_Bat_C:BndEvt__BP_CrowLifeUp_Sphere_K2Node_ComponentBoundEvent_0_ComponentBeginOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end
function ABP_Env_Bat_C:OnEmissionWeatherStarted() end
---@param EntryPoint int32
function ABP_Env_Bat_C:ExecuteUbergraph_BP_Env_Bat(EntryPoint) end


