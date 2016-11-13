local _, gbl    = ...
local NeP       = NeP
local UnitClass = UnitClass
local C_Timer   = C_Timer

NeP.Core:WhenInGame(function()
  local classIndex = select(3, UnitClass('player'))
  NeP.Spells:Add(gbl.Class[classIndex])
  -- After 15 sec, removed everything localy
  C_Timer.After(15, function()
    gbl.Class = nil
  end)
end, 0)
