initialization
fromOSMFile: aReadStream

	^ self forGraph: (SMAOSMRoutingGraphBuilder fromOSMFile: aReadStream)
