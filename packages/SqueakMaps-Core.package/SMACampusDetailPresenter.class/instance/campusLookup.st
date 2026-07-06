accessing
campusLookup

	^ campusLookup ifNil: [campusLookup := SMACampusLookup on: self poiSource]
