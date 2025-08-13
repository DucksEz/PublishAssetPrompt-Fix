local CoreGui = game:GetService("CoreGui")

local function ensureChild(parent, name, className)
    local child = parent:FindFirstChild(name)
    if not child then
        child = Instance.new(className)
        child.Name = name
        child.Parent = parent
    end
    return child
end

local publishFolder = ensureChild(CoreGui, "PublishAssetPrompt", "Folder")
local publishApp = ensureChild(publishFolder, "PublishAssetPromptApp", "ScreenGui")
local promptFrame = ensureChild(publishApp, "PromptFrame", "Frame")
local focusWrapper = ensureChild(promptFrame, "FocusNavigationCoreScriptsWrapper", "Frame")
