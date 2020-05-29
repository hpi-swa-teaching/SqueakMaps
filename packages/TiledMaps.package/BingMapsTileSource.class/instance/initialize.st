as yet unclassified
initialize
	super initialize.
	imageryMetadata := ExpiringValue new.
	imageryMetadata timeToLive: 1 hour.