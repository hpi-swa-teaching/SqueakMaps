searching
testMultipleLocationSearchingShanghaiAlaska

	| placeName1 placeName2 middleWorldPos |
	
	placeName1 := 'Shanghai'.
	placeName2 := 'Alaska'.
	middleWorldPos := (0.46081708069444444@0.33622119003798884).
	self squeakMapsWindow startSearchInput: placeName1.
	self squeakMapsWindow destinationSearchInput: placeName2.
	self squeakMapsWindow searchMultipleLocations.
	self assert: middleWorldPos equals: self squeakMapsWindow tiledMapMorph center