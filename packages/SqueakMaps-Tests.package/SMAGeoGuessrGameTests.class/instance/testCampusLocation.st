testing
testCampusLocation

	| location |

	location := self model campusLocation.
	self assert: 13.133 equals: location long.
	self assert: 52.393 equals: location lat
