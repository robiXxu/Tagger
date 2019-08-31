local TAGGER_FRAME = CreateFrame("FRAME", "Tagger")
TAGGER_FRAME:RegisterEvent("UNIT_TARGET")
local function eventHandler(self, event, ...)
  if #{...} > 0 then
    SetRaidTarget("target", 8)
  end
end
TAGGER_FRAME:SetScript("OnEvent", eventHandler)
