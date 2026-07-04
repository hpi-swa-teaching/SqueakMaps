building
buildFromXMLRoot: anXMLRoot

	self reset.
	points := self extractPoints: anXMLRoot.
	rooms := self extractRooms: anXMLRoot forPoints: points.
	buildings := self extractBuildings: anXMLRoot forPoints: points.
	pointsOfInterest := self extractPOIs: anXMLRoot.
	^ self build
