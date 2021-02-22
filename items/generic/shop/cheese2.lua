--this is stupid but ooga booga game sucks

local cheese2_update = update or function() end
local cheese2 = {name = "cheese", parameters = {
	description = "A second wedge of cheese.",
	shortdescription = "Cheese 2"
}}
local h = false

function update(dt)
	cheese2_update(dt)
	
	if not h and not player.blueprintKnown(cheese2) then
		if player.blueprintKnown{name = "cheese"} then
			player.giveBlueprint(cheese2)
			h = true
		end
	else
		h = true
	end
end