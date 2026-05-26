searching
searchTopic

	^ searchTopic ifNil: [searchTopic := HelpTopic new
		title: 'Search Results' translated;
		addDependent: self;
		yourself]