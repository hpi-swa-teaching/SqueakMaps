displaying
focusLocations: aCollectionOfSMALocations atZoom: anInteger

	| centerGeoCoord centerWorldPos |

	centerGeoCoord := self calculateCenterGeoCoordinatesFrom: aCollectionOfSMALocations.
	centerWorldPos := self class geoCoordinatesToWorldPos: centerGeoCoord.
	self tiledMapMorph center: centerWorldPos.
	self tiledMapMorph zoom: (self tiledMapMorph clampZoom: anInteger).
	self tiledMapMorph layoutChanged