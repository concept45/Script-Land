--[[ WoTD License - 
This software is provided as free and open source by the
team of The WoTD Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Thank: WoTD Team; for the Script
~~End of License... Please Stand By...
-- WoTD Team, Janurary 19, 2010. ]]

function Morgroron_OnEnterCombat(Unit,Event)
	Unit:RegisterEvent("Morgroron_MortalCleave", 12000, 0)
	Unit:RegisterEvent("Morgroron_RainOfFire", 18000, 0)
	Unit:RegisterEvent("Morgroron_WarStomp", 7000, 0)
end

function Morgroron_MortalCleave(Unit,Event)
	Unit:FullCastSpellOnTarget(22859, Unit:GetClosestPlayer())
end

function Morgroron_RainOfFire(Unit,Event)
	Unit:FullCastSpellOnTarget(38741, Unit:GetClosestPlayer())
end

function Morgroron_WarStomp(Unit,Event)
	Unit:FullCastSpellOnTarget(38750, Unit:GetClosestPlayer())
end

function Morgroron_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function Morgroron_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(21500, 1, "Morgroron_OnEnterCombat")
RegisterUnitEvent(21500, 2, "Morgroron_OnLeaveCombat")
RegisterUnitEvent(21500, 4, "Morgroron_OnDied")