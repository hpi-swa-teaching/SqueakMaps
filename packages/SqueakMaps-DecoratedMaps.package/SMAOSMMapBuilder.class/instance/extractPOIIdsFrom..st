private
extractPOIIdsFrom: anXMLTag

	| poiIds |
	poiIds := OrderedCollection new.
	((self tagValueNamed: 'poi_ids' in: anXMLTag ifAbsent: ['']) subStrings: ';') do: [:each |
		each isEmpty ifFalse: [poiIds add: each asInteger]].
	^ poiIds
