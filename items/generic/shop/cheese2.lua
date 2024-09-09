--this is stupid but ooga booga game sucks

function init()
	local cheese2 = root.assetJson("/recipes/cookingtable1/sides/pat_cheese2.recipe:output")

	if player.blueprintKnown(cheese2) then
		return script.setUpdateDelta(0)
	end

	script.setUpdateDelta(100)

	function update()
		if player.blueprintKnown("cheese") then
			chat.addMessage("cheese 2")
			player.giveBlueprint(cheese2)
			script.setUpdateDelta(0)
			update = nil
		end
	end
end
