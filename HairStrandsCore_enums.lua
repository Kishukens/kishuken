---@enum EFollicleMaskChannel
EFollicleMaskChannel = {
    R = 0,
    G = 1,
    B = 2,
    A = 3,
    EFollicleMaskChannel_MAX = 4,
}

---@enum EGroomBasisType
EGroomBasisType = {
    NoBasis = 0,
    BezierBasis = 1,
    BsplineBasis = 2,
    CatmullromBasis = 3,
    HermiteBasis = 4,
    PowerBasis = 5,
    EGroomBasisType_MAX = 6,
}

---@enum EGroomBindingMeshType
EGroomBindingMeshType = {
    SkeletalMesh = 0,
    GeometryCache = 1,
    EGroomBindingMeshType_MAX = 2,
}

---@enum EGroomBindingType
EGroomBindingType = {
    NoneBinding = 0,
    Rigid = 1,
    Skinning = 2,
    EGroomBindingType_MAX = 3,
}

---@enum EGroomCacheAttributes
EGroomCacheAttributes = {
    None = 0,
    Position = 1,
    Width = 2,
    Color = 4,
    PositionWidth = 3,
    PositionColor = 5,
    WidthColor = 5,
    PositionWidthColor = 7,
    EGroomCacheAttributes_MAX = 8,
}

---@enum EGroomCacheType
EGroomCacheType = {
    None = 0,
    Strands = 1,
    Guides = 2,
    EGroomCacheType_MAX = 3,
}

---@enum EGroomCurveType
EGroomCurveType = {
    Cubic = 0,
    Linear = 1,
    VariableOrder = 2,
    EGroomCurveType_MAX = 3,
}

---@enum EGroomGeometryType
EGroomGeometryType = {
    Strands = 0,
    Cards = 1,
    Meshes = 2,
    EGroomGeometryType_MAX = 3,
}

---@enum EGroomInterpolationQuality
EGroomInterpolationQuality = {
    Low = 0,
    Medium = 1,
    High = 2,
    Unknown = 3,
    EGroomInterpolationQuality_MAX = 4,
}

---@enum EGroomInterpolationType
EGroomInterpolationType = {
    None = 0,
    RigidTransform = 2,
    OffsetTransform = 4,
    SmoothTransform = 8,
    EGroomInterpolationType_MAX = 9,
}

---@enum EGroomInterpolationWeight
EGroomInterpolationWeight = {
    Parametric = 0,
    Root = 1,
    Index = 2,
    Unknown = 3,
    EGroomInterpolationWeight_MAX = 4,
}

---@enum EGroomNiagaraSolvers
EGroomNiagaraSolvers = {
    None = 0,
    CosseratRods = 2,
    AngularSprings = 4,
    CustomSolver = 8,
    EGroomNiagaraSolvers_MAX = 9,
}

---@enum EGroomOverrideType
EGroomOverrideType = {
    Auto = 0,
    Enable = 1,
    Disable = 2,
    EGroomOverrideType_MAX = 3,
}

---@enum EGroomStrandsSize
EGroomStrandsSize = {
    None = 0,
    Size2 = 2,
    Size4 = 4,
    Size8 = 8,
    Size16 = 16,
    Size32 = 32,
    EGroomStrandsSize_MAX = 33,
}

---@enum EHairAtlasTextureType
EHairAtlasTextureType = {
    Depth = 0,
    Tangent = 1,
    Attribute = 2,
    Coverage = 3,
    AuxilaryData = 4,
    Material = 5,
    EHairAtlasTextureType_MAX = 6,
}

---@enum EHairCardsClusterType
EHairCardsClusterType = {
    Low = 0,
    High = 1,
    EHairCardsClusterType_MAX = 2,
}

---@enum EHairCardsGenerationType
EHairCardsGenerationType = {
    CardsCount = 0,
    UseGuides = 1,
    EHairCardsGenerationType_MAX = 2,
}

---@enum EHairCardsSourceType
EHairCardsSourceType = {
    Procedural = 0,
    Imported = 1,
    EHairCardsSourceType_MAX = 2,
}

---@enum EHairInterpolationQuality
EHairInterpolationQuality = {
    Low = 0,
    Medium = 1,
    High = 2,
    Unknown = 3,
    EHairInterpolationQuality_MAX = 4,
}

---@enum EHairInterpolationWeight
EHairInterpolationWeight = {
    Parametric = 0,
    Root = 1,
    Index = 2,
    Distance = 3,
    Unknown = 4,
    EHairInterpolationWeight_MAX = 5,
}

---@enum EStrandsTexturesMeshType
EStrandsTexturesMeshType = {
    Static = 0,
    Skeletal = 1,
    EStrandsTexturesMeshType_MAX = 2,
}

---@enum EStrandsTexturesTraceType
EStrandsTexturesTraceType = {
    TraceInside = 0,
    TraceOuside = 1,
    TraceBidirectional = 2,
    EStrandsTexturesTraceType_MAX = 3,
}

