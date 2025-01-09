---@meta

---@class ABP_AI_Tushkan_C : AAgent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SK_fur_01_Tushkano_01_car_LOD0 USkeletalMeshComponent
---@field PhysicalAnimation UPhysicalAnimationComponent
---@field GunOffset_0 FVector
---@field BaseTurnRate_0 double
---@field BaseLookUpRate_0 double
---@field ADS_Slowdown double
---@field FOV_Default double
---@field FOV_ADS double
---@field isFPP boolean
---@field IndexZero int32
---@field SwappingWeaponDelay double
---@field FPP_Camera_Default_Location FVector
---@field TPP_SpringArm_Default_Location FVector
---@field ToggleCrouch boolean
---@field ToggleSprint boolean
---@field GrenadeThrowingDelay double
---@field CurrentBehaviour EGoalType
---@field CurrentAbility EAbility
---@field ['Random Tone Index'] double
---@field RandomTone_Index double
ABP_AI_Tushkan_C = {}

---@param Object UObject
ABP_AI_Tushkan_C['Event Died'] = function(Object) end
function ABP_AI_Tushkan_C:UserConstructionScript() end
function ABP_AI_Tushkan_C:ReceiveBeginPlay() end
---@param EventTag FGameplayTag
---@param EventData UGameplayEventData
function ABP_AI_Tushkan_C:OnGameplayEvent(EventTag, EventData) end
---@param EntryPoint int32
function ABP_AI_Tushkan_C:ExecuteUbergraph_BP_AI_Tushkan(EntryPoint) end


