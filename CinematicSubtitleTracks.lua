---@meta

---@class FCinematicSubtitleData
---@field PhraseSID FString
---@field SpeakerSID FString
FCinematicSubtitleData = {}



---@class FMovieSceneSubtitleEventTemplate : FMovieSceneEvalTemplate
---@field Data FCinematicSubtitleData
FMovieSceneSubtitleEventTemplate = {}



---@class UMovieSceneSubtitleEventSection : UMovieSceneSection
---@field Data FCinematicSubtitleData
UMovieSceneSubtitleEventSection = {}



---@class UMovieSceneSubtitleEventTrack : UMovieSceneKeyFrameEventTrack
UMovieSceneSubtitleEventTrack = {}


