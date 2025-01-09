---@meta

---@class FVoiceGenParams
---@field Voice EVoiceGenVoice
---@field Pitch float
---@field SpeakingRate float
FVoiceGenParams = {}



---@class UVoiceGenActor : UObject
---@field Name FString
---@field Params FVoiceGenParams
UVoiceGenActor = {}



---@class UVoiceGenSoundWave : USoundWave
---@field RequestedActor UVoiceGenActor
---@field RequestedText FString
---@field CachedParams FVoiceGenParams
---@field CachedText FString
UVoiceGenSoundWave = {}



