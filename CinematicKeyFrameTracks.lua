---@meta

---@class FCinematicKeyFrameData
---@field KeyFrameName FName
---@field bSkippable boolean
---@field FadeTime float
---@field SkipTimeMultiplier float
---@field FadeTargetColor FLinearColor
FCinematicKeyFrameData = {}



---@class FCinematicSectionParams
---@field SequencerPlayer TWeakObjectPtr<UMovieSceneSequencePlayer>
FCinematicSectionParams = {}



---@class FMovieSceneKeyFrameEventTemplate : FMovieSceneEvalTemplate
---@field Data FCinematicKeyFrameData
FMovieSceneKeyFrameEventTemplate = {}



---@class UMovieSceneKeyFrameEventSection : UMovieSceneSection
---@field Data FCinematicKeyFrameData
UMovieSceneKeyFrameEventSection = {}



---@class UMovieSceneKeyFrameEventTrack : UMovieSceneNameableTrack
---@field Sections TArray<UMovieSceneSection>
UMovieSceneKeyFrameEventTrack = {}



