---@meta

---@class ABakedFoliageActor : AActor
---@field LandscapeGuid FGuid
---@field ComponentSectionBaseX int32
---@field ComponentSectionBaseY int32
---@field ComponentSizeQuads int32
---@field Bounds FBox
---@field bIsDistantTrees boolean
---@field BakedFoliage FBakedFoliage
ABakedFoliageActor = {}



---@class AControlPointMeshActor : AActor
---@field ControlPointMeshComponent UControlPointMeshComponent
AControlPointMeshActor = {}



---@class ALandscape : ALandscapeProxy
---@field FoliageGeneratorConfig UGSCFoliageGeneratorConfig
ALandscape = {}

---@param InWorldTransform FTransform
---@param InExtents FBox2D
---@param OutRenderTarget UTextureRenderTarget2D
function ALandscape:RenderHeightmap(InWorldTransform, InExtents, OutRenderTarget) end


---@class ALandscapeBlueprintBrushBase : AActor
ALandscapeBlueprintBrushBase = {}

function ALandscapeBlueprintBrushBase:RequestLandscapeUpdate() end
---@param InIsHeightmap boolean
---@param InCombinedResult UTextureRenderTarget2D
---@param InWeightmapLayerName FName
---@return UTextureRenderTarget2D
function ALandscapeBlueprintBrushBase:Render(InIsHeightmap, InCombinedResult, InWeightmapLayerName) end
---@param InLandscapeTransform FTransform
---@param InLandscapeSize FIntPoint
---@param InLandscapeRenderTargetSize FIntPoint
function ALandscapeBlueprintBrushBase:Initialize(InLandscapeTransform, InLandscapeSize, InLandscapeRenderTargetSize) end
---@param OutStreamableAssets TArray<UObject>
function ALandscapeBlueprintBrushBase:GetBlueprintRenderDependencies(OutStreamableAssets) end


---@class ALandscapeGizmoActiveActor : ALandscapeGizmoActor
ALandscapeGizmoActiveActor = {}


---@class ALandscapeGizmoActor : AActor
ALandscapeGizmoActor = {}


---@class ALandscapeMeshProxyActor : AActor
---@field LandscapeMeshProxyComponent ULandscapeMeshProxyComponent
ALandscapeMeshProxyActor = {}



---@class ALandscapeProxy : APartitionActor
---@field SplineComponent ULandscapeSplinesComponent
---@field LandscapeGuid FGuid
---@field PerLODOverrideMaterials TArray<FLandscapePerLODMaterialOverride>
---@field LandscapeSectionOffset FIntPoint
---@field MaxLODLevel int32
---@field ComponentScreenSizeToUseSubSections float
---@field LOD0ScreenSize float
---@field LOD0DistributionSetting float
---@field LODDistributionSetting float
---@field StaticLightingLOD int32
---@field DefaultPhysMaterial UPhysicalMaterial
---@field StreamingDistanceMultiplier float
---@field LandscapeMaterial UMaterialInterface
---@field LandscapeHoleMaterial UMaterialInterface
---@field RuntimeVirtualTextures TArray<URuntimeVirtualTexture>
---@field bSetCreateRuntimeVirtualTextureVolumes boolean
---@field VirtualTextureNumLods int32
---@field VirtualTextureLodBias int32
---@field VirtualTextureRenderPassType ERuntimeVirtualTextureMainPassType
---@field NegativeZBoundsExtension float
---@field PositiveZBoundsExtension float
---@field LandscapeComponents TArray<ULandscapeComponent>
---@field CollisionComponents TArray<ULandscapeHeightfieldCollisionComponent>
---@field FoliageComponents TArray<UHierarchicalInstancedStaticMeshComponent>
---@field NaniteComponent ULandscapeNaniteComponent
---@field bHasLandscapeGrass boolean
---@field StaticLightingResolution float
---@field CastShadow boolean
---@field bCastDynamicShadow boolean
---@field bCastStaticShadow boolean
---@field bCastContactShadow boolean
---@field bCastFarShadow boolean
---@field bCastHiddenShadow boolean
---@field bCastShadowAsTwoSided boolean
---@field bAffectDistanceFieldLighting boolean
---@field bAffectDynamicIndirectLighting boolean
---@field LightingChannels FLightingChannels
---@field bUseMaterialPositionOffsetInStaticLighting boolean
---@field bRenderCustomDepth boolean
---@field CustomDepthStencilWriteMask ERendererStencilMask
---@field CustomDepthStencilValue int32
---@field LDMaxDrawDistance float
---@field LightmassSettings FLightmassPrimitiveSettings
---@field CollisionMipLevel int32
---@field SimpleCollisionMipLevel int32
---@field CollisionThickness float
---@field BodyInstance FBodyInstance
---@field bGenerateOverlapEvents boolean
---@field bBakeMaterialPositionOffsetIntoCollision boolean
---@field ComponentSizeQuads int32
---@field SubsectionSizeQuads int32
---@field NumSubsections int32
---@field bUsedForNavigation boolean
---@field bFillCollisionUnderLandscapeForNavmesh boolean
---@field bUseDynamicMaterialInstance boolean
---@field NavigationGeometryGatheringMode ENavDataGatheringMode
---@field bUseLandscapeForCullingInvisibleHLODVertices boolean
---@field bHasLayersContent boolean
ALandscapeProxy = {}

---@param InType ERuntimeVirtualTextureMainPassType
function ALandscapeProxy:SetVirtualTextureRenderPassType(InType) end
---@param ParameterName FName
---@param Value FLinearColor
function ALandscapeProxy:SetLandscapeMaterialVectorParameterValue(ParameterName, Value) end
---@param ParameterName FName
---@param Value UTexture
function ALandscapeProxy:SetLandscapeMaterialTextureParameterValue(ParameterName, Value) end
---@param ParameterName FName
---@param Value float
function ALandscapeProxy:SetLandscapeMaterialScalarParameterValue(ParameterName, Value) end
---@param InRenderTarget UTextureRenderTarget2D
---@param InExportHeightIntoRGChannel boolean
---@param InExportLandscapeProxies boolean
---@return boolean
function ALandscapeProxy:LandscapeExportHeightmapToRenderTarget(InRenderTarget, InExportHeightIntoRGChannel, InExportLandscapeProxies) end
---@return ALandscape
function ALandscapeProxy:GetLandscapeActor() end
---@param PaintLayer ULandscapeLayerInfoObject
---@param InSplineComponent USplineComponent
function ALandscapeProxy:EditorUndoApplySplineGSC(PaintLayer, InSplineComponent) end
---@param NewLandscapeMaterial UMaterialInterface
function ALandscapeProxy:EditorSetLandscapeMaterial(NewLandscapeMaterial) end
---@param InSplineComponent USplineComponent
---@param StartWidth float
---@param EndWidth float
---@param StartSideFalloff float
---@param EndSideFalloff float
---@param HeightOffset float
---@param NumSubdivisions int32
---@param bRaiseHeights boolean
---@param bLowerHeights boolean
---@param PaintLayer ULandscapeLayerInfoObject
---@param EditLayerName FName
function ALandscapeProxy:EditorApplySplineGSC(InSplineComponent, StartWidth, EndWidth, StartSideFalloff, EndSideFalloff, HeightOffset, NumSubdivisions, bRaiseHeights, bLowerHeights, PaintLayer, EditLayerName) end
---@param InSplineComponent USplineComponent
---@param StartWidth float
---@param EndWidth float
---@param StartSideFalloff float
---@param EndSideFalloff float
---@param StartRoll float
---@param EndRoll float
---@param NumSubdivisions int32
---@param bRaiseHeights boolean
---@param bLowerHeights boolean
---@param PaintLayer ULandscapeLayerInfoObject
---@param EditLayerName FName
function ALandscapeProxy:EditorApplySpline(InSplineComponent, StartWidth, EndWidth, StartSideFalloff, EndSideFalloff, StartRoll, EndRoll, NumSubdivisions, bRaiseHeights, bLowerHeights, PaintLayer, EditLayerName) end
---@param InLODDistanceFactor float
function ALandscapeProxy:ChangeLODDistanceFactor(InLODDistanceFactor) end
---@param InComponentScreenSizeToUseSubSections float
function ALandscapeProxy:ChangeComponentScreenSizeToUseSubSections(InComponentScreenSizeToUseSubSections) end


---@class ALandscapeSplineActor : AActor
---@field LandscapeGuid FGuid
ALandscapeSplineActor = {}



---@class ALandscapeSplineMeshesActor : APartitionActor
---@field StaticMeshComponents TArray<UStaticMeshComponent>
ALandscapeSplineMeshesActor = {}



---@class ALandscapeStreamingProxy : ALandscapeProxy
---@field LandscapeActor TLazyObjectPtr<ALandscape>
ALandscapeStreamingProxy = {}



---@class FAsyncSpawnMeshRequest
FAsyncSpawnMeshRequest = {}


---@class FBakedFoliage
---@field TreeBakedFoliage FFoliageTypeBakedFoliage
---@field BushBakedFoliage FFoliageTypeBakedFoliage
---@field GrassBakedFoliage FFoliageTypeBakedFoliage
FBakedFoliage = {}



---@class FBiomInfo
---@field Name FString
---@field Index int32
---@field Color uint8
FBiomInfo = {}



---@class FCompressedTransformRanges
---@field MinRotation FRotator3f
---@field MaxRotation FRotator3f
---@field MinScale FVector3f
---@field MaxScale FVector3f
---@field MinPosition FVector3f
---@field MaxPosition FVector3f
---@field ScaleMode EScaleMode
---@field bIsHeight8Bit boolean
FCompressedTransformRanges = {}



---@class FCullDistance
---@field CullDistance float
---@field CullRange float
FCullDistance = {}



---@class FDensity
---@field bHasTrees boolean
---@field TreeDensity FFoliageTypeDensity
---@field bHasBushes boolean
---@field BushDensity FFoliageTypeDensity
---@field bHasGrass boolean
---@field GrassDensity FFoliageTypeDensity
FDensity = {}



---@class FDisableAndHideFlags
---@field bDisable boolean
---@field bHide boolean
FDisableAndHideFlags = {}



---@class FDistanceFieldFlags
---@field bDefault boolean
---@field bEnableOverride boolean
---@field bOverride boolean
FDistanceFieldFlags = {}



---@class FFoliageLayerDensity
---@field Layers TArray<FFoliageSubLayerDensity>
FFoliageLayerDensity = {}



---@class FFoliageMapLayer
---@field Name FString
---@field Interval FInt32Interval
---@field bHasVisualizationColor boolean
---@field VisualizationColor FColor
---@field bSpawnTrees boolean
---@field bSpawnBushes boolean
---@field bSpawnGrass boolean
---@field bHasInnerFoliage boolean
---@field bInnerFoliage boolean
FFoliageMapLayer = {}



---@class FFoliageSubLayerDensity
---@field Density float
---@field DistantDensityScale float
---@field bOverrideCullDistance boolean
---@field CullDistance FCullDistance
---@field FarCullDistance FCullDistance
---@field bUseLayerMap boolean
---@field LayerMap FLayerMap
---@field bUseVarietyMap boolean
---@field VarietyMap FVarietyMap
---@field bDisabled boolean
---@field bHidden boolean
---@field FoliageVarieties TArray<FGrassVariety>
FFoliageSubLayerDensity = {}



---@class FFoliageTypeBakedFoliage
---@field ComponentSubdivisionFactor uint32
---@field DistantComponentSubdivisionFactor uint32
---@field HISMsOrISMs TArray<FHISMOrISMBakedFoliage>
---@field MaxEndCullDistance float
---@field MaxDistantEndCullDistance float
---@field MinStartFadeInDistance float
FFoliageTypeBakedFoliage = {}



---@class FFoliageTypeDensity
---@field OuterLayerDensity FFoliageLayerDensity
---@field bHasInnerLayer boolean
---@field InnerLayerDensity FFoliageLayerDensity
FFoliageTypeDensity = {}



---@class FForeignControlPointData
FForeignControlPointData = {}


---@class FForeignSplineSegmentData
FForeignSplineSegmentData = {}


---@class FForeignWorldSplineData
FForeignWorldSplineData = {}


---@class FGSCFoliagePrefabChild
---@field bDisabled boolean
---@field StaticMesh UStaticMesh
---@field ChildOffsets TArray<FTransform>
---@field bHasFoliageCollisionFootprint boolean
---@field FoliageCollisionFootprint float
---@field bHasFoliageCollisionCrownFootprint boolean
---@field FoliageCollisionCrownFootprint float
---@field bOverrideGeometryCollisionFootprint boolean
---@field GeometryCollisionFootprint float
---@field bOverrideGeometryCollisionCrownFootprint boolean
---@field GeometryCollisionCrownFootprint float
---@field bHasHeightFootprint boolean
---@field HeightFootprint FHeightFootprint
---@field SurfaceAlignment float
---@field TrunkDiameter float
---@field bOverrideAffectsDistanceFieldLighting boolean
---@field bAffectsDistanceFieldLighting boolean
---@field bDoNotSpawnOnMeshes boolean
FGSCFoliagePrefabChild = {}



---@class FGizmoSelectData
FGizmoSelectData = {}


---@class FGrassInput
---@field Name FName
---@field GrassType ULandscapeGrassType
---@field Input FExpressionInput
FGrassInput = {}



---@class FGrassLayer
---@field Name FString
---@field LayerID int32
---@field LayerColor FUInt8Interval
---@field Density FDensity
---@field bDisabled boolean
---@field bHidden boolean
FGrassLayer = {}



---@class FGrassVariety
---@field GrassMesh UStaticMesh
---@field FoliagePrefab UGSCFoliagePrefab
---@field bDisabled boolean
---@field bDistantFoliage boolean
---@field Advanced FGrassVarietyAdvanced
FGrassVariety = {}



---@class FGrassVarietyAdvanced
---@field GrassMesh UStaticMesh
---@field OverrideMaterials TArray<UMaterialInterface>
---@field GrassDensity FPerPlatformFloat
---@field bUseGrid boolean
---@field PlacementJitter float
---@field StartCullDistance FPerPlatformInt
---@field EndCullDistance FPerPlatformInt
---@field MinLOD int32
---@field Scaling EGrassScaling
---@field ScaleX FFloatInterval
---@field ScaleY FFloatInterval
---@field ScaleZ FFloatInterval
---@field RandomRotation boolean
---@field MaxPitchRotation float
---@field MaxRollRotation float
---@field bUseSpecificSlopeRotationPerAxis boolean
---@field PitchRotation FFloatInterval
---@field RollRotation FFloatInterval
---@field SurfaceAlignment float
---@field TrunkDiameter float
---@field bOverrideSlopeGroup boolean
---@field SlopeGroupIndex uint32
---@field bOverrideCastsDynamicShadows boolean
---@field bCastsDynamicShadows boolean
---@field bOverrideCastsContactShadows boolean
---@field bCastsContactShadows boolean
---@field bUseLandscapeLightmap boolean
---@field LightingChannels FLightingChannels
---@field bReceivesDecals boolean
---@field bAffectDistanceFieldLighting boolean
---@field bCastDynamicShadow boolean
---@field bCastContactShadow boolean
---@field bKeepInstanceBufferCPUCopy boolean
---@field InstanceWorldPositionOffsetDisableDistance uint32
---@field bHasFoliageCollisionFootprint boolean
---@field FoliageCollisionFootprint float
---@field bHasFoliageCollisionCrownFootprint boolean
---@field FoliageCollisionCrownFootprint float
---@field bOverrideGeometryCollisionFootprint boolean
---@field GeometryCollisionFootprint float
---@field bOverrideGeometryCollisionCrownFootprint boolean
---@field GeometryCollisionCrownFootprint float
---@field bHasHeightFootprint boolean
---@field HeightFootprint FHeightFootprint
---@field GeneratorWeight float
---@field ZOffsetRandomInterval FFloatInterval
---@field bOverrideAffectsDistanceFieldLighting boolean
---@field bAffectsDistanceFieldLighting boolean
---@field bDoNotSpawnOnMeshes boolean
FGrassVarietyAdvanced = {}



---@class FHISMOrISMBakedFoliage
---@field Mesh TSoftObjectPtr<UStaticMesh>
---@field StartCullDistance int32
---@field EndCullDistance int32
---@field StartFadeInDistance int32
---@field EndFadeInDistance int32
---@field bCastsDynamicShadows boolean
---@field bCastsContactShadows boolean
---@field bAffectsDistanceLighting boolean
---@field bHasCollision boolean
---@field bReceivesDecals boolean
FHISMOrISMBakedFoliage = {}



---@class FHeightFootprint
---@field Footprint float
---@field bOverrideHoverAndSubmerge boolean
---@field Hover float
---@field Submerge float
FHeightFootprint = {}



---@class FHeightmapData
---@field Texture UTexture2D
FHeightmapData = {}



---@class FLandscapeComponentMaterialOverride
---@field LODIndex FPerPlatformInt
---@field Material UMaterialInterface
FLandscapeComponentMaterialOverride = {}



---@class FLandscapeEditToolRenderData
---@field ToolMaterial UMaterialInterface
---@field GizmoMaterial UMaterialInterface
---@field SelectedType int32
---@field DebugChannelR int32
---@field DebugChannelG int32
---@field DebugChannelB int32
---@field DataTexture UTexture2D
---@field LayerContributionTexture UTexture2D
---@field DirtyTexture UTexture2D
FLandscapeEditToolRenderData = {}



---@class FLandscapeEditorLayerSettings
FLandscapeEditorLayerSettings = {}


---@class FLandscapeImportLayerInfo
FLandscapeImportLayerInfo = {}


---@class FLandscapeInfoLayerSettings
---@field LayerInfoObj ULandscapeLayerInfoObject
---@field LayerName FName
FLandscapeInfoLayerSettings = {}



---@class FLandscapeLayer
---@field Guid FGuid
---@field Name FName
---@field bVisible boolean
---@field bLocked boolean
---@field HeightmapAlpha float
---@field WeightmapAlpha float
---@field BlendMode ELandscapeBlendMode
---@field Brushes TArray<FLandscapeLayerBrush>
---@field WeightmapLayerAllocationBlend TMap<ULandscapeLayerInfoObject, boolean>
FLandscapeLayer = {}



---@class FLandscapeLayerBrush
FLandscapeLayerBrush = {}


---@class FLandscapeLayerComponentData
---@field HeightmapData FHeightmapData
---@field WeightmapData FWeightmapData
FLandscapeLayerComponentData = {}



---@class FLandscapeLayerStruct
---@field LayerInfoObj ULandscapeLayerInfoObject
FLandscapeLayerStruct = {}



---@class FLandscapeMaterialTextureStreamingInfo
---@field TextureName FName
---@field TexelFactor float
FLandscapeMaterialTextureStreamingInfo = {}



---@class FLandscapePerLODMaterialOverride
---@field LODIndex int32
---@field Material UMaterialInterface
FLandscapePerLODMaterialOverride = {}



---@class FLandscapeProxyMaterialOverride
---@field LODIndex FPerPlatformInt
---@field Material UMaterialInterface
FLandscapeProxyMaterialOverride = {}



---@class FLandscapeSplineConnection
---@field Segment ULandscapeSplineSegment
---@field End boolean
FLandscapeSplineConnection = {}



---@class FLandscapeSplineInterpPoint
---@field Center FVector
---@field Left FVector
---@field Right FVector
---@field FalloffLeft FVector
---@field FalloffRight FVector
---@field LayerLeft FVector
---@field LayerRight FVector
---@field LayerFalloffLeft FVector
---@field LayerFalloffRight FVector
---@field StartEndFalloff float
FLandscapeSplineInterpPoint = {}



---@class FLandscapeSplineMeshEntry
---@field Mesh UStaticMesh
---@field MaterialOverrides TArray<UMaterialInterface>
---@field bCenterH boolean
---@field CenterAdjust FVector2D
---@field bScaleToWidth boolean
---@field Scale FVector
---@field Orientation LandscapeSplineMeshOrientation
---@field ForwardAxis ESplineMeshAxis::Type
---@field UpAxis ESplineMeshAxis::Type
FLandscapeSplineMeshEntry = {}



---@class FLandscapeSplineSegmentConnection
---@field ControlPoint ULandscapeSplineControlPoint
---@field TangentLen float
---@field SocketName FName
FLandscapeSplineSegmentConnection = {}



---@class FLayerBlendInput
---@field LayerName FName
---@field BlendType ELandscapeLayerBlendType
---@field LayerInput FExpressionInput
---@field HeightInput FExpressionInput
---@field PreviewWeight float
---@field ConstLayerInput FVector
---@field ConstHeightInput float
FLayerBlendInput = {}



---@class FLayerMap
---@field Texture USRLEAsset
---@field TileFactor float
---@field Range FFloatInterval
FLayerMap = {}



---@class FObjectPatternChild
---@field ChildMesh UStaticMesh
---@field StartCullDistance int32
---@field EndCullDistance int32
---@field Footprint int32
---@field bEnableCollision boolean
---@field Transforms TArray<FTransform>
FObjectPatternChild = {}



---@class FPhysicalMaterialInput
---@field PhysicalMaterial UPhysicalMaterial
---@field Input FExpressionInput
FPhysicalMaterialInput = {}



---@class FSlopeGroup
---@field SlopeRange FFloatInterval
FSlopeGroup = {}



---@class FSubcomponentBakedFoliage
---@field TransformRanges TArray<uint32>
---@field Ranges FCompressedTransformRanges
---@field InstancingRNGSeed int32
---@field NumTransforms uint32
FSubcomponentBakedFoliage = {}



---@class FUInt8Interval
---@field LowerBound uint8
---@field UpperBound uint8
FUInt8Interval = {}



---@class FVarietyMap
---@field Texture USRLEAsset
---@field TileFactor float
---@field OverlapFactor float
FVarietyMap = {}



---@class FWeightmapData
---@field Textures TArray<UTexture2D>
---@field LayerAllocations TArray<FWeightmapLayerAllocationInfo>
---@field TextureUsages TArray<ULandscapeWeightmapUsage>
FWeightmapData = {}



---@class FWeightmapLayerAllocationInfo
---@field LayerInfo ULandscapeLayerInfoObject
---@field WeightmapTextureIndex uint8
---@field WeightmapTextureChannel uint8
FWeightmapLayerAllocationInfo = {}



---@class ILandscapeSplineInterface : IInterface
ILandscapeSplineInterface = {}


---@class UControlPointMeshComponent : UStaticMeshComponent
---@field VirtualTextureMainPassMaxDrawDistance float
UControlPointMeshComponent = {}



---@class UGSCFoliageGeneratorConfig : UObject
---@field WorldTopLeftCoords FVector
---@field WorldWidth float
---@field WorldHeight float
---@field Bioms TArray<FBiomInfo>
---@field BiomBitmapsAdapter UTileBitmapAdapter
UGSCFoliageGeneratorConfig = {}



---@class UGSCFoliagePrefab : UObject
---@field PrefabChildren TArray<FGSCFoliagePrefabChild>
UGSCFoliagePrefab = {}



---@class UGSCObjectPattern : UObject
---@field Children TArray<FObjectPatternChild>
UGSCObjectPattern = {}



---@class UGeometryCollisionMap : UObject
UGeometryCollisionMap = {}


---@class ULandscapeComponent : UPrimitiveComponent
---@field SectionBaseX int32
---@field SectionBaseY int32
---@field ComponentSizeQuads int32
---@field SubsectionSizeQuads int32
---@field NumSubsections int32
---@field OverrideMaterial UMaterialInterface
---@field OverrideHoleMaterial UMaterialInterface
---@field MaterialInstances TArray<UMaterialInstanceConstant>
---@field MaterialInstancesDynamic TArray<UMaterialInstanceDynamic>
---@field LODIndexToMaterialIndex TArray<int8>
---@field XYOffsetmapTexture UTexture2D
---@field WeightmapScaleBias FVector4
---@field WeightmapSubsectionOffset float
---@field HeightmapScaleBias FVector4
---@field CachedLocalBox FBox
---@field CollisionComponent TLazyObjectPtr<ULandscapeHeightfieldCollisionComponent>
---@field bNaniteActive boolean
---@field HeightmapTexture UTexture2D
---@field WeightmapLayerAllocations TArray<FWeightmapLayerAllocationInfo>
---@field WeightmapTextures TArray<UTexture2D>
---@field PerLODOverrideMaterials TArray<FLandscapePerLODMaterialOverride>
---@field MapBuildDataId FGuid
---@field IrrelevantLights TArray<FGuid>
---@field CollisionMipLevel int32
---@field SimpleCollisionMipLevel int32
---@field NegativeZBoundsExtension float
---@field PositiveZBoundsExtension float
---@field StaticLightingResolution float
---@field ForcedLOD int32
---@field LODBias int32
---@field StateId FGuid
---@field BakedTextureMaterialGuid FGuid
---@field LastBakedTextureMaterialGuid FGuid
---@field GIBakedBaseColorTexture UTexture2D
---@field MobileMaterialInterface UMaterialInterface
---@field MobileMaterialInterfaces TArray<UMaterialInterface>
---@field MobileWeightmapTextures TArray<UTexture2D>
ULandscapeComponent = {}

---@param InLODBias int32
function ULandscapeComponent:SetLODBias(InLODBias) end
---@param InForcedLOD int32
function ULandscapeComponent:SetForcedLOD(InForcedLOD) end
---@param InIndex int32
---@return UMaterialInstanceDynamic
function ULandscapeComponent:GetMaterialInstanceDynamic(InIndex) end
---@param InLocation FVector
---@param InPaintLayerName FName
---@return float
function ULandscapeComponent:EditorGetPaintLayerWeightByNameAtLocation(InLocation, InPaintLayerName) end
---@param InLocation FVector
---@param PaintLayer ULandscapeLayerInfoObject
---@return float
function ULandscapeComponent:EditorGetPaintLayerWeightAtLocation(InLocation, PaintLayer) end


---@class ULandscapeGizmoRenderComponent : UPrimitiveComponent
ULandscapeGizmoRenderComponent = {}


---@class ULandscapeGrassType : UObject
---@field GrassVarieties TArray<FGrassVariety>
---@field bEnableDensityScaling boolean
---@field GrassMesh UStaticMesh
---@field GrassDensity float
---@field PlacementJitter float
---@field StartCullDistance int32
---@field EndCullDistance int32
---@field RandomRotation boolean
---@field AlignToSurface boolean
ULandscapeGrassType = {}



---@class ULandscapeHLODBuilder : UHLODBuilder
ULandscapeHLODBuilder = {}


---@class ULandscapeHeightfieldCollisionComponent : UPrimitiveComponent
---@field ComponentLayerInfos TArray<ULandscapeLayerInfoObject>
---@field SectionBaseX int32
---@field SectionBaseY int32
---@field CollisionSizeQuads int32
---@field CollisionScale float
---@field SimpleCollisionSizeQuads int32
---@field CollisionQuadFlags TArray<uint8>
---@field HeightfieldGuid FGuid
---@field CachedLocalBox FBox
---@field RenderComponent TLazyObjectPtr<ULandscapeComponent>
---@field CookedPhysicalMaterials TArray<UPhysicalMaterial>
ULandscapeHeightfieldCollisionComponent = {}

---@return ULandscapeComponent
function ULandscapeHeightfieldCollisionComponent:GetRenderComponent() end


---@class ULandscapeInfo : UObject
---@field LandscapeActor TLazyObjectPtr<ALandscape>
---@field LandscapeGuid FGuid
---@field ComponentSizeQuads int32
---@field SubsectionSizeQuads int32
---@field ComponentNumSubsections int32
---@field DrawScale FVector
---@field StreamingProxies TArray<TWeakObjectPtr<ALandscapeStreamingProxy>>
ULandscapeInfo = {}



---@class ULandscapeInfoMap : UObject
ULandscapeInfoMap = {}


---@class ULandscapeLODStreamingProxy_DEPRECATED : UStreamableRenderAsset
ULandscapeLODStreamingProxy_DEPRECATED = {}


---@class ULandscapeLayerInfoObject : UObject
---@field LayerName FName
---@field PhysMaterial UPhysicalMaterial
---@field Hardness float
---@field LayerUsageDebugColor FLinearColor
ULandscapeLayerInfoObject = {}



---@class ULandscapeMaterialInstanceConstant : UMaterialInstanceConstant
---@field TextureStreamingInfo TArray<FLandscapeMaterialTextureStreamingInfo>
---@field bIsLayerThumbnail boolean
---@field bDisableTessellation boolean
---@field bMobile boolean
---@field bEditorToolUsage boolean
ULandscapeMaterialInstanceConstant = {}



---@class ULandscapeMeshCollisionComponent : ULandscapeHeightfieldCollisionComponent
---@field MeshGuid FGuid
ULandscapeMeshCollisionComponent = {}



---@class ULandscapeMeshProxyComponent : UStaticMeshComponent
---@field LandscapeGuid FGuid
---@field ProxyComponentBases TArray<FIntPoint>
---@field ProxyLOD int8
ULandscapeMeshProxyComponent = {}



---@class ULandscapeNaniteComponent : UStaticMeshComponent
---@field ProxyContentId FGuid
---@field bEnabled boolean
ULandscapeNaniteComponent = {}



---@class ULandscapeSettings : UDeveloperSettings
---@field MaxNumberOfLayers int32
---@field SideResolutionLimit int32
---@field DefaultLandscapeMaterial TSoftObjectPtr<UMaterialInterface>
---@field DefaultLayerInfoObject TSoftObjectPtr<ULandscapeLayerInfoObject>
---@field bRestrictiveMode boolean
ULandscapeSettings = {}



---@class ULandscapeSplineControlPoint : UObject
---@field Location FVector
---@field Rotation FRotator
---@field Width float
---@field LayerWidthRatio float
---@field SideFalloff float
---@field LeftSideFalloffFactor float
---@field RightSideFalloffFactor float
---@field LeftSideLayerFalloffFactor float
---@field RightSideLayerFalloffFactor float
---@field EndFalloff float
---@field ConnectedSegments TArray<FLandscapeSplineConnection>
---@field Points TArray<FLandscapeSplineInterpPoint>
---@field Bounds FBox
---@field LocalMeshComponent UControlPointMeshComponent
ULandscapeSplineControlPoint = {}



---@class ULandscapeSplineSegment : UObject
---@field Connections FLandscapeSplineSegmentConnection
---@field SplineInfo FInterpCurveVector
---@field Points TArray<FLandscapeSplineInterpPoint>
---@field Bounds FBox
---@field LocalMeshComponents TArray<USplineMeshComponent>
ULandscapeSplineSegment = {}



---@class ULandscapeSplinesComponent : UPrimitiveComponent
---@field ControlPoints TArray<ULandscapeSplineControlPoint>
---@field Segments TArray<ULandscapeSplineSegment>
---@field CookedForeignMeshComponents TArray<UMeshComponent>
ULandscapeSplinesComponent = {}

---@return TArray<USplineMeshComponent>
function ULandscapeSplinesComponent:GetSplineMeshComponents() end


---@class ULandscapeSubsystem : UTickableWorldSubsystem
ULandscapeSubsystem = {}


---@class ULandscapeWeightmapUsage : UObject
---@field ChannelUsage ULandscapeComponent
---@field LayerGuid FGuid
ULandscapeWeightmapUsage = {}



---@class UMaterialExpressionLandscapeGrassOutput : UMaterialExpressionCustomOutput
---@field GrassTypes TArray<FGrassInput>
UMaterialExpressionLandscapeGrassOutput = {}



---@class UMaterialExpressionLandscapeLayerBlend : UMaterialExpression
---@field Layers TArray<FLayerBlendInput>
UMaterialExpressionLandscapeLayerBlend = {}



---@class UMaterialExpressionLandscapeLayerCoords : UMaterialExpression
---@field MappingType ETerrainCoordMappingType
---@field CustomUVType ELandscapeCustomizedCoordType
---@field MappingScale float
---@field MappingRotation float
---@field MappingPanU float
---@field MappingPanV float
UMaterialExpressionLandscapeLayerCoords = {}



---@class UMaterialExpressionLandscapeLayerSample : UMaterialExpression
---@field ParameterName FName
---@field PreviewWeight float
UMaterialExpressionLandscapeLayerSample = {}



---@class UMaterialExpressionLandscapeLayerSwitch : UMaterialExpression
---@field LayerUsed FExpressionInput
---@field LayerNotUsed FExpressionInput
---@field ParameterName FName
---@field PreviewUsed boolean
UMaterialExpressionLandscapeLayerSwitch = {}



---@class UMaterialExpressionLandscapeLayerWeight : UMaterialExpression
---@field Base FExpressionInput
---@field Layer FExpressionInput
---@field ParameterName FName
---@field PreviewWeight float
---@field ConstBase FVector
UMaterialExpressionLandscapeLayerWeight = {}



---@class UMaterialExpressionLandscapePhysicalMaterialOutput : UMaterialExpressionCustomOutput
---@field Inputs TArray<FPhysicalMaterialInput>
UMaterialExpressionLandscapePhysicalMaterialOutput = {}



---@class UMaterialExpressionLandscapeVisibilityMask : UMaterialExpression
UMaterialExpressionLandscapeVisibilityMask = {}


---@class UTileBitmapAdapter : UObject
---@field TileBitmapSize int32
---@field ActualTileBitmapSize int32
---@field bValid boolean
---@field TileBitmaps TArray<USRLEAsset>
---@field TileBitmapsFolder FString
---@field BitmapNamePrefix FString
---@field LandscapeBitmap UTexture2D
---@field bLoadTileBitmapsFromLandscapeBitmap boolean
---@field bLoadTileBitmapsFromFolder boolean
---@field bMergeTileBitmapsToLandscapeBitmap boolean
---@field bValidateTileBitmaps boolean
UTileBitmapAdapter = {}



