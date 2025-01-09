---@meta

---@class ABP_Trap_Grenade_C : AInteractableObject
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Box UBoxComponent
---@field BaseMesh UStaticMeshComponent
---@field Grenade UStaticMeshComponent
---@field Scene USceneComponent
---@field Ak UAkComponent
---@field Knot UStaticMeshComponent
---@field ItemGive UItemGiveComponent
---@field Hook UStaticMeshComponent
---@field ReceiverDeactivation USignalReceiverComponent
---@field Explosion UExplosionComponent
---@field Sphere USphereComponent
---@field SenderDeactivation USignalSenderComponent
---@field SingleClick USingleClickComponent
---@field Hittable UHittableComponent
---@field DamageInteractable UDamageInteractableComponent
---@field ReceiverActivation USignalReceiverComponent
---@field ParticleEffect UParticleSystem
---@field ExplosionDelay float
---@field DefuseGrenade UAkAudioEvent
---@field ActivateGrenade UAkAudioEvent
ABP_Trap_Grenade_C = {}

---@param DataObject UObject
function ABP_Trap_Grenade_C:BndEvt__Grenade_SignalReceiver_K2Node_ComponentBoundEvent_0_SignalReceiverComponentReceiveSignature__DelegateSignature(DataObject) end
function ABP_Trap_Grenade_C:BndEvt__BP_trap_grenade_SingleClick_K2Node_ComponentBoundEvent_5_InteractSignature__DelegateSignature() end
---@param DataObject UObject
function ABP_Trap_Grenade_C:BndEvt__BP_trap_grenade_ReceiverDeactivation_K2Node_ComponentBoundEvent_1_SignalReceiverComponentReceiveSignature__DelegateSignature(DataObject) end
function ABP_Trap_Grenade_C:ReceiveBeginPlay() end
---@param LastDamageDealerUID FUID
---@param bProjectileFlownThroughObject boolean
function ABP_Trap_Grenade_C:BndEvt__BP_Trap_Grenade_DamageInteractable_K2Node_ComponentBoundEvent_3_OnDamageAccumulated__DelegateSignature(LastDamageDealerUID, bProjectileFlownThroughObject) end
---@param EntryPoint int32
function ABP_Trap_Grenade_C:ExecuteUbergraph_BP_Trap_Grenade(EntryPoint) end


