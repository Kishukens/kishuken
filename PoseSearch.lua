---@meta

---@class FAnimNode_BlendStack : FAnimNode_AssetPlayerBase
FAnimNode_BlendStack = {}


---@class FAnimNode_MotionMatching : FAnimNode_AssetPlayerBase
---@field Source FPoseLink
---@field Searchable UPoseSearchSearchableAsset
---@field ActiveTagsContainer FGameplayTagContainer
---@field Trajectory FTrajectorySampleRange
---@field Settings FMotionMatchingSettings
---@field ProceduralMovement FPoseSearchProceduralMovement
---@field bResetOnBecomingRelevant boolean
---@field bForceInterrupt boolean
FAnimNode_MotionMatching = {}



---@class FAnimNode_PoseSearchHistoryCollector : FAnimNode_Base
---@field Source FPoseLink
---@field PoseCount int32
---@field PoseDuration float
---@field bUseRootMotion boolean
FAnimNode_PoseSearchHistoryCollector = {}



---@class FMotionMatchingSettings
---@field BlendTime float
---@field MaxActiveBlends int32
---@field BlendProfile UBlendProfile
---@field BlendOption EAlphaBlendOption
---@field MirrorChangeBlendTime float
---@field PoseJumpThresholdTime float
---@field PoseReselectHistory float
---@field SearchThrottleTime float
---@field SkipContinuingPoseMaxCost float
---@field PlayRateMin float
---@field PlayRateMax float
FMotionMatchingSettings = {}



---@class FMotionMatchingState
---@field ElapsedPoseJumpTime float
---@field WantedBlendParameters FVector
---@field WantedPlayRate float
---@field Flags EMotionMatchingFlags
---@field RootMotionTransformDelta FTransform
FMotionMatchingState = {}



---@class FPoseSearchAnimPlayer
FPoseSearchAnimPlayer = {}


---@class FPoseSearchBone
---@field Reference FBoneReference
---@field Flags int32
---@field Weight float
---@field ColorPresetIndex int32
FPoseSearchBone = {}



---@class FPoseSearchBoneRotationFilter
---@field SecondsOffset float
---@field ValidAngle float
---@field DesiredQueryOffset float
FPoseSearchBoneRotationFilter = {}



---@class FPoseSearchBoneRotationSample
---@field Offset float
---@field Weight float
---@field FocusColorPresetIndex int32
---@field DesiredQueryOffset float
---@field ScaleThresholdAngle float
---@field ScaleThresholdFactor float
FPoseSearchBoneRotationSample = {}



---@class FPoseSearchCost
---@field TotalCost float
---@field ContinuingPoseCostAddend float
FPoseSearchCost = {}



---@class FPoseSearchDatabaseAnimationAssetBase
FPoseSearchDatabaseAnimationAssetBase = {}


---@class FPoseSearchDatabaseBlendSpace : FPoseSearchDatabaseAnimationAssetBase
---@field BlendSpace UBlendSpace
---@field bEnabled boolean
---@field MirrorOption EPoseSearchMirrorOption
---@field bUseGridForSampling boolean
---@field NumberOfHorizontalSamples int32
---@field NumberOfVerticalSamples int32
FPoseSearchDatabaseBlendSpace = {}



---@class FPoseSearchDatabaseSequence : FPoseSearchDatabaseAnimationAssetBase
---@field Sequence UAnimSequence
---@field bEnabled boolean
---@field SamplingRange FFloatInterval
---@field MirrorOption EPoseSearchMirrorOption
---@field LeadInSequence UAnimSequence
---@field FollowUpSequence UAnimSequence
FPoseSearchDatabaseSequence = {}



---@class FPoseSearchDatabaseSetEntry
---@field Searchable UPoseSearchSearchableAsset
---@field Tag FGameplayTag
---@field PostSearchStatus EPoseSearchPostSearchStatus
FPoseSearchDatabaseSetEntry = {}



---@class FPoseSearchExcludeFromDatabaseParameters
---@field SequenceStartInterval float
---@field SequenceEndInterval float
FPoseSearchExcludeFromDatabaseParameters = {}



---@class FPoseSearchExtrapolationParameters
---@field AngularSpeedThreshold float
---@field LinearSpeedThreshold float
---@field SampleTime float
FPoseSearchExtrapolationParameters = {}



---@class FPoseSearchFeatureVectorBuilder
---@field Schema TWeakObjectPtr<UPoseSearchSchema>
FPoseSearchFeatureVectorBuilder = {}



---@class FPoseSearchIndex : FPoseSearchIndexBase
---@field PCAValues TArray<float>
---@field PCAProjectionMatrix TArray<float>
---@field Mean TArray<float>
---@field WeightsSqrt TArray<float>
---@field PCAExplainedVariance float
---@field Deviation TArray<float>
FPoseSearchIndex = {}



---@class FPoseSearchIndexAsset
---@field Type ESearchIndexAssetType
---@field SourceAssetIdx int32
---@field bMirrored boolean
---@field BlendParameters FVector
---@field SamplingInterval FFloatInterval
---@field FirstPoseIdx int32
---@field NumPoses int32
FPoseSearchIndexAsset = {}



---@class FPoseSearchIndexBase
---@field NumPoses int32
---@field Values TArray<float>
---@field PoseMetadata TArray<FPoseSearchPoseMetadata>
---@field OverallFlags EPoseSearchPoseFlags
---@field Assets TArray<FPoseSearchIndexAsset>
---@field MinCostAddend float
FPoseSearchIndexBase = {}



---@class FPoseSearchKeepRootRotationSample
---@field SecondsOffset float
---@field Weight float
FPoseSearchKeepRootRotationSample = {}



---@class FPoseSearchPoseMetadata
---@field Flags EPoseSearchPoseFlags
---@field CostAddend float
---@field ContinuingPoseCostAddend float
---@field AssetIndex int32
FPoseSearchPoseMetadata = {}



---@class FPoseSearchProceduralMovement
FPoseSearchProceduralMovement = {}


---@class FPoseSearchProceduralMovementSteeringSettings
---@field MaxSteeringRotationRateDegreesPerSecond float
---@field MinSteeringAngleDegrees float
FPoseSearchProceduralMovementSteeringSettings = {}



---@class FPoseSearchSchemaColorPreset
---@field Query FLinearColor
---@field Result FLinearColor
FPoseSearchSchemaColorPreset = {}



---@class FPoseSearchTrajectorySample
---@field Offset float
---@field Flags int32
---@field Weight float
---@field ColorPresetIndex int32
FPoseSearchTrajectorySample = {}



---@class UAnimNotifyState_PoseSearchBase : UAnimNotifyState
UAnimNotifyState_PoseSearchBase = {}


---@class UAnimNotifyState_PoseSearchBlockTransition : UAnimNotifyState_PoseSearchBase
UAnimNotifyState_PoseSearchBlockTransition = {}


---@class UAnimNotifyState_PoseSearchExcludeFromDatabase : UAnimNotifyState_PoseSearchBase
UAnimNotifyState_PoseSearchExcludeFromDatabase = {}


---@class UAnimNotifyState_PoseSearchModifyCost : UAnimNotifyState_PoseSearchBase
---@field CostAddend float
UAnimNotifyState_PoseSearchModifyCost = {}



---@class UAnimNotifyState_PoseSearchOverrideContinuingPoseCostBias : UAnimNotifyState_PoseSearchBase
---@field CostAddend float
UAnimNotifyState_PoseSearchOverrideContinuingPoseCostBias = {}



---@class UNormalizationSetAsset : UDataAsset
---@field Databases TArray<UPoseSearchDatabase>
---@field bShouldResetOnSave boolean
UNormalizationSetAsset = {}



---@class UPoseSearchDatabase : UPoseSearchSearchableAsset
---@field Schema UPoseSearchSchema
---@field ExtrapolationParameters FPoseSearchExtrapolationParameters
---@field ExcludeFromDatabaseParameters FPoseSearchExcludeFromDatabaseParameters
---@field Sequences TArray<FPoseSearchDatabaseSequence>
---@field BlendSpaces TArray<FPoseSearchDatabaseBlendSpace>
---@field PoseSearchMode EPoseSearchMode
---@field NumberOfPrincipalComponents int32
---@field KDTreeMaxLeafSize int32
---@field KDTreeQueryNumNeighbors int32
---@field bSkipSearchIfPossible boolean
---@field NormalizationSet UNormalizationSetAsset
---@field SteeringSettings FPoseSearchProceduralMovementSteeringSettings
---@field SearchIndexPrivate FPoseSearchIndex
UPoseSearchDatabase = {}



---@class UPoseSearchDatabaseSet : UPoseSearchSearchableAsset
---@field AssetsToSearch TArray<FPoseSearchDatabaseSetEntry>
---@field bEvaluateContinuingPoseFirst boolean
UPoseSearchDatabaseSet = {}



---@class UPoseSearchFeatureChannel : UObject
---@field ChannelIdx int32
---@field ChannelDataOffset int32
---@field ChannelCardinality int32
UPoseSearchFeatureChannel = {}



---@class UPoseSearchFeatureChannel_BoneRotation : UPoseSearchFeatureChannel
---@field Weight float
---@field bone FBoneReference
---@field Samples TArray<FPoseSearchBoneRotationSample>
---@field KeepRootRotationSamples TArray<FPoseSearchKeepRootRotationSample>
---@field FilterAngleSamples TArray<FPoseSearchBoneRotationFilter>
---@field SchemaBoneIdx int8
UPoseSearchFeatureChannel_BoneRotation = {}



---@class UPoseSearchFeatureChannel_FilterCrashingLegs : UPoseSearchFeatureChannel
---@field LeftThigh FBoneReference
---@field RightThigh FBoneReference
---@field LeftFoot FBoneReference
---@field RightFoot FBoneReference
---@field Weight float
---@field LeftThighIdx int8
---@field RightThighIdx int8
---@field LeftFootIdx int8
---@field RightFootIdx int8
---@field InputQueryPose EInputQueryPose
---@field AllowedTolerance float
UPoseSearchFeatureChannel_FilterCrashingLegs = {}



---@class UPoseSearchFeatureChannel_Heading : UPoseSearchFeatureChannel
---@field bone FBoneReference
---@field Weight float
---@field SampleTimeOffset float
---@field HeadingAxis EHeadingAxis
---@field SchemaBoneIdx int8
---@field ColorPresetIndex int32
---@field InputQueryPose EInputQueryPose
---@field bUseSampleTimeOffsetRootBone boolean
UPoseSearchFeatureChannel_Heading = {}



---@class UPoseSearchFeatureChannel_Pose : UPoseSearchFeatureChannel
---@field Weight float
---@field SampledBones TArray<FPoseSearchBone>
---@field SampleTimes TArray<float>
---@field SchemaBoneIdx TArray<int8>
---@field InputQueryPose EInputQueryPose
UPoseSearchFeatureChannel_Pose = {}



---@class UPoseSearchFeatureChannel_Position : UPoseSearchFeatureChannel
---@field bone FBoneReference
---@field Weight float
---@field SampleTimeOffset float
---@field SchemaBoneIdx int8
---@field ColorPresetIndex int32
---@field InputQueryPose EInputQueryPose
---@field bUseSampleTimeOffsetRootBone boolean
UPoseSearchFeatureChannel_Position = {}



---@class UPoseSearchFeatureChannel_RemainingDistance : UPoseSearchFeatureChannel
---@field Weight float
---@field DistanceOffset float
---@field DistanceToNotExlcudeIdle float
---@field bShouldUseAccumulatedDistance boolean
---@field InitialSampleDistanceOffset float
UPoseSearchFeatureChannel_RemainingDistance = {}



---@class UPoseSearchFeatureChannel_Trajectory : UPoseSearchFeatureChannel
---@field Domain EPoseSearchFeatureDomain
---@field Weight float
---@field Samples TArray<FPoseSearchTrajectorySample>
UPoseSearchFeatureChannel_Trajectory = {}



---@class UPoseSearchSchema : UDataAsset
---@field Skeleton USkeleton
---@field SampleRate int32
---@field Channels TArray<UPoseSearchFeatureChannel>
---@field MirrorDataTable UMirrorDataTable
---@field DataPreprocessor EPoseSearchDataPreprocessor
---@field SchemaCardinality int32
---@field BoneReferences TArray<FBoneReference>
---@field BoneIndices TArray<uint16>
---@field BoneIndicesWithParents TArray<uint16>
---@field ContinuingPoseCostBias float
---@field BaseCostBias float
---@field MirrorMismatchCostBias float
---@field SequenceEndExlusionTime float
---@field ColorPresets TArray<FPoseSearchSchemaColorPreset>
UPoseSearchSchema = {}



---@class UPoseSearchSearchableAsset : UDataAsset
UPoseSearchSearchableAsset = {}


