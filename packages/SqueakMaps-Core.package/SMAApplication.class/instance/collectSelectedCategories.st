building
collectSelectedCategories
	|result|
	result := OrderedCollection new.
	1 to: (self class savedCategories size) do:[:i |
			(self isSelected: i ) ifTrue: [
					result add: (self class savedCategories at: i).
				]
		].
	
	^ result