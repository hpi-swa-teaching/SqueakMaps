building
collectLeafTargetsOf: aNode into: aSet

	aNode target ifNotNil: [:each | aSet add: each].
	aNode children do: [:child |
		self collectLeafTargetsOf: child into: aSet]