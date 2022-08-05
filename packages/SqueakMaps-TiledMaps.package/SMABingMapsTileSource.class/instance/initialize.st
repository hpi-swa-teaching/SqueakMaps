initialize-release
initialize

	super initialize.
	imageryMetadata := SMAExpiringValue new.
	imageryMetadata timeToLive: 1 hour