testing - models
testPOIVisibilityDependsOnLevelAndZoom

	| map poi |
	map := self configuredMap.
	poi := SMAPOI new lat: 0; lon: 0; levels: '0;2'; yourself.
	map visibleLevel: 0; zoom: 19.
	self assert: (poi shouldDrawOn: map).
	map visibleLevel: 1.
	self deny: (poi shouldDrawOn: map).
	map visibleLevel: 0; zoom: 18.
	self deny: (poi shouldDrawOn: map).
	poi levels: nil.
	map zoom: 19.
	self assert: (poi shouldDrawOn: map)
