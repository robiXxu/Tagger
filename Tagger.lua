local TAGGER_FRAME = CreateFrame("FRAME", "Tagger")
TAGGER_FRAME:RegisterEvent("UNIT_TARGET")
local function eventHandler(self, event, ...)
  if #{...} > 0 and UnitName("target") ~= nil then
    SetRaidTarget("target", 8)
  end
end
TAGGER_FRAME:SetScript("OnEvent", eventHandler)
