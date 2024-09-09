function build(_, _, params)
	local cheese = root.itemConfig({name = "cheese", parameters = params})
	config, parameters = cheese.config, cheese.parameters

	local cheese2 = root.assetJson("/pat/cheese2/cheese2.recipe:output").parameters
	parameters = sb.jsonMerge(parameters, cheese2)
	parameters = sb.jsonMerge(parameters, params)

	return config, parameters
end
