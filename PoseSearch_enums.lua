---@enum EHeadingAxis
EHeadingAxis = {
    X = 0,
    Y = 1,
    Z = 2,
    Num = 3,
    Invalid = 3,
    EHeadingAxis_MAX = 4,
}

---@enum EInputQueryPose
EInputQueryPose = {
    UseCharacterPose = 0,
    UseContinuingPose = 1,
    UseInterpolatedContinuingPose = 2,
    Num = 3,
    Invalid = 3,
    EInputQueryPose_MAX = 4,
}

---@enum EMotionMatchingFlags
EMotionMatchingFlags = {
    None = 0,
    JumpedToPose = 1,
    JumpedToFollowUp = 2,
    EMotionMatchingFlags_MAX = 3,
}

---@enum EPoseSearchBoneFlags
EPoseSearchBoneFlags = {
    Velocity = 1,
    Position = 2,
    Rotation = 4,
    Phase = 8,
    EPoseSearchBoneFlags_MAX = 9,
}

---@enum EPoseSearchBooleanRequest
EPoseSearchBooleanRequest = {
    FalseValue = 0,
    TrueValue = 1,
    Indifferent = 2,
    Num = 3,
    Invalid = 3,
    EPoseSearchBooleanRequest_MAX = 4,
}

---@enum EPoseSearchDataPreprocessor
EPoseSearchDataPreprocessor = {
    None = 0,
    Normalize = 1,
    NormalizeOnlyByDeviation = 2,
    Num = 3,
    Invalid = 3,
    EPoseSearchDataPreprocessor_MAX = 4,
}

---@enum EPoseSearchFeatureDomain
EPoseSearchFeatureDomain = {
    Time = 0,
    Distance = 1,
    Num = 2,
    Invalid = 2,
    EPoseSearchFeatureDomain_MAX = 3,
}

---@enum EPoseSearchMirrorOption
EPoseSearchMirrorOption = {
    UnmirroredOnly = 0,
    MirroredOnly = 1,
    UnmirroredAndMirrored = 2,
    Num = 3,
    Invalid = 3,
    EPoseSearchMirrorOption_MAX = 4,
}

---@enum EPoseSearchMode
EPoseSearchMode = {
    BruteForce = 0,
    PCAKDTree = 1,
    PCAKDTree_Validate = 2,
    PCAKDTree_Compare = 3,
    Num = 4,
    Invalid = 4,
    EPoseSearchMode_MAX = 5,
}

---@enum EPoseSearchPoseFlags
EPoseSearchPoseFlags = {
    None = 0,
    BlockTransition = 1,
    EPoseSearchPoseFlags_MAX = 2,
}

---@enum EPoseSearchPostSearchStatus
EPoseSearchPostSearchStatus = {
    Continue = 0,
    Stop = 1,
    EPoseSearchPostSearchStatus_MAX = 2,
}

---@enum EPoseSearchTrajectoryFlags
EPoseSearchTrajectoryFlags = {
    Velocity = 1,
    Position = 2,
    VelocityDirection = 4,
    FacingDirection = 8,
    VelocityXY = 16,
    PositionXY = 32,
    VelocityDirectionXY = 64,
    FacingDirectionXY = 128,
    EPoseSearchTrajectoryFlags_MAX = 129,
}

---@enum ESearchIndexAssetType
ESearchIndexAssetType = {
    Invalid = 0,
    Sequence = 1,
    BlendSpace = 2,
    ESearchIndexAssetType_MAX = 3,
}

