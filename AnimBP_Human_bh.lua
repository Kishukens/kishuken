---@meta

---@class FAnimBlueprintGeneratedConstantData : FAnimBlueprintConstantData
---@field __NameProperty_39 FName
---@field __ArrayProperty_40 TArray<float>
---@field __BlendProfile_41 UBlendProfile
---@field __CurveFloat_42 UCurveFloat
---@field __EnumProperty_43 EAlphaBlendOption
---@field __EnumProperty_44 EBlendListTransitionType
---@field __ArrayProperty_45 TArray<float>
---@field __StructProperty_46 FAnimNodeFunctionRef
---@field __BoolProperty_47 boolean
---@field __FloatProperty_48 float
---@field __StructProperty_49 FInputScaleBiasClampConstants
---@field __FloatProperty_50 float
---@field __BoolProperty_51 boolean
---@field __EnumProperty_52 EAnimSyncMethod
---@field __ByteProperty_53 EAnimGroupRole::Type
---@field __NameProperty_54 FName
---@field AnimBlueprintExtension_PropertyAccess FAnimSubsystem_PropertyAccess
---@field AnimBlueprintExtension_Base FAnimSubsystem_Base
FAnimBlueprintGeneratedConstantData = {}



---@class FAnimBlueprintGeneratedMutableData : FAnimBlueprintMutableData
---@field __BoolProperty boolean
---@field __BoolProperty_0 boolean
FAnimBlueprintGeneratedMutableData = {}



---@class UAnimBP_Human_bh_C : UAnimInstanceHuman
---@field UberGraphFrame FPointerToUberGraphFrame
---@field __AnimBlueprintMutables FAnimBlueprintGeneratedMutableData
---@field AnimBlueprintExtension_PropertyAccess FAnimSubsystemInstance
---@field AnimBlueprintExtension_Base FAnimSubsystemInstance
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_LinkedInputPose FAnimNode_LinkedInputPose
---@field AnimGraphNode_BlendListByBool_1 FAnimNode_BlendListByBool
---@field AnimGraphNode_RandomPlayer FAnimNode_RandomPlayer
---@field AnimGraphNode_CopyBone FAnimNode_CopyBone
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_ModifyBone FAnimNode_ModifyBone
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
UAnimBP_Human_bh_C = {}

---@param Locomotion FPoseLink
---@param AnimGraph FPoseLink
function UAnimBP_Human_bh_C:AnimGraph(Locomotion, AnimGraph) end
---@param EntryPoint int32
function UAnimBP_Human_bh_C:ExecuteUbergraph_AnimBP_Human_bh(EntryPoint) end


