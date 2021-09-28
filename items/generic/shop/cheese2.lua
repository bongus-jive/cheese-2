--this is stupid but ooga booga game sucks

local cheese2 = {name = "cheese", parameters = {
	description = "A second wedge of cheese.",
	shortdescription = "Cheese 2"
}}

function update(dt)
	if not player.blueprintKnown(cheese2) then
		if player.blueprintKnown{name = "cheese"} then
			player.giveBlueprint(cheese2)
			script.setUpdateDelta(0)
		end
	else
		script.setUpdateDelta(0)
	end
end