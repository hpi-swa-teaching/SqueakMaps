accessing
campusLookup

	(campusLookup isNil or: [campusLookup source ~~ self targetSource])
		ifTrue: [campusLookup := SMACampusLookup on: self targetSource].
	^ campusLookup
