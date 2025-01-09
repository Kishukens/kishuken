---@meta

---@class ABP_FogToxic_Cave_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field StaticMesh UStaticMeshComponent
---@field DefaultSceneRoot USceneComponent
---@field WindDirection FVector
---@field Speed double
---@field VolumetricFogSize FVector
---@field DiffuseColor_Volumetric FLinearColor
---@field Density double
---@field Height_Min double
---@field Height_Max double
---@field Height_Power double
---@field LastDensity_Power double
ABP_FogToxic_Cave_C = {}

function ABP_FogToxic_Cave_C:UserConstructionScript() end
---@param EntryPoint int32
function ABP_FogToxic_Cave_C:ExecuteUbergraph_BP_FogToxic_Cave(EntryPoint) end


