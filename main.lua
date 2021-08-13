Chat_ShouldColorChatByClass = function() return true; end

local frame = CreateFrame("FRAME"); -- Need a frame to respond to events
frame:RegisterEvent("ADDON_LOADED");

function frame:OnEvent(event, arg1, arg2)
    r, g, b = Chat_GetChannelColor(ChatTypeInfo["WHISPER"]);
    ChangeChatColor("WHISPER_INFORM", r-0.2, g-0.2, b-0.2);

    r, g, b = Chat_GetChannelColor(ChatTypeInfo["BN_WHISPER"]);
    ChangeChatColor("BN_WHISPER_INFORM", r, g-0.2, b-0.2);
end

frame:SetScript("OnEvent", frame.OnEvent);