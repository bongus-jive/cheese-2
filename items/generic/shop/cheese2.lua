--this is stupid but ooga booga game sucks

local cheese2 = {name = "cheese", parameters = {
	description = "A second wedge of cheese.",
	shortdescription = "Cheese 2"
}}

function init()
	knowsCheese = player.blueprintKnown(cheese2)
	script.setUpdateDelta(knowsCheese and 0 or 10)
end

function update(dt)
	if not knowsCheese then
		if player.blueprintKnown{name = "cheese"} then
			player.giveBlueprint(cheese2)
			script.setUpdateDelta(0)
			knowsCheese = true
		end
	end
end