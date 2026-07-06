accessing
campusLookup

	(campusLookup isNil or: [campusLookup source ~~ self source])
		ifTrue: [campusLookup := SMACampusLookup on: self source].
	^ campusLookup
