function build(directory, config, parameters)
	parameters.description = config.description
	parameters.shortdescription = config.shortdescription
	
	config = root.itemConfig({name = "cheese"}).config
	
	return config, parameters
end