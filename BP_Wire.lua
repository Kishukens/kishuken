---@meta

---@class ABP_Wire_C : AInteractableObject
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BP_BaseForceFeedbackSphere UBP_BaseForceFeedbackSphere_C
---@field Box UBoxComponent
---@field StaticMesh UStaticMeshComponent
---@field Scene USceneComponent
---@field Ak UAkComponent
---@field DamageInteractable UDamageInteractableComponent
---@field Hittable UHittableComponent
---@field ReceiverDeactivation USignalReceiverComponent
---@field SenderDeactivation USignalSenderComponent
---@field SingleClick USingleClickComponent
---@field SenderActivation USignalSenderComponent
---@field Timeline_NewTrack_0_37FF747847F86B65A33B7FA696C1E301 float
---@field Timeline__Direction_37FF747847F86B65A33B7FA696C1E301 ETimelineDirection::Type
---@field Timeline UTimelineComponent
---@field Activate UAkAudioEvent
---@field Defuse UAkAudioEvent
ABP_Wire_C = {}

function ABP_Wire_C:Timeline__FinishedFunc() end
function ABP_Wire_C:Timeline__UpdateFunc() end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function ABP_Wire_C:BndEvt__Wire_Box_K2Node_ComponentBoundEvent_1_ComponentBeginOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end
---@param DataObject UObject
function ABP_Wire_C:BndEvt__BP_trap_wire_SignalReceiver_Deactivation_K2Node_ComponentBoundEvent_4_SignalReceiverComponentReceiveSignature__DelegateSignature(DataObject) end
function ABP_Wire_C:BndEvt__BP_trap_wire_SingleClick_K2Node_ComponentBoundEvent_5_InteractSignature__DelegateSignature() end
function ABP_Wire_C:ReceiveBeginPlay() end
---@param LastDamageDealerUID FUID
---@param bProjectileFlownThroughObject boolean
function ABP_Wire_C:BndEvt__BP_Wire_DamageInteractable_K2Node_ComponentBoundEvent_2_OnDamageAccumulated__DelegateSignature(LastDamageDealerUID, bProjectileFlownThroughObject) end
---@param EntryPoint int32
function ABP_Wire_C:ExecuteUbergraph_BP_Wire(EntryPoint) end


