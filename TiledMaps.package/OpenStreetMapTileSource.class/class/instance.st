as yet unclassified
instance
	"At present, the OpenStreetMaps standard tile server does not need an API key,
	so there's nothing to distinguish one instance from another. Hence, act like a singleton - for now."
	^ Instance ifNil: [Instance := self new]