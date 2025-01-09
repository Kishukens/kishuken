---@meta

---@class FAnimNode_FootPlacement : FAnimNode_SkeletalControlBase
---@field PlantSpeedMode EWarpingEvaluationMode
---@field IKFootRootBone FBoneReference
---@field PelvisBone FBoneReference
---@field PelvisSettings FFootPlacementPelvisSettings
---@field LegDefinitions TArray<FFootPlacemenLegDefinition>
---@field PlantSettings FFootPlacementPlantSettings
---@field InterpolationSettings FFootPlacementInterpolationSettings
---@field TraceSettings FFootPlacementTraceSettings
---@field BaseTranslationDelta FVector
---@field IsPaused boolean
FAnimNode_FootPlacement = {}



---@class FAnimNode_OffsetRootBone : FAnimNode_SkeletalControlBase
FAnimNode_OffsetRootBone = {}


---@class FAnimNode_OrientationWarping : FAnimNode_SkeletalControlBase
---@field Mode EWarpingEvaluationMode
---@field OrientationAngle float
---@field LocomotionAngle float
---@field MinRootMotionSpeedThreshold float
---@field LocomotionAngleDeltaThreshold float
---@field SpineBones TArray<FBoneReference>
---@field IKFootRootBone FBoneReference
---@field IKFootBones TArray<FBoneReference>
---@field RotationAxis EAxis::Type
---@field DistributedBoneOrientationAlpha float
---@field RotationInterpSpeed float
---@field WarpingAlpha float
---@field OffsetAlpha float
---@field MaxOffsetAngle float
FAnimNode_OrientationWarping = {}



---@class FAnimNode_SlopeWarping : FAnimNode_SkeletalControlBase
---@field IKFootRootBone FBoneReference
---@field PelvisBone FBoneReference
---@field FeetDefinitions TArray<FSlopeWarpingFootDefinition>
---@field FeetData TArray<FSlopeWarpingFootData>
---@field PelvisOffsetInterpolator FVectorRK4SpringInterpolator
---@field GravityDir FVector
---@field CustomFloorOffset FVector
---@field CachedDeltaTime float
---@field TargetFloorNormalWorldSpace FVector
---@field FloorNormalInterpolator FVectorRK4SpringInterpolator
---@field TargetFloorOffsetLocalSpace FVector
---@field FloorOffsetInterpolator FVectorRK4SpringInterpolator
---@field MaxStepHeight float
---@field bKeepMeshInsideOfCapsule boolean
---@field bPullPelvisDown boolean
---@field bUseCustomFloorOffset boolean
---@field bWasOnGround boolean
---@field bShowDebug boolean
---@field bFloorSmoothingInitialized boolean
---@field ActorLocation FVector
---@field GravityDirCompSpace FVector
FAnimNode_SlopeWarping = {}



---@class FAnimNode_StrideWarping : FAnimNode_SkeletalControlBase
---@field Mode EWarpingEvaluationMode
---@field StrideDirection FVector
---@field StrideScale float
---@field LocomotionSpeed float
---@field MinRootMotionSpeedThreshold float
---@field PelvisBone FBoneReference
---@field IKFootRootBone FBoneReference
---@field FootDefinitions TArray<FStrideWarpingFootDefinition>
---@field StrideScaleModifier FInputClampConstants
---@field FloorNormalDirection FWarpingVectorValue
---@field GravityDirection FWarpingVectorValue
---@field PelvisIKFootSolver FIKFootPelvisPullDownSolver
---@field bOrientStrideDirectionUsingFloorNormal boolean
---@field bCompensateIKUsingFKThighRotation boolean
---@field bClampIKUsingFKLimits boolean
FAnimNode_StrideWarping = {}



---@class FFootPlacemenLegDefinition
---@field FKFootBone FBoneReference
---@field IKFootBone FBoneReference
---@field BallBone FBoneReference
---@field NumBonesInLimb int32
---@field SpeedCurveName FName
---@field DisableLockCurveName FName
---@field DisableLegCurveName FName
FFootPlacemenLegDefinition = {}



---@class FFootPlacementInterpolationSettings
---@field UnplantLinearStiffness float
---@field UnplantLinearDamping float
---@field UnplantAngularStiffness float
---@field UnplantAngularDamping float
---@field SeparationStiffness float
---@field SeparationDamping float
---@field FloorLinearStiffness float
---@field FloorLinearDamping float
---@field FloorAngularStiffness float
---@field FloorAngularDamping float
---@field bEnableFloorInterpolation boolean
---@field bSmoothRootBone boolean
---@field bEnableSeparationInterpolation boolean
FFootPlacementInterpolationSettings = {}



---@class FFootPlacementPelvisSettings
---@field MaxOffset float
---@field bUseSeparateOffset boolean
---@field MaxOffsetUp float
---@field MaxOffsetDown float
---@field LinearStiffness float
---@field LinearDamping float
---@field HorizontalRebalancingWeight float
---@field MaxOffsetHorizontal float
---@field HeelLiftRatio float
---@field PelvisHeightMode EPelvisHeightMode
---@field ActorMovementCompensationMode EActorMovementCompensationMode
---@field bEnableInterpolation boolean
---@field bDisablePelvisOffsetInAir boolean
---@field DisablePelvisCurveName FName
FFootPlacementPelvisSettings = {}



---@class FFootPlacementPlantSettings
---@field SpeedThreshold float
---@field DistanceToGround float
---@field LockType EFootPlacementLockType
---@field UnplantRadius float
---@field ReplantRadiusRatio float
---@field UnplantAngle float
---@field ReplantAngleRatio float
---@field MaxExtensionRatio float
---@field MinExtensionRatio float
---@field SeparatingDistance float
---@field UnalignmentSpeedThreshold float
---@field AnkleTwistReduction float
---@field bReconstructWorldPlantFromVelocity boolean
---@field bAdjustHeelBeforePlanting boolean
FFootPlacementPlantSettings = {}



---@class FFootPlacementRootDefinition
---@field PelvisBone FBoneReference
---@field IKRootBone FBoneReference
FFootPlacementRootDefinition = {}



---@class FFootPlacementTraceSettings
---@field StartOffset float
---@field EndOffset float
---@field SweepRadius float
---@field bDisableComplexTrace boolean
---@field ComplexTraceChannel ETraceTypeQuery
---@field MaxGroundPenetration float
---@field SimpleTraceChannel ETraceTypeQuery
---@field bEnabled boolean
FFootPlacementTraceSettings = {}



---@class FSlopeWarpingFootData
FSlopeWarpingFootData = {}


---@class FSlopeWarpingFootDefinition
---@field IKFootBone FBoneReference
---@field FKFootBone FBoneReference
---@field NumBonesInLimb int32
---@field FootSize float
FSlopeWarpingFootDefinition = {}



---@class FStrideWarpingFootDefinition
---@field IKFootBone FBoneReference
---@field FKFootBone FBoneReference
---@field ThighBone FBoneReference
FStrideWarpingFootDefinition = {}



