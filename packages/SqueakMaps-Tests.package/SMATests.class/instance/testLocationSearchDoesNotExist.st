searching
testLocationSearchDoesNotExist
| startPos |
	
	startPos :=self model tiledMapMorph center.

	
	self geocoderMock mockLocateWith: [:query |
		self assert: query equals: 'not-existing'.
		(SMALocationNameNotFoundError new requestedName: 'not-existing') signal].
	
	self model searchInput: 'not-existing'.
	[self model searchLocation] valueSupplyingAnswer: { 'No location with name "not-existing" found.' . #closeDialog }.
	
	self assert: self model tiledMapMorph center equals: startPos.
	self assert: self model tiledMapMorph markers size equals: 0
	