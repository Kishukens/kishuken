---@meta

---@class UW_Hint_Console_C : UHintKey
---@field UberGraphFrame FPointerToUberGraphFrame
---@field OnRunActionAnim UWidgetAnimation
---@field SingleCliskAnim UWidgetAnimation
---@field circle UW_Image_C
---@field CircleBeck UW_Image_C
---@field HintSizeBox USizeBox
---@field bIsPlaydClickAnim boolean
UW_Hint_Console_C = {}

---@return TArray<UImageWidget>
function UW_Hint_Console_C:GetAllBackgroundsImage() end
---@return TArray<UImageWidget>
function UW_Hint_Console_C:GetAllFirstPlanImage() end
function UW_Hint_Console_C:FinishAnimation() end
---@param IsSingleClick boolean
function UW_Hint_Console_C:PlayHintAnimation_1(IsSingleClick) end
---@param EntryPoint int32
function UW_Hint_Console_C:ExecuteUbergraph_W_Hint_Console(EntryPoint) end


