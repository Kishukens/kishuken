---@meta

---@class ABP_DestructibleObject_Quest_C : ABP_DestructibleObject_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DestroySender USignalSenderComponent
---@field DestroyReceiver USignalReceiverComponent
ABP_DestructibleObject_Quest_C = {}

---@param HitResult FHitResult
function ABP_DestructibleObject_Quest_C:GSCFramework_OnPreTransition(HitResult) end
---@param DataObject UObject
function ABP_DestructibleObject_Quest_C:BndEvt__BP_DestructibleObject_Quest_DestroyReceiver_K2Node_ComponentBoundEvent_0_SignalReceiverComponentReceiveSignature__DelegateSignature(DataObject) end
---@param EntryPoint int32
function ABP_DestructibleObject_Quest_C:ExecuteUbergraph_BP_DestructibleObject_Quest(EntryPoint) end


